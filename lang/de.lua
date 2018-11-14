-- L is a convenience table so we don't have to write ZO_CreateStringId a bunch of times
local L = {}

-- Miscellanoues UI
	L.SI_DQT_TOGGLE_DISPLAY				= "Toggle Display"
	L.SI_DQT_TIME_UNTIL_RESET			= "Time until reset"
	L.SI_DQT_CHARACTERS_HEADER			= "Characters to Show"
	L.SI_DQT_SECTION_HEADER				= "Sections to Show"

-- Section Names
	L.SI_DQT_CRAFTING					= "Crafting"
	L.SI_DQT_SUMMERSET					= "Summerset"
	L.SI_DQT_VVARDENFELL				= "Vvardenfell"
	L.SI_DQT_GUILD						= "Guild"
	L.SI_DQT_CYRODILIC_COLLECTIONS		= "Cyrodilic Collections"
	L.SI_DQT_CLOCKWORK_CITY				= "Clockwork City"
	L.SI_DQT_WROTHGAR					= "Wrothgar"
	L.SI_DQT_THIEVES_GUILD				= "Thieves Guild"
	L.SI_DQT_DARK_BROTHERHOOD			= "Dark Brotherhood"

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
	
	L.SI_DQT_CLOTHING					= "Clothing"
	L.SI_DQT_BLACKSMITHING				= "Blacksmithing"
	L.SI_DQT_WOODWORKING				= "Woodworking"
	L.SI_DQT_JEWELRY					= "Jewelry"
	L.SI_DQT_ALCHEMY					= "Alchemy"
	L.SI_DQT_ENCHANTING					= "Enchanting"
	L.SI_DQT_PROVISIONING				= "Provisioning"

--[[
	QUEST NAMES MUST BE EXACTLY AS THEY APPEAR IN GAME IN THE QUEST JOURNAL.
	Some quests with have an alternate DISPLAY name under them, for however
	we want to show the quest in the GUI
--]]

-- Daily Crafting Quests
	L.SI_DQT_CLOTHIER_WRIT				= "Schneiderschrieb"
	L.SI_DQT_BLACKSMITH_WRIT			= "Schmiedeschrieb"
	L.SI_DQT_WOODWORKER_WRIT			= "Schreinerschrieb"
	L.SI_DQT_JEWELRY_WRIT				= "Schmuckhandwerksschrieb"
	L.SI_DQT_ALCHEMIST_WRIT				= "Alchemistenschrieb"
	L.SI_DQT_ENCHANTER_WRIT				= "Verzaubererschrieb"
	L.SI_DQT_PROVISIONER_WRIT			= "Versorgerschrieb"

