-- L is a convenience table so we don't have to write ZO_CreateStringId a bunch of times
local L = {}

-- Miscellanoues UI
	L.SI_DQT_TOGGLE_DISPLAY				= "Toggle Display"
	L.SI_DQT_TIME_UNTIL_RESET			= "Time until reset: <<1[/1 hour/$d hours]>> <<2[0 minutes/1 minute/$d minutes]>>"
	L.SI_DQT_CHARACTERS_HEADER			= "Characters to Show"
	L.SI_DQT_SECTION_HEADER				= "Sections to Show"

-- Section Names
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

-- QUEST NAMES MUST BE EXACTLY AS THEY APPEAR IN GAME IN THE QUEST JOURNAL

-- Summerset Bounty Quests (World Boss)
	L.SI_DQT_SUMMERSET_BOUNTY_1			= "The Abyssal Alchemist"
	L.SI_DQT_SUMMERSET_BOUNTY_2			= "Birds of a Feather"
	L.SI_DQT_SUMMERSET_BOUNTY_3			= "Never Forgotten"
	L.SI_DQT_SUMMERSET_BOUNTY_4			= "Run Aground"
	L.SI_DQT_SUMMERSET_BOUNTY_5			= "The Sickening Sea"
	L.SI_DQT_SUMMERSET_BOUNTY_6			= "Taming the Wild"

-- Summerset Exploratory Quests (Delve)
	L.SI_DQT_SUMMERSET_EXPLORATORY_1	= "Culling Serpents"
	L.SI_DQT_SUMMERSET_EXPLORATORY_2	= "Pilgrimage's End"
	L.SI_DQT_SUMMERSET_EXPLORATORY_3	= "Relic Runaround"
	L.SI_DQT_SUMMERSET_EXPLORATORY_4	= "A Rose's Beauty"
	L.SI_DQT_SUMMERSET_EXPLORATORY_5	= "Snuffing Out the Light"
	L.SI_DQT_SUMMERSET_EXPLORATORY_6	= "Struck from Memory"

-- Summerset Abyssal Geyser Quests
	L.SI_DQT_SUMMERSET_GEYSER			= "Sinking Summerset"

-- Vvardenfell Bounty Quests (World Boss)
	L.SI_DQT_VVARDENFELL_BOUNTY_1		= "The Anxious Apprentice"
	L.SI_DQT_VVARDENFELL_BOUNTY_2		= "A Creeping Hunger"
	L.SI_DQT_VVARDENFELL_BOUNTY_3		= "Culling the Swarm"
	L.SI_DQT_VVARDENFELL_BOUNTY_4		= "Oxen Free"
	L.SI_DQT_VVARDENFELL_BOUNTY_5		= "Salothan's Curse"
	L.SI_DQT_VVARDENFELL_BOUNTY_6		= "Siren's Song"

-- Vvardenfell Exploratory Quests (Delve)
	L.SI_DQT_VVARDENFELL_EXPLORATORY_1	= "Daedric Disruptions"
	L.SI_DQT_VVARDENFELL_EXPLORATORY_2	= "Kwama Conundrum"
	L.SI_DQT_VVARDENFELL_EXPLORATORY_3	= "Planting Misinformation"
	L.SI_DQT_VVARDENFELL_EXPLORATORY_4	= "Tax Deduction"
	L.SI_DQT_VVARDENFELL_EXPLORATORY_5	= "Tribal Troubles"
	L.SI_DQT_VVARDENFELL_EXPLORATORY_6	= "Unsettled Syndicate"

-- Vvardenfell Hunt Quests
	L.SI_DQT_VVARDENFELL_HUNT_1			= "Ash-Eater Hunt"
	L.SI_DQT_VVARDENFELL_HUNT_2			= "Great Zexxin Hunt"
	L.SI_DQT_VVARDENFELL_HUNT_3			= "King Razor-Tusk Hunt"
	L.SI_DQT_VVARDENFELL_HUNT_4			= "Mother Jagged-Claw Hunt"
	L.SI_DQT_VVARDENFELL_HUNT_5			= "Old Stomper Hunt"
	L.SI_DQT_VVARDENFELL_HUNT_6			= "Tarra-Suj Hunt"
	L.SI_DQT_VVARDENFELL_HUNT_7			= "Writhing Sveeth Hunt"

-- Vvardenfell Relics Quests
	L.SI_DQT_VVARDENFELL_RELICS_1		= "Relics of Ashalmawia"
	L.SI_DQT_VVARDENFELL_RELICS_2		= "Relics of Ashurnabitashpi"
	L.SI_DQT_VVARDENFELL_RELICS_3		= "Relics of Assarnatamat"
	L.SI_DQT_VVARDENFELL_RELICS_4		= "Relics of Dushariran"
	L.SI_DQT_VVARDENFELL_RELICS_5		= "Relics of Ebernanit"
	L.SI_DQT_VVARDENFELL_RELICS_6		= "Relics of Maelkashishi"
	L.SI_DQT_VVARDENFELL_RELICS_7		= "Relics of Yasammidan"
	
