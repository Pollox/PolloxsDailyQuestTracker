-- L is a convenience table so we don't have to write ZO_CreateStringId a bunch of times
local L = {}

-- Miscellanoues UI
L.SI_DQT_TOGGLE_DISPLAY				= "Toggle Display"
L.SI_DQT_TIME_UNTIL_RESET			= "Time until reset"
L.SI_DQT_CHARACTERS_HEADER			= "Characters to Show"
L.SI_DQT_SECTION_HEADER				= "Sections to Show"

-- Section Names
L.SI_DQT_CRAFTING					= GetString(SI_QUESTTYPE4)
L.SI_DQT_UNDAUNTED_PLEDGE			= GetString(SI_QUESTTYPE15)
L.SI_DQT_SUMMERSET					= GetZoneNameById(1011)
L.SI_DQT_VVARDENFELL				= GetZoneNameById(849)
L.SI_DQT_GUILD						= GetString(SI_QUESTTYPE3)
--L.SI_DQT_CYRODILIC_COLLECTIONS		= "Cyrodilic Collections"
L.SI_DQT_CLOCKWORK_CITY				= GetZoneNameById(980)
L.SI_DQT_WROTHGAR					= GetZoneNameById(684)
L.SI_DQT_THIEVES_GUILD				= GetZoneNameById(816)
L.SI_DQT_DARK_BROTHERHOOD			= GetZoneNameById(823)
L.SI_DQT_MURKMIRE					= GetZoneNameById(726)
L.SI_DQT_OTHER_TIMERS				= "Other Timers"
L.SI_DQT_RANDOM_DUNGEON				= GetString(SI_DUNGEON_FINDER_RANDOM_FILTER_TEXT)
L.SI_DQT_RANDOM_BATTLEGROUNDS		= GetString(SI_BATTLEGROUND_FINDER_RANDOM_FILTER_TEXT)
L.SI_DQT_MOUNT_TRAINING				= GetString(SI_STAT_GAMEPAD_RIDING_HEADER_TRAINING)
L.SI_DQT_BEQUEATHER					= select(1, GetSkillAbilityInfo(5,1,4))
--L.SI_DQT_ELSWEYR_PROLOGUE			= "Elsweyr Prologue"
L.SI_DQT_ELSWEYR					= GetZoneNameById(1086)
L.SI_DQT_DRAGONHOLD					= GetZoneNameById(1133) -- Added by DarkPhalanx
L.SI_DQT_WESTERN_SKYRIM				= GetZoneNameById(1160) -- Added by DarkPhalanx
L.SI_DQT_IMPERIAL_CITY				= GetZoneNameById(584) -- Added by DarkPhalanx
L.SI_DQT_THE_REACH					= GetZoneNameById(1207) -- Added by DarkPhalanx
--L.SI_DQT_LOWER_CRAGLORN				= "Lower Craglorn" -- Added by DarkPhalanx
--L.SI_DQT_UPPER_CRAGLORN				= "Upper Craglorn" -- Added by DarkPhalanx
L.SI_DQT_CRAGLORN					= GetZoneNameById(888) -- Added by g4m3r7ag
L.SI_DQT_BLACKWOOD					= GetZoneNameById(1261) -- Added by DarkPhalanx
L.SI_DQT_DEADLANDS					= GetZoneNameById(1286) -- Added by g4m3r7ag
L.SI_DQT_HIGH_ISLE					= GetZoneNameById(1318) -- Added by g4m3r7ag
L.SI_DQT_GALEN						= GetZoneNameById(1383) -- Added by g4m3r7ag
L.SI_DQT_CYRODIIL_PVE 				= GetString(SI_CAMPAIGNRULESETTYPE1).." Settlements" -- Added by g4m3r7ag
L.SI_DQT_CYRODIIL_PVP				= GetString(SI_CAMPAIGNRULESETTYPE1).." "..GetString(SI_GUILDFOCUSATTRIBUTEVALUE5) -- Added by g4m3r7ag

