-- L is a convenience table so we don't have to write ZO_CreateStringId a bunch of times
local L = {}

-- Miscellanoues UI
L.SI_DQT_TOGGLE_DISPLAY				= "Toggle Display"
L.SI_DQT_TIME_UNTIL_RESET			= "Time until reset"
L.SI_DQT_CHARACTERS_HEADER			= "Characters to Show"
L.SI_DQT_SECTION_HEADER				= "Sections to Show"

-- Section Names
L.SI_DQT_CRAFTING					= "Crafting"
L.SI_DQT_UNDAUNTED_PLEDGE			= "Undaunted Pledges"
L.SI_DQT_SUMMERSET					= "Summerset"
L.SI_DQT_VVARDENFELL				= "Vvardenfell"
L.SI_DQT_GUILD						= "Guild"
L.SI_DQT_CYRODILIC_COLLECTIONS		= "Cyrodilic Collections"
L.SI_DQT_CLOCKWORK_CITY				= "Clockwork City"
L.SI_DQT_WROTHGAR					= "Wrothgar"
L.SI_DQT_THIEVES_GUILD				= "Thieves Guild"
L.SI_DQT_DARK_BROTHERHOOD			= "Dark Brotherhood"
L.SI_DQT_MURKMIRE					= "Murkmire"

-- Quest Type Names
L.SI_DQT_GROUP_BOSS					= "Group Boss"
L.SI_DQT_DELVE						= "Delve"
L.SI_DQT_GEYSERS					= "Geysers"
L.SI_DQT_ASHLANDER_HUNT				= "Ashlander Hunt"
L.SI_DQT_ASHLANDER_RELIC			= "Ashlander Relic"
L.SI_DQT_FIGHTERS_GUILD				= "Fighters Guild"
L.SI_DQT_MAGES_GUILD				= "Mages Guild"
L.SI_DQT_UNDAUNTED_DELVE			= "Undaunted Delve"
L.SI_DQT_TARNISHED					= "Tarnished"
L.SI_DQT_BLACKFEATHER_COURT			= "Blackfeather Court"
L.SI_DQT_RYES_REACQUISITIONS		= "Rye's Reacquisitions"
L.SI_DQT_HEIST						= "Heist"
L.SI_DQT_GOLD_COAST_BOUNTY			= "Bounty"
L.SI_DQT_SACRAMENT					= "Sacrament"
L.SI_DQT_ROOT_WHISPER				= "Root-Whisper"

L.SI_DQT_CLOTHING					= "Clothing"
L.SI_DQT_BLACKSMITHING				= "Blacksmithing"
L.SI_DQT_WOODWORKING				= "Woodworking"
L.SI_DQT_JEWELRY					= "Jewelry"
L.SI_DQT_ALCHEMY					= "Alchemy"
L.SI_DQT_ENCHANTING					= "Enchanting"
L.SI_DQT_PROVISIONING				= "Provisioning"

--[[ Set these to the strings at the start of each quest, including
the leading space. The code will generate the display name by stripping
any of these values from the beginning of each quest name.
--]]

-- Undaunted Pledges
L.SI_DQT_PLEDGE_PREFIX					= ""

-- Vvardenfell Relics Quests
L.SI_DQT_VVARDENFELL_QUESTS_RELICS_PREFIX_1	= ""
L.SI_DQT_VVARDENFELL_QUESTS_RELICS_PREFIX_2	= "" -- placeholder for other languages

-- Fighters Guild Quests
L.SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_PREFIX_1 = ""
L.SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_PREFIX_2 = "" -- placeholder for other languages
L.SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_PREFIX_3 = "" -- placeholder for other languages
L.SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_PREFIX_4 = "" -- placeholder for other languages

-- Mages Guild Quests
L.SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_PREFIX_1 = ""
L.SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_PREFIX_2 = "" -- placeholder for other languages
L.SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_PREFIX_3 = "" -- placeholder for other languages
L.SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_PREFIX_4 = "" -- placeholder for other languages