-- Undaunted Pledges
	--[[ Set these to the strings at the start of each quest, including
	the leading space. The code will generate the display name by stripping
	any of these values from the beginning of each quest name.
	--]]
	L.SI_DQT_PLEDGE_PREFIX				= "Gelöbnis: "

	L.SI_DQT_PLEDGE_DARKSHADE1			= "Gelöbnis: Dunkelschattenkavernen I"
	L.SI_DQT_PLEDGE_DARKSHADE2			= "Gelöbnis: Dunkelschattenkavernen II"
	L.SI_DQT_PLEDGE_ELDEN1				= "Gelöbnis: Eldengrund I"
	L.SI_DQT_PLEDGE_ELDEN2				= "Gelöbnis: Eldengrund II"
	L.SI_DQT_PLEDGE_FUNGAL1				= "Gelöbnis: Pilzgrotte I"
	L.SI_DQT_PLEDGE_FUNGAL2				= "Gelöbnis: Pilzgrotte II"
	L.SI_DQT_PLEDGE_SPINDLE1			= "Gelöbnis: Spindeltiefen I"
	L.SI_DQT_PLEDGE_SPINDLE2			= "Gelöbnis: Spindeltiefen II"
	L.SI_DQT_PLEDGE_BANISHED1			= "Gelöbnis: Verbannungszellen I"
	L.SI_DQT_PLEDGE_BANISHED2			= "Gelöbnis: Verbannungszellen II"
	L.SI_DQT_PLEDGE_WAYREST1			= "Gelöbnis: Kanalisation von Wegesruh I"
	L.SI_DQT_PLEDGE_WAYREST2			= "Gelöbnis: Kanalisation von Wegesruh II"
	
	L.SI_DQT_PLEDGE_ARX					= "Gelöbnis: Arx Corinium"
	L.SI_DQT_PLEDGE_BLACKHEART			= "Gelöbnis: Schwarzherz-Unterschlupf"
	L.SI_DQT_PLEDGE_CRUCIBLE			= "Gelöbnis: Gesegnete Feuerprobe"
	L.SI_DQT_PLEDGE_COA1				= "Gelöbnis: Stadt der Asche I"
	L.SI_DQT_PLEDGE_COA2				= "Gelöbnis: Stadt der Asche II"
	L.SI_DQT_PLEDGE_COH1				= "Gelöbnis: Krypta der Herzen I"
	L.SI_DQT_PLEDGE_COH2				= "Gelöbnis: Krypta der Herzen II"
	L.SI_DQT_PLEDGE_DIREFROST			= "Gelöbnis: Burg Grauenfrost"
	L.SI_DQT_PLEDGE_SELENE				= "Gelöbnis: Selenes Netz"
	L.SI_DQT_PLEDGE_TEMPEST				= "Gelöbnis: Orkaninsel"
	L.SI_DQT_PLEDGE_VOM					= "Gelöbnis: Kammern des Wahnsinns"
	L.SI_DQT_PLEDGE_VOLENFELL			= "Gelöbnis: Volenfell"
	
	L.SI_DQT_PLEDGE_CRADLE				= "Gelöbnis: Wiege der Schatten"
	L.SI_DQT_PLEDGE_PRISON				= "Gelöbnis: Gefängnis der Kaiserstadt"
	L.SI_DQT_PLEDGE_MAZZATUN			= "Gelöbnis: Ruinen von Mazzatun"
	L.SI_DQT_PLEDGE_WHITE_GOLD			= "Gelöbnis: Weißgoldturm"
	L.SI_DQT_PLEDGE_BLOODROOT			= "Gelöbnis: Blutquellschmiede"
	L.SI_DQT_PLEDGE_FALKREATH			= "Gelöbnis: Falkenring"
	L.SI_DQT_PLEDGE_FANG_LAIG			= "Pledge: Fang Lair"
	L.SI_DQT_PLEDGE_SCALECALLER			= "Pledge: Scalecaller Peak"
	L.SI_DQT_PLEDGE_MOONHUNTER			= "Pledge: Moon Hunter Keep"
	L.SI_DQT_PLEDGE_MARCH				= "Pledge: March of Sacrifices"

-- Summerset Bounty Quests (World Boss)
	L.SI_DQT_SUMMERSET_BOUNTY_1			= "Der Kluftalchemist"
	L.SI_DQT_SUMMERSET_BOUNTY_2			= "Fremde Federn"
	L.SI_DQT_SUMMERSET_BOUNTY_3			= "Nie vergessen"
	L.SI_DQT_SUMMERSET_BOUNTY_4			= "Auf Grund gelaufen"
	L.SI_DQT_SUMMERSET_BOUNTY_5			= "Die Seuchensee"
	L.SI_DQT_SUMMERSET_BOUNTY_6			= "Die Zähmung der Wildnis"
	
	L.SI_DQT_SUMMERSET_BOUNTY_1_DISPLAY	= "Der Kluftalchemist"
	L.SI_DQT_SUMMERSET_BOUNTY_2_DISPLAY	= "Fremde Federn"
	L.SI_DQT_SUMMERSET_BOUNTY_3_DISPLAY	= "Nie vergessen"
	L.SI_DQT_SUMMERSET_BOUNTY_4_DISPLAY	= "Auf Grund gelaufen"
	L.SI_DQT_SUMMERSET_BOUNTY_5_DISPLAY	= "Die Seuchensee"
	L.SI_DQT_SUMMERSET_BOUNTY_6_DISPLAY	= "Die Zähmung der Wildnis"

-- Summerset Exploratory Quests (Delve)
	L.SI_DQT_SUMMERSET_EXPLORATORY_1	= "Schlangentöter"
	L.SI_DQT_SUMMERSET_EXPLORATORY_2	= "Das Ende der Pilgerfahrt"
	L.SI_DQT_SUMMERSET_EXPLORATORY_3	= "Die Reliktrettung"
	L.SI_DQT_SUMMERSET_EXPLORATORY_4	= "Die Schönheit einer Rose"
	L.SI_DQT_SUMMERSET_EXPLORATORY_5	= "Das Verlöschen des Lichts"
	L.SI_DQT_SUMMERSET_EXPLORATORY_6	= "Aus der Erinnerung getilgt"