-- Quest Type Names
L.SI_DQT_GROUP_BOSS					= GetString(SI_ZONECOMPLETIONTYPE9)
L.SI_DQT_DELVE						= GetString(SI_INSTANCEDISPLAYTYPE7)
L.SI_DQT_GEYSERS					= "Geysers"
L.SI_DQT_ASHLANDER_HUNT				= "Ashlander Hunt"
L.SI_DQT_ASHLANDER_RELIC			= "Ashlander Relic"
L.SI_DQT_FIGHTERS_GUILD				= GetSkillLineName(5,2)
L.SI_DQT_MAGES_GUILD				= GetSkillLineName(5,3)
L.SI_DQT_UNDAUNTED_DELVE			= GetString(SI_VISUALARMORTYPE4).." "..GetString(SI_INSTANCEDISPLAYTYPE7)
L.SI_DQT_TARNISHED					= "Tarnished"
L.SI_DQT_BLACKFEATHER_COURT			= "Blackfeather Court"
L.SI_DQT_RYES_REACQUISITIONS		= "Rye's Reacquisitions"
L.SI_DQT_HEIST						= "Heist"
L.SI_DQT_GOLD_COAST_BOUNTY			= GetString(SI_STATS_BOUNTY_LABEL)
L.SI_DQT_SACRAMENT					= "Sacrament"
L.SI_DQT_ROOT_WHISPER				= "Root-Whisper"
L.SI_DQT_NEW_MOON					= "New Moon" -- Added by DarkPhalanx
L.SI_DQT_DRAGONHUNT					= "Dragon Hunts" -- Added by DarkPhalanx
L.SI_DQT_HARROWSTORM				= "Harrowstorms" -- Added by DarkPhalanx
L.SI_DQT_PVP						= GetString(SI_GUILDFOCUSATTRIBUTEVALUE5) -- Added by DarkPhalanx
L.SI_DQT_RESISTANCE					= "Wayward Guardian" -- Updated by g4m3r7ag to match https://en.uesp.net/wiki/Online:Repeatable_Quests
L.SI_DQT_PROLOGUE					= GetString(SI_QUESTTYPE14) --Added by g4m3r7ag
L.SI_DQT_GROUP_PVE					= GetString(SI_GUILDFOCUSATTRIBUTEVALUE2) --Added by g4m3r7ag
L.SI_DQT_VOLCANIC_VENTS				= "Volcanic Vents" -- Added by g4m3r7ag
L.SI_DQT_TALES_OF_TRIBUTE			= GetString(SI_ACTIVITY_FINDER_CATEGORY_TRIBUTE) -- Added by g4m3r7ag
L.SI_DQT_BRUMA						= "Bruma" -- Added by g4m3r7ag
L.SI_DQT_CHEYDINHAL 				= "Cheydinhal" -- Added by g4m3r7ag
L.SI_DQT_CHORROL					= "Chorrol and Weynon Priory" -- Added by g4m3r7ag
L.SI_DQT_CROPSFORD 					= "Cropsford" -- Added by g4m3r7ag
L.SI_DQT_VLASTARUS 					= "Vlastarus" -- Added by g4m3r7ag
L.SI_DQT_CYRODIIL_FIGHTERS_GUILD 	= GetSkillLineName(5,2).." "..GetString(SI_STATS_BOUNTY_LABEL) -- Added by g4m3r7ag
L.SI_DQT_CYRODIIL_BATTLE_MISSIONS 	= "Battle Missions" -- Added by g4m3r7ag
L.SI_DQT_CYRODIIL_BOUNTY_MISSIONS 	= GetString(SI_STATS_BOUNTY_LABEL).." ".."Missions" -- Added by g4m3r7ag
L.SI_DQT_CYRODIIL_SCOUTING_MISSIONS = "Scouting Missions" -- Added by g4m3r7ag
L.SI_DQT_CYRODIIL_WARFRONT_MISSION 	= "Warfront Missions" -- Added by g4m3r7ag
L.SI_DQT_CYRODIIL_ELDER_SCROLL		= "Elder Scrolls Missions" -- Added by g4m3r7ag
L.SI_DQT_CYRODIIL_CONQUEST_MISSION  = "Conquest Missions" -- Added by g4m3r7ag


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

