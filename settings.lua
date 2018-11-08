DQTSettings = {}

DQTSettings.panelData = {
	type = "panel",
	name = "Pollox's Daily Quest Tracker",
	author = "Pollox",
	website = "https://www.esoui.com/downloads/info2192-PolloxsDailyQuestTracker.html"
}

-- Section name -> should show section
DQTSettings.sectionsToShow = {}

-- Get default account-wide settings
function DQTSettings:getAccountDefaults()
	-- get default window properties
	local x, y = DQTWindow:GetScreenRect()
	local width, height = DQTWindow:GetDimensions()
	
	local windowProperties = {
		x = x,
		y = y,
		width = width,
		height = height
	}
	
	------ get default settings ------
	
	-- by default, show all sections
	local sectionsToShow = {}
	
	for _, section in ipairs(DQTInfo.Quests) do
		sectionsToShow[section.name] = true
	end
	
	return {
		windowProperties = windowProperties,
		settings = {
			sectionsToShow = sectionsToShow
		}
	}
end

-- @param savedSettings settings table that gets saved to disk
function DQTSettings:initialize(savedSettings)
	local LAM = LibStub("LibAddonMenu-2.0")
	LAM:RegisterAddonPanel(DailyQuestTracker.name, self.panelData)

	--options to filter by character

	local optionsData = {}
	
	-- options to filter by section
	for _, section in ipairs(DQTInfo.Quests) do
		local checkboxData = {
			type = "checkbox",
			name = section.name,
			getFunc = function() return savedSettings.sectionsToShow[section.name] end,
			setFunc = function(value) savedSettings.sectionsToShow[section.name] = value end,
		}
		
		optionsData[#optionsData + 1] = checkboxData
	end

	LAM:RegisterOptionControls(DailyQuestTracker.name, optionsData)
end
