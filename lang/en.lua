-- L is a convenience table so we don't have to write ZO_CreateStringId a bunch of times
local L = {}

-- Miscellanoues UI
L.SI_DQT_TOGGLE_DISPLAY				= "Toggle Display"
L.SI_DQT_TIME_UNTIL_RESET			= "Time until reset"
L.SI_DQT_CHARACTERS_HEADER			= "Characters to Show"
L.SI_DQT_SECTION_HEADER				= "Sections to Show"

-- Section Names
L.SI_DQT_CRAFTING					= GetString(SI_QUESTTYPE4)
L.SI_DQT_UNDAUNTED_PLEDGE			= "Undaunted Pledges"
L.SI_DQT_SUMMERSET					= "Summerset"
L.SI_DQT_VVARDENFELL				= "Vvardenfell"
L.SI_DQT_GUILD						= GetString(SI_QUESTTYPE3)
L.SI_DQT_CYRODILIC_COLLECTIONS		= "Cyrodilic Collections"
L.SI_DQT_CLOCKWORK_CITY				= "Clockwork City"
L.SI_DQT_WROTHGAR					= "Wrothgar"
L.SI_DQT_THIEVES_GUILD				= "Thieves Guild"
L.SI_DQT_DARK_BROTHERHOOD			= "Dark Brotherhood"
L.SI_DQT_MURKMIRE					= "Murkmire"
L.SI_DQT_OTHER_TIMERS				= "Other Timers"
L.SI_DQT_RANDOM_DUNGEON				= "Random Dungeon"
L.SI_DQT_RANDOM_BATTLEGROUNDS		= "Random Battlegrounds"
L.SI_DQT_MOUNT_TRAINING				= "Mount Training"
L.SI_DQT_ELSWEYR_PROLOGUE			= "Elsweyr Prologue"
L.SI_DQT_ELSWEYR					= "Northern Elsweyr"
L.SI_DQT_SOUTH_ELSWEYR				= "Southern Elsweyr"
L.SI_DQT_WESTERN_SKYRIM				= "Western Skyrim"

-- Quest Type Names
L.SI_DQT_GROUP_BOSS					= "Group Boss"
L.SI_DQT_DELVE						= GetString(SI_INSTANCEDISPLAYTYPE7)
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
L.SI_DQT_GOLD_COAST_BOUNTY			= GetString(SI_STATS_BOUNTY_LABEL)
L.SI_DQT_SACRAMENT					= "Sacrament"
L.SI_DQT_ROOT_WHISPER				= "Root-Whisper"
L.SI_DQT_NEW_MOON					= "New Moon"
L.SI_DQT_HARROWSTORM				= "Harrowstorm"

L.SI_DQT_CLOTHING					= GetString(SI_ITEMFILTERTYPE14)
L.SI_DQT_BLACKSMITHING				= GetString(SI_ITEMFILTERTYPE13)
L.SI_DQT_WOODWORKING				= GetString(SI_ITEMFILTERTYPE15)
L.SI_DQT_JEWELRY					= GetString(SI_ITEMFILTERTYPE25)
L.SI_DQT_ALCHEMY					= GetString(SI_ITEMFILTERTYPE16)
L.SI_DQT_ENCHANTING					= GetString(SI_ITEMFILTERTYPE17)
L.SI_DQT_PROVISIONING				= GetString(SI_ITEMFILTERTYPE18)

--[[ Set these to the strings at the start of each quest, including
the leading space. The code will generate the display name by stripping
any of these values from the beginning of each quest name.
--]]

-- Undaunted Pledges
L.SI_DQT_PLEDGE_PREFIX					= "Pledge: "

-- Vvardenfell Relics Quests
L.SI_DQT_VVARDENFELL_QUESTS_RELICS_PREFIX_1	= "Relics of "
L.SI_DQT_VVARDENFELL_QUESTS_RELICS_PREFIX_2	= "" -- placeholder for other languages

-- Fighters Guild Quests
L.SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_PREFIX_1 = "Dark Anchors in "
L.SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_PREFIX_2 = "" -- placeholder for other languages
L.SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_PREFIX_3 = "" -- placeholder for other languages
L.SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_PREFIX_4 = "" -- placeholder for other languages

-- Mages Guild Quests
L.SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_PREFIX_1 = "Madness in "
L.SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_PREFIX_2 = "" -- placeholder for other languages
L.SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_PREFIX_3 = "" -- placeholder for other languages
L.SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_PREFIX_4 = "" -- placeholder for other languages