-- Thieves Guild Heist Quests
L.SI_DQT_THIEVES_GUILD_LARCENY_QUESTS_HEISTS_PREFIX_1 = ""
L.SI_DQT_THIEVES_GUILD_LARCENY_QUESTS_HEISTS_PREFIX_2 = "" -- placeholder for other languages

-- Dark Brotherhood Sacrament Quests
L.SI_DQT_GOLD_COAST_QUESTS_DARK_BROTHERHOOD_SACRAMENTS_PREFIX				= ""

--[[ Alternate display names
--]]
-- Summerset Bounty Quests (World Boss)	
L.SI_DQT_SUMMERSET_QUESTS_BOUNTY_01_DISPLAY = "Der Kluftalchemist"
L.SI_DQT_SUMMERSET_QUESTS_BOUNTY_02_DISPLAY = "Vom gleichen Schlag"
L.SI_DQT_SUMMERSET_QUESTS_BOUNTY_03_DISPLAY = "Nie vergessen"
L.SI_DQT_SUMMERSET_QUESTS_BOUNTY_04_DISPLAY = "Auf Grund gelaufen"
L.SI_DQT_SUMMERSET_QUESTS_BOUNTY_05_DISPLAY = "Die Seuchensee"
L.SI_DQT_SUMMERSET_QUESTS_BOUNTY_06_DISPLAY = "Die Zähmung der Wildnis"

-- Vvardenfell Bounty Quests (World Boss)	
L.SI_DQT_VVARDENFELL_QUESTS_BOUNTY_01_DISPLAY = "Der besorgte Lehrling"
L.SI_DQT_VVARDENFELL_QUESTS_BOUNTY_02_DISPLAY = "Ein schleichender Hunger"
L.SI_DQT_VVARDENFELL_QUESTS_BOUNTY_03_DISPLAY = "Das Ausdünnen des Schwarms"
L.SI_DQT_VVARDENFELL_QUESTS_BOUNTY_04_DISPLAY = "Frei laufende Ochsen"
L.SI_DQT_VVARDENFELL_QUESTS_BOUNTY_05_DISPLAY = "Salothans Fluch"
L.SI_DQT_VVARDENFELL_QUESTS_BOUNTY_06_DISPLAY = "Sirenensang"

-- Wrothgar Group Boss Quests	
L.SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_01_DISPLAY = "Der Frevel des Unwissens"
L.SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_02_DISPLAY = "Fleisch für die Massen"
L.SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_03_DISPLAY = "Die Gabe der Natur"
L.SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_04_DISPLAY = "So riecht ein falsches Spiel"
L.SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_05_DISPLAY = "Gelehrtes Bergungsgut"
L.SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_06_DISPLAY = "Schnee und Dampf"

-- Dark Brotherhood Bounty Quests
L.SI_DQT_GOLD_COAST_QUESTS_BOUNTIES_01_DISPLAY = "Das Übel unter der Erde"
L.SI_DQT_GOLD_COAST_QUESTS_BOUNTIES_02_DISPLAY = "Das Gemeinwohl"
L.SI_DQT_GOLD_COAST_QUESTS_BOUNTIES_03_DISPLAY = "Drohende Schatten"
L.SI_DQT_GOLD_COAST_QUESTS_BOUNTIES_04_DISPLAY = "Das Jubeln der Menge"

-- Clockwork City Bounty Quests
L.SI_DQT_CLOCKWORK_CITY_QUESTS_BOUNTY_01_DISPLAY = "Ein feingefiederter Feind"
L.SI_DQT_CLOCKWORK_CITY_QUESTS_BOUNTY_02_DISPLAY = "Das Reizen des Unvollendeten"

for stringId, translation in pairs(L) do
	SafeAddString(_G[stringId], translation, 0)
end