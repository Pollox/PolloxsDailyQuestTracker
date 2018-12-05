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
L.SI_DQT_OTHER_TIMERS				= "Other Timers"
L.SI_DQT_RANDOM_DUNGEON				= "Random Dungeon"
L.SI_DQT_RANDOM_BATTLEGROUNDS		= "Random Battlegrounds"

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
L.SI_DQT_GOLD_COAST_QUESTS_DARK_BROTHERHOOD_SACRAMENTS_PREFIX = ""

--[[ Alternate display names
--]]
-- Summerset Bounty Quests (World Boss)	
L.SI_DQT_SUMMERSET_QUESTS_BOUNTY_01_DISPLAY = "深淵の錬金術師"
L.SI_DQT_SUMMERSET_QUESTS_BOUNTY_02_DISPLAY = "同類"
L.SI_DQT_SUMMERSET_QUESTS_BOUNTY_03_DISPLAY = "不朽"
L.SI_DQT_SUMMERSET_QUESTS_BOUNTY_04_DISPLAY = "座礁"
L.SI_DQT_SUMMERSET_QUESTS_BOUNTY_05_DISPLAY = "病んだ海"
L.SI_DQT_SUMMERSET_QUESTS_BOUNTY_06_DISPLAY = "野生の馴致"

-- Vvardenfell Bounty Quests (World Boss)	
L.SI_DQT_VVARDENFELL_QUESTS_BOUNTY_01_DISPLAY = "不安な見習い"
L.SI_DQT_VVARDENFELL_QUESTS_BOUNTY_02_DISPLAY = "這い寄るハンガー"
L.SI_DQT_VVARDENFELL_QUESTS_BOUNTY_03_DISPLAY = "群れの間引き"
L.SI_DQT_VVARDENFELL_QUESTS_BOUNTY_04_DISPLAY = "オックスを見つけた"
L.SI_DQT_VVARDENFELL_QUESTS_BOUNTY_05_DISPLAY = "サロサンの呪い"
L.SI_DQT_VVARDENFELL_QUESTS_BOUNTY_06_DISPLAY = "セイレーンの歌"

-- Wrothgar Group Boss Quests	
L.SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_01_DISPLAY = "無知という異端"
L.SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_02_DISPLAY = "大衆のための肉"
L.SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_03_DISPLAY = "自然の恵み"
L.SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_04_DISPLAY = "悪い遊びの臭い"
L.SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_05_DISPLAY = "学問的救出"
L.SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_06_DISPLAY = "雪と蒸気"

-- Dark Brotherhood Bounty Quests
L.SI_DQT_GOLD_COAST_QUESTS_BOUNTIES_01_DISPLAY = "埋められた悪"
L.SI_DQT_GOLD_COAST_QUESTS_BOUNTIES_02_DISPLAY = "公共の利益"
L.SI_DQT_GOLD_COAST_QUESTS_BOUNTIES_03_DISPLAY = "忍び寄る影"
L.SI_DQT_GOLD_COAST_QUESTS_BOUNTIES_04_DISPLAY = "群衆のどよめき"

-- Clockwork City Bounty Quests
L.SI_DQT_CLOCKWORK_CITY_QUESTS_BOUNTY_01_DISPLAY = "華麗なる羽根の敵"
L.SI_DQT_CLOCKWORK_CITY_QUESTS_BOUNTY_02_DISPLAY = "〈不完全〉の扇動"

for stringId, translation in pairs(L) do
	SafeAddString(_G[stringId], translation, 0)
end