-- Summerset Abyssal Geyser Quests
	L.SI_DQT_SUMMERSET_GEYSER			= "Die Versenkung Sommersends"

-- Vvardenfell Bounty Quests (World Boss)
	L.SI_DQT_VVARDENFELL_BOUNTY_1		= "Der besorgte Lehrling"
	L.SI_DQT_VVARDENFELL_BOUNTY_2		= "Ein schleichender Hunger"
	L.SI_DQT_VVARDENFELL_BOUNTY_3		= "Das Ausdünnen des Schwarms"
	L.SI_DQT_VVARDENFELL_BOUNTY_4		= "Frei laufende Ochsen"
	L.SI_DQT_VVARDENFELL_BOUNTY_5		= "Salothans Fluch"
	L.SI_DQT_VVARDENFELL_BOUNTY_6		= "Sirenensang"
	
	L.SI_DQT_VVARDENFELL_BOUNTY_1_DISPLAY	= "Der besorgte Lehrling"
	L.SI_DQT_VVARDENFELL_BOUNTY_2_DISPLAY	= "Ein schleichender Hunger"
	L.SI_DQT_VVARDENFELL_BOUNTY_3_DISPLAY	= "Das Ausdünnen des Schwarms"
	L.SI_DQT_VVARDENFELL_BOUNTY_4_DISPLAY	= "Frei laufende Ochsen"
	L.SI_DQT_VVARDENFELL_BOUNTY_5_DISPLAY	= "Salothans Fluch"
	L.SI_DQT_VVARDENFELL_BOUNTY_6_DISPLAY	= "Sirenensang"

-- Vvardenfell Exploratory Quests (Delve)
	L.SI_DQT_VVARDENFELL_EXPLORATORY_1	= "Daedrische Störungen"
	L.SI_DQT_VVARDENFELL_EXPLORATORY_2	= "Quatsch mit Kwama"
	L.SI_DQT_VVARDENFELL_EXPLORATORY_3	= "Das Streuen von Fehlinformationen"
	L.SI_DQT_VVARDENFELL_EXPLORATORY_4	= "Steuerabzug"
	L.SI_DQT_VVARDENFELL_EXPLORATORY_5	= "Stammessorgen"
	L.SI_DQT_VVARDENFELL_EXPLORATORY_6	= "Ein Syndikat in Unruhe"

-- Vvardenfell Hunt Quests
	L.SI_DQT_VVARDENFELL_HUNT_1			= "Jagd auf Aschfresser"
	L.SI_DQT_VVARDENFELL_HUNT_2			= "Jagd auf den Großen Zexxin"
	L.SI_DQT_VVARDENFELL_HUNT_3			= "Jagd auf König Klingenhauer"
	L.SI_DQT_VVARDENFELL_HUNT_4			= "Jagd auf Mutter Zackige-Klaue"
	L.SI_DQT_VVARDENFELL_HUNT_5			= "Jagd auf Alter Stampfer"
	L.SI_DQT_VVARDENFELL_HUNT_6			= "Jagd auf Tarra-Suj"
	L.SI_DQT_VVARDENFELL_HUNT_7			= "Jagd auf den Sich Windenden Sveeth"

-- Vvardenfell Relics Quests
	--[[ Set these to the strings at the start of each quest, including
	the leading space. The code will generate the display name by stripping
	any of these values from the beginning of each quest name.
	--]]
	L.SI_DQT_VVARDENFELL_RELICS_PREFIX	= "Die Relikte von "

	L.SI_DQT_VVARDENFELL_RELICS_1		= "Die Relikte von Ashalmawia"
	L.SI_DQT_VVARDENFELL_RELICS_2		= "Die Relikte von Ashurnabitashpi"
	L.SI_DQT_VVARDENFELL_RELICS_3		= "Die Relikte von Assarnatamat"
	L.SI_DQT_VVARDENFELL_RELICS_4		= "Die Relikte von Dushariran"
	L.SI_DQT_VVARDENFELL_RELICS_5		= "Relikte von Ebernanit"
	L.SI_DQT_VVARDENFELL_RELICS_6		= "Die Relikte von Maelkashishi"
	L.SI_DQT_VVARDENFELL_RELICS_7		= "Die Relikte von Yasammidan"
	
