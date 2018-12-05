local Timer = {}
DQT.Timer = Timer

-- unique identifier for a quest timer
-- must keep existing enum values to not corrupt saved data
local TIMER_TYPE = {
	DUNGEON = 0,
	BATTLEGROUNDS = 1
}

Timer.TIMER_TYPE = TIMER_TYPE

--[[
	updates savedTimers
	
	@param savedTimers saved timer info for character
		TIMER_TYPE -> seconds remaining
--]]
function Timer.updateTimers(savedTimers)
	local currentTime = DQT.Utils:getCurrentTime()
	savedTimers[TIMER_TYPE.DUNGEON] = currentTime + GetLFGCooldownTimeRemainingSeconds(LFG_COOLDOWN_DUNGEON_REWARD_GRANTED)
	savedTimers[TIMER_TYPE.BATTLEGROUNDS] = currentTime + GetLFGCooldownTimeRemainingSeconds(LFG_COOLDOWN_BATTLEGROUND_REWARD_GRANTED)
end

--[[
	@param timeRemaining time remaining in seconds (or nil if unknown
	@return formatted string for display in gui
--]]
function Timer.formatTimeRemaining(timeRemaining)
	if timeRemaining == nil then
		return "?"
	end
	
	local hoursRemaining = math.floor(timeRemaining / 3600)
	local minutesRemaining = math.floor((timeRemaining - hoursRemaining * 3600) / 60)
	return string.format("%d:%.2d", hoursRemaining, minutesRemaining)
end

-------- Timer --------
-- boilerplate for class definition
local TimerQuest = ZO_Object.MultiSubclass(DQT.Quest.Quest)
Timer.TimerQuest = TimerQuest

function TimerQuest:new(...)
	local object = ZO_Object.New(self)
	object:initTimerQuest(...)
	return object
end

--[[
	This type of "quest" is on a timer based on the last time you completed it.
	
	@param name (string) display name for quest
	@param timerType unique TIMER_TYPE identifier
--]]
function TimerQuest:initTimerQuest(name, timerType)
	self:init(name)
	self._type = timerType
end

-- get time remaining, in seconds, or nil if unknown
function TimerQuest:getTimeRemaining(characterId)
	local resetTime = DQT.SV:getForChar(characterId).questTimers[self._type]
	
	if resetTime == nil then
		return nil
	end
	
	return math.max(os.difftime(resetTime, DQT.Utils:getCurrentTime()), 0)
end

-- equality operator overload
function TimerQuest.eq(left, right)
	return left._type == right._type
end

-------- Timer Section --------

-- boilerplate for class definition
local TimerSection = ZO_Object:Subclass()
Timer.TimerSection = TimerSection

function TimerSection:new(...)
	local object = ZO_Object.New(self)
	object:init(...)
	return object
end

--[[
	A timer quest section represents a category of timer quests to group together
	
	@param name (string) a unique section name
	@param quests (list) TimerQuest objects
--]]
function TimerSection:init(name, quests)
	self._name = name
	self._quests = quests
end

function TimerSection:getName()
	return self._name
end

function TimerSection:getQuests()
	return self._quests
end

-- equality operator overload
function TimerSection.eq(left, right)
	return left._name == right._name
end

-- class type
function TimerSection.type()
	return "TimerSection"
end