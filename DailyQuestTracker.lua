DailyQuestTracker = {}

DailyQuestTracker.name = "PolloxsDailyQuestTracker"

--[[
	Section Name -> {questTypeName -> DQTQuestRow control}
--]]
DailyQuestTracker.rowControlInfos = {}

-- TODO: can we implement as a set instead?
local function tableContains(t, v)
	for _, value in pairs(t) do
		if v == value then
			return true
		end
	end
	
	return false
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
		-- utc time
		local currentTime = os.time(os.date("!*t"))
		
		DailyQuestTracker.questStatuses[questName] = {addedTime = currentTime, isCompleted = false}
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

-- Create rows in window
function DailyQuestTracker:createRows()
	local previousSection
	
	-- Create a section for each category of quests
	for sectionIndex, section in ipairs(DQTInfo.Quests) do
		local sectionControl = CreateControlFromVirtual("QuestSection", DQTWindowDummyFrame, "DQTQuestSection", sectionIndex)
		sectionControl:GetNamedChild("Name"):SetText(section.name)
		
		if previousSection then
			sectionControl:SetAnchor(TOP, previousSection, BOTTOM, 0, 0)
		end
		
		-- Align the first row relative to the section heading, and subsequent rows relative to the previous row
		local previousRow = sectionControl:GetNamedChild("Name")
		
		local rowControlInfo = {}
		local numRows = 0
		
		-- Create a row for each quest in this section
		for questTypeName, _ in pairs(section.quests) do
			local rowControl = CreateControlFromVirtual("QuestRow"..sectionIndex.."_", sectionControl, "DQTQuestRow", questTypeName)
			rowControl:GetNamedChild("Name"):SetText(questTypeName)
			
			if previousRow then
				rowControl:SetAnchor(TOP, previousRow, BOTTOM, 0, 0)
			end
			
			rowControlInfo[questTypeName] = rowControl
			
			previousRow = rowControl
			numRows = numRows + 1
		end
		
		sectionControl:SetHeight(sectionControl:GetNamedChild("Name"):GetHeight() + previousRow:GetHeight() * numRows)
		self.rowControlInfos[section.name] = rowControlInfo
		previousSection = sectionControl
	end
end

function DailyQuestTracker:initialize()
	-- Register keybindings
	ZO_CreateStringId("SI_BINDING_NAME_DTQ_TOGGLE_DISPLAY", "Toggle Display")
	self:createRows()
	
	self.SavedVariables = ZO_SavedVars:New("PolloxsDailyQuestTracker_SavedVariables", 3, nil, {questStatuses = {}})
	
	-- Quest Name -> (time added (in utc), completed (boolean))
	self.questStatuses = self.SavedVariables.questStatuses
end

--[[
	Is the given daily quest complete today? For example, for a Summerset World Boss,
	this will check if any of the Summerset World Boss quests were completed today.
	
	@param resetTime (integer) UTC time in seconds
	@param questNames (list of strings) all the possible quest names for this quest
--]]
function DailyQuestTracker:isDailyQuestComplete(resetTime, questNames)
	local previousResetTime = resetTime - 86400
	
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

function DailyQuestTracker:update()
	--[[ Get time of next reset in UTC and time until reset.
	     This uses your computer's time. If your computer clock is off, this will be off.
	--]]
	local currentDate = os.date("!*t")
	local resetTime = os.time({year=currentDate.year, month=currentDate.month, day=currentDate.day, hour=6, minute=0, second=0, isdst=currentDate.isdst})
	local currentTime = os.time(currentDate)
	
	-- if reset time has already happened today, increment to tomorrow's reset time
	if resetTime < currentTime then
		resetTime = resetTime + 86400
	end
	
	local timeUntilReset = os.difftime(resetTime, currentTime)
	
	-- format and display the remaining time
	local hoursRemaining = math.floor(timeUntilReset / 3600)
	
	-- round minutes up since we're not displaying seconds
	local minutesRemaining = math.ceil((timeUntilReset - hoursRemaining * 3600) / 60)
    DQTWindowTimeUntilReset:SetText(string.format("Time until reset: %d hours %d minutes", hoursRemaining, minutesRemaining))
	
	-- Update status icons
	local checkedTexture = "/esoui/art/buttons/checkbox_checked.dds"
	local uncheckedTexture = "esoui/art/buttons/checkbox_unchecked.dds"
	
	for _, section in ipairs(DQTInfo.Quests) do
		local rowControlInfo = self.rowControlInfos[section.name]
		
		for questTypeName, questNames in pairs(section.quests) do
			local rowControl = rowControlInfo[questTypeName]
			local statusTexture;
			
			if self:isDailyQuestComplete(resetTime, questNames) then
				statusTexture = checkedTexture
			else
				statusTexture = uncheckedTexture
			end
			
			rowControl:GetNamedChild("Status"):SetTexture(statusTexture)
		end
	end
end

-- Show or hide the window
function DailyQuestTracker:toggleDisplay()
	DQTWindow:SetHidden(not DQTWindow:IsHidden())
end

-- Hide the window
function DailyQuestTracker:closeWindow()
	DQTWindow:SetHidden(true)
end

function DailyQuestTracker.OnAddOnLoaded(event, addonName)
	-- The event fires each time *any* addon loads - but we only care about when our own addon loads
	if addonName == DailyQuestTracker.name then
		DailyQuestTracker:initialize()
	end
end

EVENT_MANAGER:RegisterForEvent(DailyQuestTracker.name, EVENT_QUEST_ADDED, DailyQuestTracker.onQuestAdded)
EVENT_MANAGER:RegisterForEvent(DailyQuestTracker.name, EVENT_QUEST_COMPLETE, DailyQuestTracker.onQuestComplete)
EVENT_MANAGER:RegisterForEvent(DailyQuestTracker.name, EVENT_ADD_ON_LOADED, DailyQuestTracker.OnAddOnLoaded)