-- Thieves Guild Heist Quests
L.SI_DQT_THIEVES_GUILD_LARCENY_QUESTS_HEISTS_PREFIX_1 = "Heist: "
L.SI_DQT_THIEVES_GUILD_LARCENY_QUESTS_HEISTS_PREFIX_2 = "" -- placeholder for other languages

-- Dark Brotherhood Sacrament Quests
L.SI_DQT_GOLD_COAST_QUESTS_DARK_BROTHERHOOD_SACRAMENTS_PREFIX				= "Sacrament: "

--[[ Alternate display names
--]]
-- Summerset Bounty Quests (World Boss)	
L.SI_DQT_SUMMERSET_QUESTS_BOUNTY_01_DISPLAY		= "B'Korgen"
L.SI_DQT_SUMMERSET_QUESTS_BOUNTY_02_DISPLAY		= "Gryphons"
L.SI_DQT_SUMMERSET_QUESTS_BOUNTY_03_DISPLAY		= "Graveld"
L.SI_DQT_SUMMERSET_QUESTS_BOUNTY_04_DISPLAY		= "Keelsplitter"
L.SI_DQT_SUMMERSET_QUESTS_BOUNTY_05_DISPLAY		= "Queen of the Reef"
L.SI_DQT_SUMMERSET_QUESTS_BOUNTY_06_DISPLAY		= "Caanerin"

-- Vvardenfell Bounty Quests (World Boss)	
L.SI_DQT_VVARDENFELL_QUESTS_BOUNTY_01_DISPLAY	= "Dubdil Alar"
L.SI_DQT_VVARDENFELL_QUESTS_BOUNTY_02_DISPLAY	= "Wuyuvus"
L.SI_DQT_VVARDENFELL_QUESTS_BOUNTY_03_DISPLAY	= "Queen's Consort"
L.SI_DQT_VVARDENFELL_QUESTS_BOUNTY_04_DISPLAY	= "Nilthog the Unbroken"
L.SI_DQT_VVARDENFELL_QUESTS_BOUNTY_05_DISPLAY	= "Orator Salothan"
L.SI_DQT_VVARDENFELL_QUESTS_BOUNTY_06_DISPLAY	= "Kimbrudhil the Songbird"

-- Wrothgar Group Boss Quests	
L.SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_01_DISPLAY	= "Zandadunoz the Reborn"
L.SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_02_DISPLAY	= "Snagara"
L.SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_03_DISPLAY	= "Corintthac the Abomination"
L.SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_04_DISPLAY	= "King-Chief Edu"
L.SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_05_DISPLAY	= "Mad Urkazbur"
L.SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_06_DISPLAY	= "Nyzchaleft"

-- Dark Brotherhood Bounty Quests
L.SI_DQT_GOLD_COAST_QUESTS_BOUNTIES_01_DISPLAY	= "Exulus the Wispmother"
L.SI_DQT_GOLD_COAST_QUESTS_BOUNTIES_02_DISPLAY	= "Ironfang"
L.SI_DQT_GOLD_COAST_QUESTS_BOUNTIES_03_DISPLAY	= "Limenauruus"
L.SI_DQT_GOLD_COAST_QUESTS_BOUNTIES_04_DISPLAY	= "The Roar of the Crowds"

-- Clockwork City Bounty Quests
L.SI_DQT_CLOCKWORK_CITY_QUESTS_BOUNTY_01_DISPLAY = "Wraith-of-Crows"
L.SI_DQT_CLOCKWORK_CITY_QUESTS_BOUNTY_02_DISPLAY = "Imperfect"

-- Northern Elsweyr Defense Force (quest names are a bit too long for the gui)
L.SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_01_DISPLAY = "Dark Souls"
L.SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_02_DISPLAY = "Icehammer's Vault"
L.SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_03_DISPLAY = "Shroud Hearth"
L.SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_04_DISPLAY = "Stormcrag Crypt"
L.SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_05_DISPLAY = "Goblin"
L.SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_06_DISPLAY = "Lamia"
L.SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_07_DISPLAY = "Lurcher"
L.SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_08_DISPLAY = "Skeleton"
L.SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_09_DISPLAY = "Spider"

for stringId, translation in pairs(L) do
	-- In other language files, use SafeAddString instead, e.g. SafeAddString(_G[stringId], translation, 0)
	ZO_CreateStringId(stringId, translation)
end