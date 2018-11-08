DailyQuestTracker = {}

DailyQuestTracker.name = "PolloxsDailyQuestTracker"
DailyQuestTracker.checkedTexture = "/esoui/art/buttons/checkbox_checked.dds"
DailyQuestTracker.uncheckedTexture = "esoui/art/buttons/checkbox_unchecked.dds"

-- TODO: can we implement as a set instead?
local function tableContains(t, v)
	for _, value in pairs(t) do
		if v == value then
			return true
		end
	end
	
	return false
end

-- get current time in UTC seconds
local function getCurrentTime()
	return os.time(os.date("!*t"))
end

--[[
	@param eventCode (number)
	@param journalIndex (number)
	@param questName (string)
	@param objectiveName (string)
--]]
function DailyQuestTracker.onQuestAdded(eventCode, journalIndex, questName, objectiveName)
	-- if this is one of the daily quests we track, then update the quest status
	if tableContains(L, questName) then
		DailyQuestTracker.questStatuses[questName] = {
			addedTime = getCurrentTime(),
			isCompleted = false
		}
	end
end

--[[
	@param eventCode (number)
	@param questName (string)
	@param level (number)
	@param previousExperience (number)
	@param currentExperience (number)
	@param championPoints (number)
	@param questType (QuestType)
	@param instanceDisplayType (InstanceDisplayType)
--]]
function DailyQuestTracker.onQuestComplete(eventCode, questName, level, previousExperience, currentExperience, championPoints, questType, instanceDisplayType)
	local QuestStatus = DailyQuestTracker.questStatuses[questName]
	
	-- if QuestStatus is nil, this is not a tracked quest, a quest started when the addon was not enabled, or a bug
	if QuestStatus ~= nil then
		QuestStatus.isCompleted = true
	end
end

--[[
	Is the given daily quest complete today? For example, for a Summerset World Boss,
	this will check if any of the Summerset World Boss quests were completed today.
	
	@param resetTime (integer) UTC time in seconds
	@param questNames (list of strings) all the possible quest names for this quest
--]]
function DailyQuestTracker:isDailyQuestComplete(questNames)
	local previousResetTime = self.resetTime - 86400
	
	for _, questName in ipairs(questNames) do
		questStatus = self.questStatuses[questName]
		
		if questStatus then			
			-- only count quest if it is completed and it wasn't picked up yesterday
			if questStatus.isCompleted and (questStatus.addedTime > previousResetTime) then
				return true
			end
		end
	end
	
	return false
end

--[[ Calculates time of next daily quest reset in UTC.
     If your computer clock is off, this will be off.
--]]
function DailyQuestTracker.getResetTime()
	local currentDate = os.date("!*t")
	local resetTime = os.time({year=currentDate.year, month=currentDate.month, day=currentDate.day, hour=6, minute=0, second=0, isdst=currentDate.isdst})
	local currentTime = os.time(currentDate)
	
	-- if reset time has already happened today, increment to tomorrow's reset time
	if resetTime < currentTime then
		resetTime = resetTime + 86400
	end
	
	return resetTime
end

function DailyQuestTracker:update()
	local currentTime = getCurrentTime()
	
	-- calculate next reset time if necessary
	if self.resetTime < currentTime then
		self.resetTime = self.getResetTime()
		self:createRows()
	end
	
	local timeUntilReset = os.difftime(self.resetTime, currentTime)
	
	-- format and display the remaining time
	local hoursRemaining = math.floor(timeUntilReset / 3600)
	
	-- round minutes up since we're not displaying seconds
	local minutesRemaining = math.ceil((timeUntilReset - hoursRemaining * 3600) / 60)
    DQTWindowTimeUntilReset:SetText(string.format("Time until reset: %d hours %d minutes", hoursRemaining, minutesRemaining))
end

-- Show or hide the window
function DailyQuestTracker:toggleDisplay()
	DQTWindow:SetHidden(not DQTWindow:IsHidden())
end

-- Hide the window
function DailyQuestTracker:closeWindow()
	DQTWindow:SetHidden(true)
end

-- data {name: section name}
local function TreeSectionSetup(node, control, data, open, userRequested, enabled)
	control:GetNamedChild("Name"):SetText(data.name)
end

-- data {name: quest type name, isCompletedToday: (boolean)}
local function TreeQuestTypeSetup(node, control, data, open, userRequested, enabled)
	control:GetNamedChild("Name"):SetText(data.name)
	
	local statusTexture = data.isCompletedToday and DailyQuestTracker.checkedTexture or DailyQuestTracker.uncheckedTexture	
	control:GetNamedChild("Status"):SetTexture(statusTexture)
end

function DailyQuestTracker:createRows()
	-- Create a section for each category of quests
	for _, section in ipairs(DQTInfo.Quests) do
		local sectionNode = self.tree:AddNode("DQTQuestSection", {name = section.name})
		
		-- Create a row for each quest in this section
		for questTypeName, questNames in pairs(section.quests) do
			local questTypeData = {name = questTypeName,
				isCompletedToday = self:isDailyQuestComplete(questNames)}
			self.tree:AddNode("DQTQuestType", questTypeData, sectionNode)
		end
		
		sectionNode:SetOpen(true)
	end
end

function DailyQuestTracker:initialize()
	-- Register keybindings
	ZO_CreateStringId("SI_BINDING_NAME_DTQ_TOGGLE_DISPLAY", "Toggle Display")
	
	self.SavedVariables = ZO_SavedVars:New("PolloxsDailyQuestTracker_SavedVariables", 3, nil, {questStatuses = {}})
	
	-- Quest Name -> (time added (in utc), completed (boolean))
	self.questStatuses = self.SavedVariables.questStatuses
	
	self.resetTime = self.getResetTime()
	
	local scrollContainer = DQTWindow:GetNamedChild("ScrollFrame")
	self.tree = ZO_Tree:New(scrollContainer:GetNamedChild("ScrollChild"), 0, 0, 500)
	self.tree:AddTemplate("DQTQuestSection", TreeSectionSetup, nil, nil, 0, 0)
	self.tree:AddTemplate("DQTQuestType", TreeQuestTypeSetup, nil, nil, 0, 0)
	self:createRows()
end

function DailyQuestTracker.OnAddOnLoaded(event, addonName)
	-- The event fires each time *any* addon loads - but we only care about when our own addon loads
	if addonName == DailyQuestTracker.name then
		EVENT_MANAGER:UnregisterForEvent(DailyQuestTracker.name, EVENT_ADD_ON_LOADED)
		DailyQuestTracker:initialize()
	end
end

EVENT_MANAGER:RegisterForEvent(DailyQuestTracker.name, EVENT_QUEST_ADDED, DailyQuestTracker.onQuestAdded)
EVENT_MANAGER:RegisterForEvent(DailyQuestTracker.name, EVENT_QUEST_COMPLETE, DailyQuestTracker.onQuestComplete)
EVENT_MANAGER:RegisterForEvent(DailyQuestTracker.name, EVENT_ADD_ON_LOADED, DailyQuestTracker.OnAddOnLoaded)