-- Murkmire Prequel (Cyrodilic Collections) Quests
	L.SI_DQT_CYRODILIC_COLLECTIONS_1	= "Ein giftiger Geschmack"
	L.SI_DQT_CYRODILIC_COLLECTIONS_2	= "Viel Lärm um ein Gegengift"
	L.SI_DQT_CYRODILIC_COLLECTIONS_3	= "Blöde Mücken!"
	L.SI_DQT_CYRODILIC_COLLECTIONS_4	= "Rekrutierungsrunde"
	L.SI_DQT_CYRODILIC_COLLECTIONS_5	= "Salzfleisch"
	L.SI_DQT_CYRODILIC_COLLECTIONS_6	= "Die Winde von Kyne"

-- Fighters Guild Quests
	--[[ Set these to the strings at the start of each quest, including
	the leading space. The code will generate the display name by stripping
	any of these values from the beginning of each quest name.
	--]]
	L.SI_DQT_FIGHTERS_GUILD_PREFIX_1		= "Dunkle Anker in "
	L.SI_DQT_FIGHTERS_GUILD_PREFIX_2		= "" -- placeholder for other languages
	
	L.SI_DQT_FIGHTERS_GUILD_1			= "Dunkle Anker in der Alik'r-Wüste"
	L.SI_DQT_FIGHTERS_GUILD_2			= "Dunkle Anker in Auridon"
	L.SI_DQT_FIGHTERS_GUILD_3			= "Dunkle Anker in Bangkorai"
	L.SI_DQT_FIGHTERS_GUILD_4			= "Dunkle Anker in Deshaan"
	L.SI_DQT_FIGHTERS_GUILD_5			= "Dunkle Anker in Ostmarsch"
	L.SI_DQT_FIGHTERS_GUILD_6			= "Dunkle Anker in Glenumbra"
	L.SI_DQT_FIGHTERS_GUILD_7			= "Dunkle Anker in Grahtwald"
	L.SI_DQT_FIGHTERS_GUILD_8			= "Dunkle Anker in Grünschatten"
	L.SI_DQT_FIGHTERS_GUILD_9			= "Dunkle Anker in Malabal Tor"
	L.SI_DQT_FIGHTERS_GUILD_10			= "Dunkle Anker in Schnittermark"
	L.SI_DQT_FIGHTERS_GUILD_11			= "Dunkle Anker in Kluftspitze"
	L.SI_DQT_FIGHTERS_GUILD_12			= "Dunkle Anker in Schattenfenn"
	L.SI_DQT_FIGHTERS_GUILD_13			= "Dunkle Anker in Steinfälle"
	L.SI_DQT_FIGHTERS_GUILD_14			= "Dunkle Anker in Sturmhafen"
	L.SI_DQT_FIGHTERS_GUILD_15			= "Dunkle Anker in Rift"

-- Mages Guild Quests
	--[[ Set these to the strings at the start of each quest, including
	the leading space. The code will generate the display name by stripping
	any of these values from the beginning of each quest name.
	--]]
	L.SI_DQT_MAGES_GUILD_PREFIX_1		= "Verrückte "
	L.SI_DQT_MAGES_GUILD_PREFIX_2		= "Verrücktes "
	
	L.SI_DQT_MAGES_GUILD_1				= "Verrückte Alik'r Wüste"
	L.SI_DQT_MAGES_GUILD_2				= "Verrücktes Auridon"
	L.SI_DQT_MAGES_GUILD_3				= "Verrücktes Bangkorai"
	L.SI_DQT_MAGES_GUILD_4				= "Verrücktes Deshaan"
	L.SI_DQT_MAGES_GUILD_5				= "Verrücktes Ostmarsch"
	L.SI_DQT_MAGES_GUILD_6				= "Verrücktes Glenumbra"
	L.SI_DQT_MAGES_GUILD_7				= "Verrücktes Grahtwald"
	L.SI_DQT_MAGES_GUILD_8				= "Verrücktes Grünschatten"
	L.SI_DQT_MAGES_GUILD_9				= "Verrücktes Malabal Tor"
	L.SI_DQT_MAGES_GUILD_10				= "Verrücktes Schnittermark"
	L.SI_DQT_MAGES_GUILD_11				= "Verrücktes Kluftspitze"
	L.SI_DQT_MAGES_GUILD_12				= "Verrücktes Schattenfenn"
	L.SI_DQT_MAGES_GUILD_13				= "Verrücktes Steinfälle"
	L.SI_DQT_MAGES_GUILD_14				= "Verrücktes Sturmhafen"
	L.SI_DQT_MAGES_GUILD_15				= "Verrücktes Rift"