-- Elsweyr Prologue Quests
L.SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_QUESTS_PREFIX_1 = "Dragon Lore: "
L.SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_QUESTS_PREFIX_2 = "" -- placeholder for other languages
L.SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_QUESTS_PREFIX_3 = "" -- placeholder for other languages
L.SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_QUESTS_PREFIX_4 = "" -- placeholder for other languages

--[[ Alternate display names
--]]
-- Summerset Bounty Quests (World Boss)	
--[[L.SI_DQT_SUMMERSET_QUESTS_BOUNTY_01_DISPLAY		= "B'Korgen"
L.SI_DQT_SUMMERSET_QUESTS_BOUNTY_02_DISPLAY		= "Gryphons"
L.SI_DQT_SUMMERSET_QUESTS_BOUNTY_03_DISPLAY		= "Graveld"
L.SI_DQT_SUMMERSET_QUESTS_BOUNTY_04_DISPLAY		= "Keelsplitter"
L.SI_DQT_SUMMERSET_QUESTS_BOUNTY_05_DISPLAY		= "Queen of the Reef"
L.SI_DQT_SUMMERSET_QUESTS_BOUNTY_06_DISPLAY		= "Caanerin"--]]

-- Vvardenfell Bounty Quests (World Boss)	
--[[L.SI_DQT_VVARDENFELL_QUESTS_BOUNTY_01_DISPLAY	= "Dubdil Alar"
L.SI_DQT_VVARDENFELL_QUESTS_BOUNTY_02_DISPLAY	= "Wuyuvus"
L.SI_DQT_VVARDENFELL_QUESTS_BOUNTY_03_DISPLAY	= "Queen's Consort"
L.SI_DQT_VVARDENFELL_QUESTS_BOUNTY_04_DISPLAY	= "Nilthog the Unbroken"
L.SI_DQT_VVARDENFELL_QUESTS_BOUNTY_05_DISPLAY	= "Orator Salothan"
L.SI_DQT_VVARDENFELL_QUESTS_BOUNTY_06_DISPLAY	= "Kimbrudhil the Songbird"--]]

-- Wrothgar Group Boss Quests	
--[[L.SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_01_DISPLAY	= "Zandadunoz the Reborn"
L.SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_02_DISPLAY	= "Snagara"
L.SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_03_DISPLAY	= "Corintthac the Abomination"
L.SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_04_DISPLAY	= "King-Chief Edu"
L.SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_05_DISPLAY	= "Mad Urkazbur"
L.SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_06_DISPLAY	= "Nyzchaleft"--]]

-- Dark Brotherhood Bounty Quests
--[[L.SI_DQT_GOLD_COAST_QUESTS_BOUNTIES_01_DISPLAY	= "Exulus the Wispmother"
L.SI_DQT_GOLD_COAST_QUESTS_BOUNTIES_02_DISPLAY	= "Ironfang"
L.SI_DQT_GOLD_COAST_QUESTS_BOUNTIES_03_DISPLAY	= "Limenauruus"
L.SI_DQT_GOLD_COAST_QUESTS_BOUNTIES_04_DISPLAY	= "The Roar of the Crowds"--]]

-- Clockwork City Bounty Quests
--[[L.SI_DQT_CLOCKWORK_CITY_QUESTS_BOUNTY_01_DISPLAY = "Wraith-of-Crows"
L.SI_DQT_CLOCKWORK_CITY_QUESTS_BOUNTY_02_DISPLAY = "Imperfect"--]]

-- Northern Elsweyr Defense Force (quest names are a bit too long for the gui)
--[[L.SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_01_DISPLAY = "Dark Souls"
L.SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_02_DISPLAY = "Icehammer's Vault"
L.SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_03_DISPLAY = "Shroud Hearth"
L.SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_04_DISPLAY = "Stormcrag Crypt"
L.SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_05_DISPLAY = "Goblin"
L.SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_06_DISPLAY = "Lamia"
L.SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_07_DISPLAY = "Lurcher"
L.SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_08_DISPLAY = "Skeleton"
L.SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_09_DISPLAY = "Spider"--]]

for stringId, translation in pairs(L) do
	SafeAddString(_G[stringId], translation, 0)
end