-- Murkmire Prequel (Cyrodilic Collections) Quests
	L.SI_DQT_CYRODILIC_COLLECTIONS_1	= "A Taste for Toxins"
	L.SI_DQT_CYRODILIC_COLLECTIONS_2	= "Anti-Venom Agitation"
	L.SI_DQT_CYRODILIC_COLLECTIONS_3	= "Bug Off!"
	L.SI_DQT_CYRODILIC_COLLECTIONS_4	= "Reeling in Recruits"
	L.SI_DQT_CYRODILIC_COLLECTIONS_5	= "Salty Meats"
	L.SI_DQT_CYRODILIC_COLLECTIONS_6	= "The Winds of Kyne"

-- Fighters Guild Quests
	L.SI_DQT_FIGHTERS_GUILD_1			= "Dark Anchors in Alik'r Desert"
	L.SI_DQT_FIGHTERS_GUILD_2			= "Dark Anchors in Auridon"
	L.SI_DQT_FIGHTERS_GUILD_3			= "Dark Anchors in Bangkorai"
	L.SI_DQT_FIGHTERS_GUILD_4			= "Dark Anchors in Deshaan"
	L.SI_DQT_FIGHTERS_GUILD_5			= "Dark Anchors in Eastmarch"
	L.SI_DQT_FIGHTERS_GUILD_6			= "Dark Anchors in Glenumbra"
	L.SI_DQT_FIGHTERS_GUILD_7			= "Dark Anchors in Grahtwood"
	L.SI_DQT_FIGHTERS_GUILD_8			= "Dark Anchors in Greenshade"
	L.SI_DQT_FIGHTERS_GUILD_9			= "Dark Anchors in Malabal Tor"
	L.SI_DQT_FIGHTERS_GUILD_10			= "Dark Anchors in Reaper's March"
	L.SI_DQT_FIGHTERS_GUILD_11			= "Dark Anchors in Rivenspire"
	L.SI_DQT_FIGHTERS_GUILD_12			= "Dark Anchors in Shadowfen"
	L.SI_DQT_FIGHTERS_GUILD_13			= "Dark Anchors in Stonefalls"
	L.SI_DQT_FIGHTERS_GUILD_14			= "Dark Anchors in Stormhaven"
	L.SI_DQT_FIGHTERS_GUILD_15			= "Dark Anchors in the Rift"

-- Mages Guild Quests
	L.SI_DQT_MAGES_GUILD_1				= "Madness in Alik'r Desert"
	L.SI_DQT_MAGES_GUILD_2				= "Madness in Auridon"
	L.SI_DQT_MAGES_GUILD_3				= "Madness in Bangkorai"
	L.SI_DQT_MAGES_GUILD_4				= "Madness in Deshaan"
	L.SI_DQT_MAGES_GUILD_5				= "Madness in Eastmarch"
	L.SI_DQT_MAGES_GUILD_6				= "Madness in Glenumbra"
	L.SI_DQT_MAGES_GUILD_7				= "Madness in Grahtwood"
	L.SI_DQT_MAGES_GUILD_8				= "Madness in Greenshade"
	L.SI_DQT_MAGES_GUILD_9				= "Madness in Malabal Tor"
	L.SI_DQT_MAGES_GUILD_10				= "Madness in Reaper's March"
	L.SI_DQT_MAGES_GUILD_11				= "Madness in Rivenspire"
	L.SI_DQT_MAGES_GUILD_12				= "Madness in Shadowfen"
	L.SI_DQT_MAGES_GUILD_13				= "Madness in Stonefalls"
	L.SI_DQT_MAGES_GUILD_14				= "Madness in Stormhaven"
	L.SI_DQT_MAGES_GUILD_15				= "Madness in the Rift"

-- Undaunted Delve Quests
	L.SI_DQT_UNDAUNTED_DELVE_1			= "Ancestor Wards in Deshaan"
	L.SI_DQT_UNDAUNTED_DELVE_2			= "Ancient Armaments in Bangkorai"
	L.SI_DQT_UNDAUNTED_DELVE_3			= "Ayleid Trinkets in Grahtwood"
	L.SI_DQT_UNDAUNTED_DELVE_4			= "Culinary Justice in Greenshade"
	L.SI_DQT_UNDAUNTED_DELVE_5			= "Cursed Baubles of Stormhaven"
	L.SI_DQT_UNDAUNTED_DELVE_6			= "Darkness Blooms in Rivenspire"
	L.SI_DQT_UNDAUNTED_DELVE_7			= "Dwarven Relics of Stonefalls"
	L.SI_DQT_UNDAUNTED_DELVE_8			= "Give and Take in Shadowfen"
	L.SI_DQT_UNDAUNTED_DELVE_9			= "Icy Intrigue in Eastmarch"
	L.SI_DQT_UNDAUNTED_DELVE_10			= "Inflamed Pyres of The Rift"
	L.SI_DQT_UNDAUNTED_DELVE_11			= "Mascot Theft in Reaper's March"
	L.SI_DQT_UNDAUNTED_DELVE_12			= "Molten Pearls of Alik'r Desert"
	L.SI_DQT_UNDAUNTED_DELVE_13			= "Red Rook Ransack in Glenumbra"
	L.SI_DQT_UNDAUNTED_DELVE_14			= "The Spirit Trap in Malabal Tor"
	L.SI_DQT_UNDAUNTED_DELVE_15			= "Veiled Darkness in Auridon"