-- Undaunted Delve Quests
	L.SI_DQT_UNDAUNTED_DELVE_1			= "Ahnenschutzzauber in Deshaan"
	L.SI_DQT_UNDAUNTED_DELVE_2			= "Alte Rüstungen aus Bangkorai"
	L.SI_DQT_UNDAUNTED_DELVE_3			= "Ayleïdenschnickschnack in Grahtwald"
	L.SI_DQT_UNDAUNTED_DELVE_4			= "Kulinarische Gerechtigkeit in Grünschatten"
	L.SI_DQT_UNDAUNTED_DELVE_5			= "Sturmhafens verfluchter Tand"
	L.SI_DQT_UNDAUNTED_DELVE_6			= "Dunkle Blüte in Kluftspitze"
	L.SI_DQT_UNDAUNTED_DELVE_7			= "Dwemerrelikte aus Steinfälle"
	L.SI_DQT_UNDAUNTED_DELVE_8			= "Geben und Nehmen in Schattenfenn"
	L.SI_DQT_UNDAUNTED_DELVE_9			= "Eisige Intrige in Ostmarsch"
	L.SI_DQT_UNDAUNTED_DELVE_10			= "Inflamed Pyres of The Rift"
	L.SI_DQT_UNDAUNTED_DELVE_11			= "Maskottchendieb von Schnittermark"
	L.SI_DQT_UNDAUNTED_DELVE_12			= "Geschmolzene Perlen der Alik'r-Wüste"
	L.SI_DQT_UNDAUNTED_DELVE_13			= "Rotkrähen-Plünderung in Glenumbra"
	L.SI_DQT_UNDAUNTED_DELVE_14			= "Die Geisterfalle in Malabal Tor"
	L.SI_DQT_UNDAUNTED_DELVE_15			= "Verschleierte Finsternis in Auridon"

-- Wrothgar Delve Quests
	L.SI_DQT_WROTHGAR_DELVE_1			= "Ein bizarres Frühstück"
	L.SI_DQT_WROTHGAR_DELVE_2			= "Feuer in der Feste"
	L.SI_DQT_WROTHGAR_DELVE_3			= "Freie Geister"
	L.SI_DQT_WROTHGAR_DELVE_4			= "Der volle Bauch"
	L.SI_DQT_WROTHGAR_DELVE_5			= "Teile des Ganzen"
	L.SI_DQT_WROTHGAR_DELVE_6			= "Das Geschäft mit der Haut"

-- Wrothgar Group Boss Quests
	L.SI_DQT_WROTHGAR_GROUP_BOSS_1		= "Der Frevel des Unwissens"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_2		= "Fleisch für die Massen"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_3		= "Die Gabe der Natur"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_4		= "So riecht ein falsches Spiel"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_5		= "Gelehrtes Bergungsgut"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_6		= "Schnee und Dampf"
	
	L.SI_DQT_WROTHGAR_GROUP_BOSS_1_DISPLAY	= "Der Frevel des Unwissens"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_2_DISPLAY	= "Fleisch für die Massen"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_3_DISPLAY	= "Die Gabe der Natur"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_4_DISPLAY	= "So riecht ein falsches Spiel"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_5_DISPLAY	= "Gelehrtes Bergungsgut"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_6_DISPLAY	= "Schnee und Dampf"

-- Thieves Guild Rye's Reacquisitions Quests
	L.SI_DQT_RYES_REACQUISITIONS_1		= "Die verschwundenen Perlen"
	L.SI_DQT_RYES_REACQUISITIONS_2		= "Erinnerungen an die Jugend"
	L.SI_DQT_RYES_REACQUISITIONS_3		= "Die Seemannspfeife"
	L.SI_DQT_RYES_REACQUISITIONS_4		= "Sklavenbucht"

-- Thieves Guild Heist Quests
	--[[ Set these to the strings at the start of each quest, including
	the leading space. The code will generate the display name by stripping
	any of these values from the beginning of each quest name.
	--]]
	L.SI_DQT_HEIST_PREFIX_1				= "Beutezug der "
	L.SI_DQT_HEIST_PREFIX_2				= "Beutezug des "
	
	L.SI_DQT_HEIST_1					= "Beutezug der Todkuhlenhallen"
	L.SI_DQT_HEIST_2					= "Beutezug der funkelnden Grotte"
	L.SI_DQT_HEIST_3					= "Beutezug des Verstecks"
	L.SI_DQT_HEIST_4					= "Beutezug der abgelegenen Kanalisation"
	L.SI_DQT_HEIST_5					= "Beutezug der unterirdischen Grabstätte"

