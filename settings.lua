local Settings = {}
DQT.Settings = Settings

Settings.panelData = {
	type = "panel",
	name = "Pollox's Daily Quest Tracker",
	author = "Pollox",
	website = "https://www.esoui.com/downloads/info2192-PolloxsDailyQuestTracker.html"
}

-- Section name -> should show section
Settings.sectionsToShow = {}

-- Get default account-wide settings
function Settings:getAccountDefaults()
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
	-- by default, show all characters
	local charactersToShow = {}
	
	for _, character in ipairs(DQT.Utils:getCharacters()) do
		charactersToShow[character.id] = true
	end
	
	-- by default, show all sections
	local sectionsToShow = {}
	
	for _, section in ipairs(DQT.Info.QuestSections) do
		sectionsToShow[section:getName()] = true
	end
	
	return {
		windowProperties = windowProperties,
		settings = {
			sectionsToShow = sectionsToShow,
			charactersToShow = charactersToShow
		}
	}
end

-- @param savedSettings settings table that gets saved to disk
function Settings:initialize(savedSettings)
	self.settings = savedSettings
	local LAM = LibStub("LibAddonMenu-2.0")
	LAM:RegisterAddonPanel(DQT.Main.name, self.panelData)

	local optionsData = {}
	
	-- options to filter by character
	local characterHeader = {
		type = "header",
		name = GetString(SI_DQT_CHARACTERS_HEADER)
	}
	
	optionsData[#optionsData + 1] = characterHeader
		
	for _, character in ipairs(DQT.Utils:getCharacters()) do
		local checkbox = {
			type = "checkbox",
			name = character.name,
			getFunc = function() return self.settings.charactersToShow[character.id] end,
			setFunc = function(value) self.settings.charactersToShow[character.id] = value end,
			requiresReload = true
		}
		
		optionsData[#optionsData + 1] = checkbox
	end
	
	-- options to filter by section
	local sectionHeader = {
		type = "header",
		name = GetString(SI_DQT_SECTION_HEADER)
	}
	
	optionsData[#optionsData + 1] = sectionHeader
	
	for _, section in ipairs(DQT.Info.QuestSections) do
		local checkbox = {
			type = "checkbox",
			name = section:getName(),
			getFunc = function() return self:shouldShowSection(section) end,
			setFunc = function(value) self.settings.sectionsToShow[section:getName()] = value end,
			requiresReload = true
		}
		
		optionsData[#optionsData + 1] = checkbox
	end

	LAM:RegisterOptionControls(DQT.Main.name, optionsData)
end

function Settings:shouldShowSection(section)
	return self.settings.sectionsToShow[section:getName()]
end

function Settings:shouldShowCharacter(characterId)
	return self.settings.charactersToShow[characterId]
end