-- Wrothgar Delve Quests
	L.SI_DQT_WROTHGAR_DELVE_1			= "Breakfast of the Bizarre"
	L.SI_DQT_WROTHGAR_DELVE_2			= "Fire in the Hold"
	L.SI_DQT_WROTHGAR_DELVE_3			= "Free Spirits"
	L.SI_DQT_WROTHGAR_DELVE_4			= "Getting a Bellyful"
	L.SI_DQT_WROTHGAR_DELVE_5			= "Parts of the Whole"
	L.SI_DQT_WROTHGAR_DELVE_6			= "The Skin Trade"

-- Wrothgar Group Boss Quests
	L.SI_DQT_WROTHGAR_GROUP_BOSS_1		= "Heresy of Ignorance"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_2		= "Meat for the Masses"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_3		= "Nature's Bounty"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_4		= "Reeking of Foul Play"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_5		= "Scholarly Salvage"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_6		= "Snow and Steam"

-- Thieves Guild Rye's Reacquisitions Quests
	L.SI_DQT_RYES_REACQUISITIONS_1		= "The Lost Pearls"
	L.SI_DQT_RYES_REACQUISITIONS_2		= "Memories of Youth"
	L.SI_DQT_RYES_REACQUISITIONS_3		= "The Sailor's Pipe"
	L.SI_DQT_RYES_REACQUISITIONS_4		= "Thrall Cove"

-- Thieves Guild Heist Quests
	L.SI_DQT_HEIST_1					= "Heist: Deadhollow Halls"
	L.SI_DQT_HEIST_2					= "Heist: Glittering Grotto"
	L.SI_DQT_HEIST_3					= "Heist: The Hideaway"
	L.SI_DQT_HEIST_4					= "Heist: Secluded Sewers"
	L.SI_DQT_HEIST_5					= "Heist: Underground Sepulcher"

-- Dark Brotherhood Bounty Quests
	L.SI_DQT_GOLD_COAST_BOUNTY_1		= "Buried Evil"
	L.SI_DQT_GOLD_COAST_BOUNTY_2		= "The Common Good"
	L.SI_DQT_GOLD_COAST_BOUNTY_3		= "Looming Shadows"
	L.SI_DQT_GOLD_COAST_BOUNTY_4		= "The Roar of the Crowds"

-- Dark Brotherhood Sacrament Quests
	L.SI_DQT_SACRAMENT_1				= "Sacrament: Smuggler's Den"
	L.SI_DQT_SACRAMENT_2				= "Sacrament: Sewer Tenement"
	L.SI_DQT_SACRAMENT_3				= "Sacrament: Trader's Cove"

-- Clockwork City Bounty Quests
	L.SI_DQT_CWC_BOUNTY_1				= "A Fine-Feathered Foe"
	L.SI_DQT_CWC_BOUNTY_2				= "Inciting the Imperfect"

-- Clockwork City Exploratory Quests (Delve)
	L.SI_DQT_CWC_EXPLORATORY_1			= "Changing the Filters"
	L.SI_DQT_CWC_EXPLORATORY_2			= "Oiling the Fans"
	L.SI_DQT_CWC_EXPLORATORY_3			= "Replacing the Commutators"
	L.SI_DQT_CWC_EXPLORATORY_4			= "Again Into the Shadows"
	L.SI_DQT_CWC_EXPLORATORY_5			= "A Shadow Malfunction"
	L.SI_DQT_CWC_EXPLORATORY_6			= "A Shadow Misplaced"

-- Clockwork City Tarnished Quests
	L.SI_DQT_CWC_TARNISHED_1			= "A Bitter Pill"
	L.SI_DQT_CWC_TARNISHED_2			= "A Daily Grind"
	L.SI_DQT_CWC_TARNISHED_3			= "A Sticky Solution"
	L.SI_DQT_CWC_TARNISHED_4			= "Enchanted Accumulation"
	L.SI_DQT_CWC_TARNISHED_5			= "Fuel for our Fires"
	L.SI_DQT_CWC_TARNISHED_6			= "Loose Strands"

-- Clockwork City Blackfeather Court Quests
	L.SI_DQT_CWC_BLACKFEATHER_1			= "Glitter and Gleam"
	L.SI_DQT_CWC_BLACKFEATHER_2			= "A Matter of Leisure"
	L.SI_DQT_CWC_BLACKFEATHER_3			= "A Matter of Respect"
	L.SI_DQT_CWC_BLACKFEATHER_4			= "A Matter of Tributes"
	L.SI_DQT_CWC_BLACKFEATHER_5			= "Morsels and Pecks"
	L.SI_DQT_CWC_BLACKFEATHER_6			= "Nibbles and Bits"

for stringId, translation in pairs(L) do
	-- In other language files, use SafeAddString instead, e.g. SafeAddString(stringId, translation, 1)
	ZO_CreateStringId(stringId, translation)
end