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

--[[ Update quest added time
	
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

--[[ Update quest completed status
	
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
function DailyQuestTracker:isDailyQuestComplete(characterId, questNames)
	local questStatuses = self.savedVarsPerChar[characterId].questStatuses
	local previousResetTime = self.resetTime - 86400
	
	for _, questName in ipairs(questNames) do
		questStatus = questStatuses[questName]
		
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

function DailyQuestTracker:onShow()
	-- FIXME: this reads in the latest quest data when you show the window, but it doesn't work if you have it open when you turn in a quest
	self:updateRows()
end

function DailyQuestTracker:update()
	local currentTime = getCurrentTime()
	
	-- calculate next reset time if necessary, and update rows
	if self.resetTime < currentTime then
		self.resetTime = self.getResetTime()
		self:updateRows()
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

-- data {name: quest type name, isCompletedTodays: characterId -> (boolean)}
function DailyQuestTracker.TreeQuestTypeSetup(node, questTypeControl, data, open, userRequested, enabled)
	local nameControl = questTypeControl:GetNamedChild("Name")
	nameControl:SetText(data.name)
	
	local columnIndex = 1
	local previousStatusControl = nil
	
	for characterId, _ in pairs(DailyQuestTracker.characterNames) do
		local statusTexture = data.isCompletedTodays[characterId] and DailyQuestTracker.checkedTexture or DailyQuestTracker.uncheckedTexture
		local statusControl = questTypeControl:GetNamedChild("Status"..columnIndex)
		statusControl:SetHidden(false)
		statusControl:SetTexture(statusTexture)
		
		if previousStatusControl then
			statusControl:SetAnchor(LEFT, previousStatusControl, RIGHT, DailyQuestTracker.headerColumnWidth - statusControl:GetWidth())
		else
			statusControl:SetAnchor(LEFT, nameControl, RIGHT)
		end
		
		columnIndex = columnIndex + 1
		previousStatusControl = statusControl
	end
end

function DailyQuestTracker:createHeader()
	local headerControl = DQTWindow:GetNamedChild("Header")
	local previousControl = nil
	local headerHeight = 0
	local headerXOffset = 10
	
	for characterId, characterName in pairs(self.characterNames) do
		-- convert character name to display name
		characterName = zo_strformat("<<1>>", characterName)
		
		columnHeaderControl = CreateControlFromVirtual("ColumnHeader", headerControl, "DQTColumnHeader", characterId)
		columnHeaderControl:SetText(characterName)
		columnHeaderControl:SetWidth(self.headerColumnWidth - headerXOffset)
		
		if previousControl then
			columnHeaderControl:SetAnchor(LEFT, previousControl, RIGHT, headerXOffset)
		end
		
		columnHeaderHeight = columnHeaderControl:GetHeight()
		
		if columnHeaderHeight > headerHeight then
			headerHeight = columnHeaderHeight
		end
		
		previousControl = columnHeaderControl
	end
	
	headerControl:SetHeight(columnHeaderHeight)
end

function DailyQuestTracker:updateRows()
	-- seems that we have to remake the tree for any of our changes to show
	self.tree:Reset()
	
	-- Create a section for each category of quests
	for _, section in ipairs(DQTInfo.Quests) do
		local sectionNode = self.tree:AddNode("DQTQuestSection", {name = section.name})
		
		-- Create a row for each quest in this section
		for questTypeName, questNames in pairs(section.quests) do
			local isCompletedTodays = {}
			
			for characterId, _ in pairs(self.characterNames) do
				isCompletedTodays[characterId] = self:isDailyQuestComplete(characterId, questNames)
			end
			
			local questTypeData = {
				name = questTypeName,
				isCompletedTodays = isCompletedTodays
			}
			self.tree:AddNode("DQTQuestType", questTypeData, sectionNode)
		end
		
		sectionNode:SetOpen(true)
	end
end

function DailyQuestTracker:onMoveStop()
	local x, y = DQTWindow:GetScreenRect()
	self.windowProperties.x = x
	self.windowProperties.y = y
end

function DailyQuestTracker:onResizeStop()
	local width, height = DQTWindow:GetDimensions()
	self.windowProperties.width = width
	self.windowProperties.height = height
end

-- initializes window size and position from saved properties
function DailyQuestTracker:initializeWindowProperties()
	local properties = self.windowProperties
	DQTWindow:ClearAnchors()
	DQTWindow:SetAnchor(TOPLEFT, GuiRoot, TOPLEFT, properties.x, properties.y)
	DQTWindow:SetDimensions(properties.width, properties.height)
end

function DailyQuestTracker:initialize()
	-- Register keybindings
	ZO_CreateStringId("SI_BINDING_NAME_DTQ_TOGGLE_DISPLAY", "Toggle Display")
	
	-- load account-wide saved variables
	local x, y = DQTWindow:GetScreenRect()
	local width, height = DQTWindow:GetDimensions()
	
	defaultSavedVarsAccount = {
		windowProperties = {
			x = x,
			y = y,
			width = width,
			height = height
		}
	}
	self.savedVarsAccount = ZO_SavedVars:NewAccountWide("PolloxsDailyQuestTracker_SavedVarsAccount", 1, nil, defaultSavedVarsAccount)
	
	--[[ character id ->
			Quest Name -> (time added (in utc), completed (boolean))
	--]]
	
	-- reload previous window postion/size, and enable saving of postion/size
	self.windowProperties = self.savedVarsAccount.windowProperties
	self:initializeWindowProperties()
	
	--[[ load saved variables for each character
		 character id -> saved variables for that character
	--]]
	self.savedVarsPerChar = {}
	
	-- character id -> character name
	self.characterNames = {}
	
	for i = 1, GetNumCharacters() do
		defaultSavedVarsChar = {
			questStatuses = {},
		}
		
		local characterName, _, _, _, _, _, characterId = GetCharacterInfo(i)
		self.characterNames[characterId] = characterName
		self.savedVarsPerChar[characterId] = ZO_SavedVars:New("PolloxsDailyQuestTracker_SavedVarsChar", 1, nil, defaultSavedVarsChar, nil, nil, characterName, characterId, nil)
	end
	
	-- quest statuses for the current character
	self.questStatuses = self.savedVarsPerChar[GetCurrentCharacterId()].questStatuses
	
	-- initialize window data
	self.resetTime = self.getResetTime()
	
	-- self.headerColumnWidth = self:getLongestCharName()
	self.headerColumnWidth = 100
	self:createHeader()
	
	local scrollContainer = DQTWindow:GetNamedChild("ScrollFrame")
	self.tree = ZO_Tree:New(scrollContainer:GetNamedChild("ScrollChild"), 0, 0, 2000)
	self.tree:AddTemplate("DQTQuestSection", TreeSectionSetup, nil, nil, 40, 0)
	self.tree:AddTemplate("DQTQuestType", self.TreeQuestTypeSetup, nil, nil, 0, 0)
	self:updateRows()
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