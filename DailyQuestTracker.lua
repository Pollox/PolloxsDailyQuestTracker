--[[
	Main file for the addon
--]]

DailyQuestTracker = {}

DailyQuestTracker.name = "PolloxsDailyQuestTracker"
DailyQuestTracker.checkedTexture = "/esoui/art/buttons/checkbox_checked.dds"
DailyQuestTracker.uncheckedTexture = "esoui/art/buttons/checkbox_unchecked.dds"

--[[
	GUI layout settings
--]]
	DailyQuestTracker.QUEST_TYPE_INDENT = 2
	DailyQuestTracker.QUEST_INDENT = 30
	
	-- how wide is each column with status box and character name
	DailyQuestTracker.COLUMN_WIDTH = 100
	
	-- how far indented from left side is first column of character name
	DailyQuestTracker.COLUMN_INDENT = 240

--[[
	Get the quest sections to show

	@return a filtered version of DQTInfo.Quests
--]]
function DailyQuestTracker:getSectionsToShow()
	local questSections = {}
	
	for _, section in ipairs(DQTInfo.Quests) do
		if DQTSettings:shouldShowSection(section.name) then
			questSections[#questSections + 1] = section
		end
	end
	
	return questSections
end

function DailyQuestTracker:getCharactersToShow()
	local characters = {}
	
	for _, character in ipairs(DQTUtils:getCharacters()) do
		if DQTSettings:shouldShowCharacter(character.id) then
			characters[#characters + 1] = character
		end
	end
	
	return characters
end

--[[Get the names of all the quests to track
     
    @return a set of quest names. Do "if questNames['foo']" to see if foo is in set
--]]
function DailyQuestTracker:getAllQuestNames()
	if not self.allQuestNames then
		local allQuestNames = {}
		
		-- track all quests, even if we're not currently showing them
		for _, section in ipairs(DQTInfo.Quests) do		
			for _, questType in ipairs(section.questTypes) do
				for _, questName in ipairs(questType.questNames) do
					allQuestNames[questName] = true
				end
			end
		end
		
		self.allQuestNames = allQuestNames
	end
	
	return self.allQuestNames
end

--[[
	Update quest added time
	
	@param eventCode (number)
	@param journalIndex (number)
	@param questName (string)
	@param objectiveName (string)
--]]
function DailyQuestTracker.onQuestAdded(eventCode, journalIndex, questName, objectiveName)
	-- if this is one of the daily quests we track, then update the quest status
	if DailyQuestTracker:getAllQuestNames()[questName] then
		DailyQuestTracker.questStatuses[questName] = {
			addedTime = DQTUtils:getCurrentTime(),
			isCompleted = false
		}
	end
end

--[[
	Update quest completed status
	
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
		
		if not DQTWindow:IsHidden() then
			DailyQuestTracker.tree:RefreshVisible()
		end
	end
end

--[[
	Is the given daily quest complete today? For example, for a Summerset World Boss,
	this will check if any of the Summerset World Boss quests were completed today.
	
	@param resetTime (integer) UTC time in seconds
	@param questNames (list of strings) all the possible quest names for this quest
--]]
function DailyQuestTracker:isDailyQuestTypeComplete(characterId, questNames)
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

--[[
	Is the given daily quest complete today?
	
	@param resetTime (integer) UTC time in seconds
	@param questName (string)
--]]
function DailyQuestTracker:isDailyQuestComplete(characterId, questName)
	local questStatuses = self.savedVarsPerChar[characterId].questStatuses
	local previousResetTime = self.resetTime - 86400
	
	questStatus = questStatuses[questName]
		
	if questStatus then			
		-- only count quest if it is completed and it wasn't picked up yesterday
		return questStatus.isCompleted and (questStatus.addedTime > previousResetTime)
	else
		return false
	end
end

function DailyQuestTracker:onShow()
	self.tree:RefreshVisible()
end

function DailyQuestTracker:update()
	local currentTime = DQTUtils:getCurrentTime()
	
	-- calculate next reset time if necessary, and update rows
	if self.resetTime < currentTime then
		self.resetTime = DQTUtils:getResetTime()
		self.tree:RefreshVisible()
	end
	
	local timeUntilReset = os.difftime(self.resetTime, currentTime)
	
	-- format and display the remaining time
	local hoursRemaining = math.floor(timeUntilReset / 3600)
	local minutesRemaining = math.floor((timeUntilReset - hoursRemaining * 3600) / 60)
	
	-- only display remaining seconds if there's less than a minute left
	local secondsRemaining = 0
	
	if (hoursRemaining == 0) and (minutesRemaining == 0) then
		secondsRemaining = math.floor(timeUntilReset)
	end
	
    DQTWindowTimeUntilReset:SetText(zo_strformat(GetString(SI_DQT_TIME_UNTIL_RESET), hoursRemaining, minutesRemaining, secondsRemaining))
end

-- Show or hide the window
function DailyQuestTracker.toggleDisplay()
	DQTWindow:ToggleHidden()
end

-- Hide the window
function DailyQuestTracker:closeWindow()
	DQTWindow:SetHidden(true)
end

--[[
	Sets up the controls inside a node that was created with the DQTQuestSection template
	
	@param data {name: sectionName}
--]]
function DailyQuestTracker.TreeSectionSetup(node, control, data, open, userRequested, enabled)
	control:GetNamedChild("Name"):SetText(data.sectionName)
end

--[[
	Sets up the controls inside a node that was created with the DQTQuestType template
	
	@param data {sectionName: section name, questType: questType}
--]]
function DailyQuestTracker.TreeQuestTypeSetup(node, questTypeControl, data, open, userRequested, enabled)
	local nameControl = questTypeControl:GetNamedChild("Name")
	nameControl:SetText(data.questType.name)
	
	if not data.hasChildNodes then
		questTypeControl:GetNamedChild("Toggle"):SetHidden(true)
	end
	
	local columnIndex = 1
	local previousStatusControl = nil
	
	for _, character in ipairs(DailyQuestTracker:getCharactersToShow()) do
		local statusControl = questTypeControl:GetNamedChild(string.format("Status%s", columnIndex))
		statusControl:SetHidden(false)
		local isQuestTypeComplete = DailyQuestTracker:isDailyQuestTypeComplete(character.id, data.questType.questNames)
		local statusTexture = isQuestTypeComplete and DailyQuestTracker.checkedTexture or DailyQuestTracker.uncheckedTexture
		statusControl:SetTexture(statusTexture)
		
		-- center status control in column
		if previousStatusControl then
			statusControl:SetAnchor(CENTER, previousStatusControl, CENTER, DailyQuestTracker.COLUMN_WIDTH)
		else
			statusControl:SetAnchor(CENTER, nameControl, LEFT,
				DailyQuestTracker.COLUMN_INDENT - DailyQuestTracker.QUEST_TYPE_INDENT - questTypeControl:GetNamedChild("Toggle"):GetWidth()
				+ (DailyQuestTracker.COLUMN_WIDTH - statusControl:GetWidth()) / 2)
		end
		
		columnIndex = columnIndex + 1
		previousStatusControl = statusControl
	end
end

--[[
	Sets up the controls inside a node that was created with the DQTQuest template
	
	@param data {questName: quest name}
--]]
function DailyQuestTracker.TreeQuestSetup(node, questControl, data, open, userRequested, enabled)
	local nameControl = questControl:GetNamedChild("Name")
	nameControl:SetText(data.questName)
	
	local columnIndex = 1
	local previousStatusControl = nil
	
	for _, character in ipairs(DailyQuestTracker:getCharactersToShow()) do
		local statusControl = questControl:GetNamedChild(string.format("Status%s", columnIndex))
		statusControl:SetHidden(false)
		local statusTexture = DailyQuestTracker:isDailyQuestComplete(character.id, data.questName) and DailyQuestTracker.checkedTexture or DailyQuestTracker.uncheckedTexture
		statusControl:SetTexture(statusTexture)
		
		if previousStatusControl then
			statusControl:SetAnchor(CENTER, previousStatusControl, CENTER, DailyQuestTracker.COLUMN_WIDTH)
		else
			statusControl:SetAnchor(CENTER, nameControl, LEFT,
				DailyQuestTracker.COLUMN_INDENT - DailyQuestTracker.QUEST_TYPE_INDENT - DailyQuestTracker.QUEST_INDENT
				+ (DailyQuestTracker.COLUMN_WIDTH - statusControl:GetWidth()) / 2)
		end
		
		columnIndex = columnIndex + 1
		previousStatusControl = statusControl
	end
end

function DailyQuestTracker:createHeader()
	local headerControl = DQTWindow:GetNamedChild("Header")
	local previousControl = nil
	local headerHeight = 0
	
	for index, character in ipairs(self:getCharactersToShow()) do
		columnHeaderControl = CreateControlFromVirtual("ColumnHeader", headerControl, "DQTColumnHeader", index)
		columnHeaderControl:SetText(character.name)
		
		-- set column width but leave a little padding
		columnHeaderControl:SetWidth(self.COLUMN_WIDTH - 10)
		
		if previousControl then
			columnHeaderControl:SetAnchor(CENTER, previousControl, CENTER, self.COLUMN_WIDTH)
		else
			columnHeaderControl:SetAnchor(CENTER, headerControl, LEFT,
				self.COLUMN_INDENT + self.COLUMN_WIDTH / 2)
		end
		
		columnHeaderHeight = columnHeaderControl:GetHeight()
		
		if columnHeaderHeight > headerHeight then
			headerHeight = columnHeaderHeight
		end
		
		previousControl = columnHeaderControl
	end
	
	headerControl:SetHeight(columnHeaderHeight)
end

function DailyQuestTracker:initializeRows()
	-- Create a section for each category of quests
	for _, section in ipairs(self:getSectionsToShow()) do
		local sectionNode = self.tree:AddNode("DQTQuestSection", {sectionName = section.name})
		
		-- Create a row for each quest in this section
		for _, questType in ipairs(section.questTypes) do
			local questTypeData = {
				sectionName = section.name,
				questType = questType,
				hasChildNodes = (#questType.questNames > 1)
			}
			local questTypeNode = self.tree:AddNode("DQTQuestType", questTypeData, sectionNode)
			
			-- for quest types with multiple quests that you can share, add option to show each one
			if (#questType.questNames > 1) then
				for _, questName in ipairs(questType.questNames) do					
					local questData = {
						questName = questName,
					}
					
					self.tree:AddNode("DQTQuest", questData, questTypeNode)
				end
			end
		end
		
		sectionNode:SetOpen(true)
	end
end

--[[
	Handler for toggling showing of quests in quest type
	
	@param button (integer) which mouse mutton they click, e.g. MOUSE_BUTTON_INDEX_LEFT
--]]
function DailyQuestTracker:onToggleQuestType(buttonControl, button)
	-- toggle only if left click
	if button == MOUSE_BUTTON_INDEX_LEFT then
		ZO_ToggleButton_Toggle(buttonControl)
		local parentNode = buttonControl:GetParent().node
		parentNode:SetOpen(not parentNode:IsOpen(), USER_REQUESTED_OPEN)
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
	-- TODO: do we need a seperate string for this, or can we do directly in language file?
	ZO_CreateStringId("SI_BINDING_NAME_DTQ_TOGGLE_DISPLAY", GetString(SI_DQT_TOGGLE_DISPLAY))
	
	-- load account-wide saved variables
	self.savedVarsAccount = ZO_SavedVars:NewAccountWide("PolloxsDailyQuestTracker_SavedVarsAccount", 1, nil, DQTSettings:getAccountDefaults())
	
	-- reload previous window postion/size, and enable saving of postion/size
	self.windowProperties = self.savedVarsAccount.windowProperties
	self:initializeWindowProperties()
	
	--[[ load saved variables for each character
		 character id -> saved variables for that character
	--]]
	self.savedVarsPerChar = {}
	
	for _, character in ipairs(DQTUtils:getCharacters()) do
		--[[ questStatuses:
				Quest Name -> (time added (in utc), completed (boolean))
		--]]
		defaultSavedVarsChar = {
			questStatuses = {},
		}
		
		-- Load a different set of variables for each character, and use character id as the key
		self.savedVarsPerChar[character.id] = ZO_SavedVars:New("PolloxsDailyQuestTracker_SavedVarsChar",
			1, nil, defaultSavedVarsChar, nil, nil, character.name, character.id, ZO_SAVED_VARS_CHARACTER_ID_KEY)
	end
	
	-- setup settings in menu
	DQTSettings:initialize(self.savedVarsAccount.settings)
	
	-- quest statuses for the current character
	self.questStatuses = self.savedVarsPerChar[GetCurrentCharacterId()].questStatuses
	
	-- initialize window data
	self.resetTime = DQTUtils:getResetTime()
	self:createHeader()
	
	local scrollContainer = DQTWindow:GetNamedChild("ScrollFrame")
	self.tree = ZO_Tree:New(scrollContainer:GetNamedChild("ScrollChild"), 0, 0, 2000)
	self.tree:AddTemplate("DQTQuestSection", self.TreeSectionSetup, nil, nil, DailyQuestTracker.QUEST_TYPE_INDENT, 0)
	self.tree:AddTemplate("DQTQuestType", self.TreeQuestTypeSetup, nil, nil, DailyQuestTracker.QUEST_INDENT, 0)
	self.tree:AddTemplate("DQTQuest", self.TreeQuestSetup, nil, nil, 0, 0)
	self:initializeRows()
	
	-- register a slash command for showing the window by typing in the chat window
	SLASH_COMMANDS["/dqt"] = DailyQuestTracker.toggleDisplay
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