-- Dark Brotherhood Bounty Quests
	L.SI_DQT_GOLD_COAST_BOUNTY_1		= "Das Übel unter der Erde"
	L.SI_DQT_GOLD_COAST_BOUNTY_2		= "Das Gemeinwohl"
	L.SI_DQT_GOLD_COAST_BOUNTY_3		= "Drohende Schatten"
	L.SI_DQT_GOLD_COAST_BOUNTY_4		= "Das Jubeln der Menge"
	
	L.SI_DQT_GOLD_COAST_BOUNTY_1_DISPLAY	= "Das Übel unter der Erde"
	L.SI_DQT_GOLD_COAST_BOUNTY_2_DISPLAY	= "Das Gemeinwohl"
	L.SI_DQT_GOLD_COAST_BOUNTY_3_DISPLAY	= "Drohende Schatten"
	L.SI_DQT_GOLD_COAST_BOUNTY_4_DISPLAY	= "Das Jubeln der Menge"

-- Dark Brotherhood Sacrament Quests
	--[[ Set these to the strings at the start of each quest, including
	the leading space. The code will generate the display name by stripping
	any of these values from the beginning of each quest name.
	--]]
	L.SI_DQT_SACRAMENT_PREFIX			= "Sakrament: "
	
	L.SI_DQT_SACRAMENT_1				= "Sakrament: Schmugglernest"
	L.SI_DQT_SACRAMENT_2				= "Sakrament: Kanalbehausung"
	L.SI_DQT_SACRAMENT_3				= "Sakrament: Händlerbucht"

-- Clockwork City Bounty Quests
	L.SI_DQT_CWC_BOUNTY_1				= "Ein feingefiederter Feind"
	L.SI_DQT_CWC_BOUNTY_2				= "Das Reizen des Unvollendeten"
	
	L.SI_DQT_CWC_BOUNTY_1_DISPLAY		= "Ein feingefiederter Feind"
	L.SI_DQT_CWC_BOUNTY_2_DISPLAY		= "Das Reizen des Unvollendeten"

-- Clockwork City Exploratory Quests (Delve)
	L.SI_DQT_CWC_EXPLORATORY_1			= "Filterwechsel"
	L.SI_DQT_CWC_EXPLORATORY_2			= "Die Ventilatoren ölen"
	L.SI_DQT_CWC_EXPLORATORY_3			= "Gleichrichterersatz"
	L.SI_DQT_CWC_EXPLORATORY_4			= "Zurück in die Schatten"
	L.SI_DQT_CWC_EXPLORATORY_5			= "Eine schattige Fehlfunktion"
	L.SI_DQT_CWC_EXPLORATORY_6			= "Ein verlegter Schatten"

-- Clockwork City Tarnished Quests
	L.SI_DQT_CWC_TARNISHED_1			= "Eine bittere Pille"
	L.SI_DQT_CWC_TARNISHED_2			= "Das tägliche Zermahlen"
	L.SI_DQT_CWC_TARNISHED_3			= "Eine klebrige Lösung"
	L.SI_DQT_CWC_TARNISHED_4			= "Verzauberte Ansammlung"
	L.SI_DQT_CWC_TARNISHED_5			= "Brennstoff für unsere Feuer"
	L.SI_DQT_CWC_TARNISHED_6			= "Lose Fasern"

-- Clockwork City Blackfeather Court Quests
	L.SI_DQT_CWC_BLACKFEATHER_1			= "Glitzern und Funkeln"
	L.SI_DQT_CWC_BLACKFEATHER_2			= "Eine Frage der Muße"
	L.SI_DQT_CWC_BLACKFEATHER_3			= "Eine Frage des Respekts"
	L.SI_DQT_CWC_BLACKFEATHER_4			= "Eine Frage des Tributs"
	L.SI_DQT_CWC_BLACKFEATHER_5			= "Bröckchen und Bisschen"
	L.SI_DQT_CWC_BLACKFEATHER_6			= "Stückchen und Häppchen"

for stringId, translation in pairs(L) do
	SafeAddString(_G[stringId], translation, 0)
end