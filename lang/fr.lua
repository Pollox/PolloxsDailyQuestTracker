-- L is a convenience table so we don't have to write ZO_CreateStringId a bunch of times
local L = {}

-- Miscellanoues UI
	L.SI_DQT_TOGGLE_DISPLAY				= "Basculer l'affichage"
	L.SI_DQT_TIME_UNTIL_RESET			= "Temps avant réinitialisation"
	L.SI_DQT_CHARACTERS_HEADER			= "Personnages à afficher"
	L.SI_DQT_SECTION_HEADER				= "Sections à afficher"

-- Section Names
	L.SI_DQT_CRAFTING					= "Artisanat"
	L.SI_DQT_SUMMERSET					= "Summerset"
	L.SI_DQT_VVARDENFELL				= "Vvardenfell"
	L.SI_DQT_GUILD						= "Guilde"
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
	L.SI_DQT_FIGHTERS_GUILD				= "Guilde des guerriers"
	L.SI_DQT_MAGES_GUILD				= "Guilde des mages"
	L.SI_DQT_UNDAUNTED_DELVE			= "Guilde des voleurs"
	L.SI_DQT_TARNISHED					= "Tarnished"
	L.SI_DQT_BLACKFEATHER_COURT			= "Blackfeather Court"
	L.SI_DQT_RYES_REACQUISITIONS		= "Rye's Reacquisitions"
	L.SI_DQT_HEIST						= "Casse"
	L.SI_DQT_GOLD_COAST_BOUNTY			= "Bounty"
	L.SI_DQT_SACRAMENT					= "Sacrement"
	
	L.SI_DQT_CLOTHING					= "Couture"
	L.SI_DQT_BLACKSMITHING				= "Forge"
	L.SI_DQT_WOODWORKING				= "Travail du bois"
	L.SI_DQT_JEWELRY					= "Joaillerie"
	L.SI_DQT_ALCHEMY					= "Alchimie"
	L.SI_DQT_ENCHANTING					= "Enchantement"
	L.SI_DQT_PROVISIONING				= "Cuisine"

--[[
	QUEST NAMES MUST BE EXACTLY AS THEY APPEAR IN GAME IN THE QUEST JOURNAL.
	Some quests with have an alternate DISPLAY name under them, for however
	we want to show the quest in the GUI
--]]

-- Daily Crafting Quests
	L.SI_DQT_CLOTHIER_WRIT				= "Commande de tailleur"
	L.SI_DQT_BLACKSMITH_WRIT			= "Commande de forge"
	L.SI_DQT_WOODWORKER_WRIT			= "Commande de travail du bois"
	L.SI_DQT_JEWELRY_WRIT				= "Commande de joaillerie"
	L.SI_DQT_ALCHEMIST_WRIT				= "Commande d'alchimie"
	L.SI_DQT_ENCHANTER_WRIT				= "Commandes d'enchantement"
	L.SI_DQT_PROVISIONER_WRIT			= "Commande de cuisine"

-- Undaunted Pledges
	--[[ Set these to the strings at the start of each quest, including
	the leading space. The code will generate the display name by stripping
	any of these values from the beginning of each quest name.
	--]]
	L.SI_DQT_PLEDGE_PREFIX				= "Serment : "
	
	L.SI_DQT_PLEDGE_DARKSHADE1			= "Serment : Cavernes d'Ombre-noire I"
	L.SI_DQT_PLEDGE_DARKSHADE2			= "Serment : Cavernes d'Ombre-noire II"
	L.SI_DQT_PLEDGE_ELDEN1				= "Serment : Creuset des aînés I"
	L.SI_DQT_PLEDGE_ELDEN2				= "Serment : Creuset des aînés II"
	L.SI_DQT_PLEDGE_FUNGAL1				= "Serment : Champignonnière I"
	L.SI_DQT_PLEDGE_FUNGAL2				= "Serment : Champignonnière II"
	L.SI_DQT_PLEDGE_SPINDLE1			= "Serment : Tressefuseau I"
	L.SI_DQT_PLEDGE_SPINDLE2			= "Serment : Tressefuseau II"
	L.SI_DQT_PLEDGE_BANISHED1			= "Serment : Cachot interdit I"
	L.SI_DQT_PLEDGE_BANISHED2			= "Serment : Cachot interdit II"
	L.SI_DQT_PLEDGE_WAYREST1			= "Serment : Égouts d'Haltevoie I"
	L.SI_DQT_PLEDGE_WAYREST2			= "Serment : Égouts d'Haltevoie II"
	
	L.SI_DQT_PLEDGE_ARX					= "Serment : Arx Corinium"
	L.SI_DQT_PLEDGE_BLACKHEART			= "Serment : Havre de Cœurnoir"
	L.SI_DQT_PLEDGE_CRUCIBLE			= "Pledge: Blessed Crucible"
	L.SI_DQT_PLEDGE_COA1				= "Serment : Cité des cendres I"
	L.SI_DQT_PLEDGE_COA2				= "Serment : Cité des cendres II"
	L.SI_DQT_PLEDGE_COH1				= "Serment : Crypte des cœurs I"
	L.SI_DQT_PLEDGE_COH2				= "Serment : Crypte des cœurs II"
	L.SI_DQT_PLEDGE_DIREFROST			= "Pledge: Direfrost Keep"
	L.SI_DQT_PLEDGE_SELENE				= "Serment : Toile de Sélène"
	L.SI_DQT_PLEDGE_TEMPEST				= "Serment : Île des Tempêtes"
	L.SI_DQT_PLEDGE_VOM					= "Serment : Chambres de la folie"
	L.SI_DQT_PLEDGE_VOLENFELL			= "Serment : Volenfell"
	
	L.SI_DQT_PLEDGE_CRADLE				= "Serment : Berceau des ombres"
	L.SI_DQT_PLEDGE_PRISON				= "Serment : Prison de la cité impériale"
	L.SI_DQT_PLEDGE_MAZZATUN			= "Serment : Ruines de Mazzatun"
	L.SI_DQT_PLEDGE_WHITE_GOLD			= "Serment : Tour d'or blanc"
	L.SI_DQT_PLEDGE_BLOODROOT			= "Serment : Forge de Sangracine"
	L.SI_DQT_PLEDGE_FALKREATH			= "Serment : Forteresse d'Épervine"
	L.SI_DQT_PLEDGE_FANG_LAIG			= "Pledge: Fang Lair"
	L.SI_DQT_PLEDGE_SCALECALLER			= "Pledge: Scalecaller Peak"
	L.SI_DQT_PLEDGE_MOONHUNTER			= "Pledge: Moon Hunter Keep"
	L.SI_DQT_PLEDGE_MARCH				= "Pledge: March of Sacrifices"

-- Summerset Bounty Quests (World Boss)
	L.SI_DQT_SUMMERSET_BOUNTY_1			= "L'Alchimiste abyssal"
	L.SI_DQT_SUMMERSET_BOUNTY_2			= "Qui se ressemble…"
	L.SI_DQT_SUMMERSET_BOUNTY_3			= "Inoubliable"
	L.SI_DQT_SUMMERSET_BOUNTY_4			= "Naufragé"
	L.SI_DQT_SUMMERSET_BOUNTY_5			= "La mer maladive"
	L.SI_DQT_SUMMERSET_BOUNTY_6			= "Dompter la nature"
	
	L.SI_DQT_SUMMERSET_BOUNTY_1_DISPLAY	= "L'Alchimiste abyssal"
	L.SI_DQT_SUMMERSET_BOUNTY_2_DISPLAY	= "Qui se ressemble…"
	L.SI_DQT_SUMMERSET_BOUNTY_3_DISPLAY	= "Inoubliable"
	L.SI_DQT_SUMMERSET_BOUNTY_4_DISPLAY	= "Naufragé"
	L.SI_DQT_SUMMERSET_BOUNTY_5_DISPLAY	= "La mer maladive"
	L.SI_DQT_SUMMERSET_BOUNTY_6_DISPLAY	= "Dompter la nature"

-- Summerset Exploratory Quests (Delve)
	L.SI_DQT_SUMMERSET_EXPLORATORY_1	= "Abattage de serpents"
	L.SI_DQT_SUMMERSET_EXPLORATORY_2	= "Fin du pèlerinage"
	L.SI_DQT_SUMMERSET_EXPLORATORY_3	= "La course aux reliques"
	L.SI_DQT_SUMMERSET_EXPLORATORY_4	= "La beauté d'une rose"
	L.SI_DQT_SUMMERSET_EXPLORATORY_5	= "Souffler la lumière"
	L.SI_DQT_SUMMERSET_EXPLORATORY_6	= "Qu'on oublie jusqu'à leur nom"

-- Summerset Abyssal Geyser Quests
	L.SI_DQT_SUMMERSET_GEYSER			= "Le naufrage du Couchant"

-- Vvardenfell Bounty Quests (World Boss)
	L.SI_DQT_VVARDENFELL_BOUNTY_1		= "L'Apprenti anxieux"
	L.SI_DQT_VVARDENFELL_BOUNTY_2		= "Une faim dévorante"
	L.SI_DQT_VVARDENFELL_BOUNTY_3		= "Réduire le troupeau"
	L.SI_DQT_VVARDENFELL_BOUNTY_4		= "Garanti sans bœuf"
	L.SI_DQT_VVARDENFELL_BOUNTY_5		= "Malédiction de Salothan"
	L.SI_DQT_VVARDENFELL_BOUNTY_6		= "Chant de la sirène"

	L.SI_DQT_VVARDENFELL_BOUNTY_1_DISPLAY	= "L'Apprenti anxieux"
	L.SI_DQT_VVARDENFELL_BOUNTY_2_DISPLAY	= "Une faim dévorante"
	L.SI_DQT_VVARDENFELL_BOUNTY_3_DISPLAY	= "Réduire le troupeau"
	L.SI_DQT_VVARDENFELL_BOUNTY_4_DISPLAY	= "Garanti sans bœuf"
	L.SI_DQT_VVARDENFELL_BOUNTY_5_DISPLAY	= "Malédiction de Salothan"
	L.SI_DQT_VVARDENFELL_BOUNTY_6_DISPLAY	= "Chant de la sirène"

-- Vvardenfell Exploratory Quests (Delve)
	L.SI_DQT_VVARDENFELL_EXPLORATORY_1	= "Perturbations daedriques"
	L.SI_DQT_VVARDENFELL_EXPLORATORY_2	= "L'équation kwama"
	L.SI_DQT_VVARDENFELL_EXPLORATORY_3	= "Plantage à la plantation"
	L.SI_DQT_VVARDENFELL_EXPLORATORY_4	= "Déduction fiscale"
	L.SI_DQT_VVARDENFELL_EXPLORATORY_5	= "Tribus troublées"
	L.SI_DQT_VVARDENFELL_EXPLORATORY_6	= "Mouvement syndical"

-- Vvardenfell Hunt Quests
	L.SI_DQT_VVARDENFELL_HUNT_1			= "Chasse à Gobe-cendre"
	L.SI_DQT_VVARDENFELL_HUNT_2			= "Chasse au Grand Zexxin"
	L.SI_DQT_VVARDENFELL_HUNT_3			= "Chasse au Roi Défense-rasoir"
	L.SI_DQT_VVARDENFELL_HUNT_4			= "Mère Griffe-dentelée"
	L.SI_DQT_VVARDENFELL_HUNT_5			= "Chasse au vieux piétineur"
	L.SI_DQT_VVARDENFELL_HUNT_6			= "Chasse de Tarra-Suj"
	L.SI_DQT_VVARDENFELL_HUNT_7			= "Chasse au sveeth ondulant"

-- Vvardenfell Relics Quests
	--[[ Set these to the strings at the start of each quest, including
	the leading space. The code will generate the display name by stripping
	any of these values from the beginning of each quest name.
	--]]
	L.SI_DQT_VVARDENFELL_RELICS_PREFIX_1	= "Reliques d'"
	L.SI_DQT_VVARDENFELL_RELICS_PREFIX_2	= "Reliques de " -- placeholder for other languages

	L.SI_DQT_VVARDENFELL_RELICS_1		= "Reliques d'Ashalmawia"
	L.SI_DQT_VVARDENFELL_RELICS_2		= "Reliques d'Ashurnabitashpi"
	L.SI_DQT_VVARDENFELL_RELICS_3		= "Reliques d'Assarnatamat"
	L.SI_DQT_VVARDENFELL_RELICS_4		= "Reliques de Dushariran"
	L.SI_DQT_VVARDENFELL_RELICS_5		= "Reliques d'Ebernanit"
	L.SI_DQT_VVARDENFELL_RELICS_6		= "Reliques de Maelkashishi"
	L.SI_DQT_VVARDENFELL_RELICS_7		= "Reliques de Yasammidan"
	
-- Murkmire Prequel (Cyrodilic Collections) Quests
	L.SI_DQT_CYRODILIC_COLLECTIONS_1	= "Un goût pour les toxines"
	L.SI_DQT_CYRODILIC_COLLECTIONS_2	= "Agitation anti-venin"
	L.SI_DQT_CYRODILIC_COLLECTIONS_3	= "Du balai !"
	L.SI_DQT_CYRODILIC_COLLECTIONS_4	= "Campagne de recrutement"
	L.SI_DQT_CYRODILIC_COLLECTIONS_5	= "Viandes salées"
	L.SI_DQT_CYRODILIC_COLLECTIONS_6	= "Les Vents de Kyne"

-- Fighters Guild Quests
	--[[ Set these to the strings at the start of each quest, including
	the leading space. The code will generate the display name by stripping
	any of these values from the beginning of each quest name.
	--]]
	L.SI_DQT_FIGHTERS_GUILD_PREFIX_1		= "Ancres noires au  "
	L.SI_DQT_FIGHTERS_GUILD_PREFIX_2		= "Ancres noires à "
	L.SI_DQT_FIGHTERS_GUILD_PREFIX_3		= "Ancres noires aux "
	L.SI_DQT_FIGHTERS_GUILD_PREFIX_4		= "Ancres noires en "
	
	L.SI_DQT_FIGHTERS_GUILD_1			= "Ancres noires au désert d'Alik'r"
	L.SI_DQT_FIGHTERS_GUILD_2			= "Ancres noires à Auridia"
	L.SI_DQT_FIGHTERS_GUILD_3			= "Ancres noires à Bangkoraï"
	L.SI_DQT_FIGHTERS_GUILD_4			= "Ancres noires à Deshaan"
	L.SI_DQT_FIGHTERS_GUILD_5			= "Ancres noires en Estemarche"
	L.SI_DQT_FIGHTERS_GUILD_6			= "Ancres noires en Glénumbrie"
	L.SI_DQT_FIGHTERS_GUILD_7			= "Ancres noires au bois de Graht"
	L.SI_DQT_FIGHTERS_GUILD_8			= "Ancres noires à Prasin"
	L.SI_DQT_FIGHTERS_GUILD_9			= "Ancres noires à Malabal Tor"
	L.SI_DQT_FIGHTERS_GUILD_10			= "Ancres noires à la marche de la Camarde"
	L.SI_DQT_FIGHTERS_GUILD_11			= "Ancres noires à Fendretour"
	L.SI_DQT_FIGHTERS_GUILD_12			= "Ancres noires à Fangeombre"
	L.SI_DQT_FIGHTERS_GUILD_13			= "Ancres noires aux Éboulis"
	L.SI_DQT_FIGHTERS_GUILD_14			= "Ancres noires à Havre-tempête"
	L.SI_DQT_FIGHTERS_GUILD_15			= "Ancres noires à la Brèche"

-- Mages Guild Quests
	--[[ Set these to the strings at the start of each quest, including
	the leading space. The code will generate the display name by stripping
	any of these values from the beginning of each quest name.
	--]]
	L.SI_DQT_MAGES_GUILD_PREFIX_1		= "Folie au "
	L.SI_DQT_MAGES_GUILD_PREFIX_2		= "Folie à "
	L.SI_DQT_MAGES_GUILD_PREFIX_3		= "Folie en "
	L.SI_DQT_MAGES_GUILD_PREFIX_4		= "Folie aux "
	
	L.SI_DQT_MAGES_GUILD_1				= "Folie au désert d'Alik'r"
	L.SI_DQT_MAGES_GUILD_2				= "Folie à Auridia"
	L.SI_DQT_MAGES_GUILD_3				= "Folie à Bangkoraï"
	L.SI_DQT_MAGES_GUILD_4				= "La folie à Deshaan"
	L.SI_DQT_MAGES_GUILD_5				= "Folie en Estemarche"
	L.SI_DQT_MAGES_GUILD_6				= "Folie en Glénumbrie"
	L.SI_DQT_MAGES_GUILD_7				= "Folie au bois de Graht"
	L.SI_DQT_MAGES_GUILD_8				= "Folie à Prasin"
	L.SI_DQT_MAGES_GUILD_9				= "Folie à Malabal Tor"
	L.SI_DQT_MAGES_GUILD_10				= "Folie à la marche de la Camarde"
	L.SI_DQT_MAGES_GUILD_11				= "Folie à Fendretour"
	L.SI_DQT_MAGES_GUILD_12				= "Folie à Fangeombre"
	L.SI_DQT_MAGES_GUILD_13				= "Folie aux Éboulis"
	L.SI_DQT_MAGES_GUILD_14				= "La folie d'Havre-tempête"
	L.SI_DQT_MAGES_GUILD_15				= "Folie à la Brèche"

-- Undaunted Delve Quests
	L.SI_DQT_UNDAUNTED_DELVE_1			= "Protection des ancêtres à Deshaan"
	L.SI_DQT_UNDAUNTED_DELVE_2			= "Anciens armements de Bangkoraï"
	L.SI_DQT_UNDAUNTED_DELVE_3			= "Babioles ayléides au bois de Graht"
	L.SI_DQT_UNDAUNTED_DELVE_4			= "Justice culinaire à Prasin"
	L.SI_DQT_UNDAUNTED_DELVE_5			= "Babioles maudites d'Havre-tempête"
	L.SI_DQT_UNDAUNTED_DELVE_6			= "Les ténèbres éclatent à Fendretour"
	L.SI_DQT_UNDAUNTED_DELVE_7			= "Reliques dwemers des Éboulis"
	L.SI_DQT_UNDAUNTED_DELVE_8			= "Donnant, donnant à Fangeombre"
	L.SI_DQT_UNDAUNTED_DELVE_9			= "Intrigue glacée en Estemarche"
	L.SI_DQT_UNDAUNTED_DELVE_10			= "Inflamed Pyres of The Rift"
	L.SI_DQT_UNDAUNTED_DELVE_11			= "Vol de mascotte à la Marche de la camarde"
	L.SI_DQT_UNDAUNTED_DELVE_12			= "Perles fondues du désert d'Alik'r"
	L.SI_DQT_UNDAUNTED_DELVE_13			= "Sac des Freux écarlates en Glénumbrie"
	L.SI_DQT_UNDAUNTED_DELVE_14			= "Le piège aux esprits de Malabal Tor"
	L.SI_DQT_UNDAUNTED_DELVE_15			= "Ténèbres voilées à Auridia"

-- Wrothgar Delve Quests
	L.SI_DQT_WROTHGAR_DELVE_1			= "Petit-déjeuner de l'étrange"
	L.SI_DQT_WROTHGAR_DELVE_2			= "Incendie au fort"
	L.SI_DQT_WROTHGAR_DELVE_3			= "Esprits libres"
	L.SI_DQT_WROTHGAR_DELVE_4			= "Plein la panse !"
	L.SI_DQT_WROTHGAR_DELVE_5			= "Parties du tout"
	L.SI_DQT_WROTHGAR_DELVE_6			= "Commerce de peaux"

-- Wrothgar Group Boss Quests
	L.SI_DQT_WROTHGAR_GROUP_BOSS_1		= "Hérésie par l'ignorance"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_2		= "Nourrir les foules"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_3		= "Abondance de la nature"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_4		= "L'odeur du crime"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_5		= "Sauvetage académique"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_6		= "Neige et vapeur"
	
	L.SI_DQT_WROTHGAR_GROUP_BOSS_1_DISPLAY	= "Hérésie par l'ignorance"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_2_DISPLAY	= "Nourrir les foules"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_3_DISPLAY	= "Abondance de la nature"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_4_DISPLAY	= "L'odeur du crime"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_5_DISPLAY	= "Sauvetage académique"
	L.SI_DQT_WROTHGAR_GROUP_BOSS_6_DISPLAY	= "Neige et vapeur"

-- Thieves Guild Rye's Reacquisitions Quests
	L.SI_DQT_RYES_REACQUISITIONS_1		= "Les perles disparues"
	L.SI_DQT_RYES_REACQUISITIONS_2		= "Souvenirs d'enfance"
	L.SI_DQT_RYES_REACQUISITIONS_3		= "La pipe de marin"
	L.SI_DQT_RYES_REACQUISITIONS_4		= "Crique des esclaves"

-- Thieves Guild Heist Quests
	--[[ Set these to the strings at the start of each quest, including
	the leading space. The code will generate the display name by stripping
	any of these values from the beginning of each quest name.
	--]]
	L.SI_DQT_HEIST_PREFIX_1				= "Casse : "
	
	L.SI_DQT_HEIST_1					= "Casse : Salles du Sépulcre"
	L.SI_DQT_HEIST_2					= "Casse : la grotte scintillante"
	L.SI_DQT_HEIST_3					= "Casse : la Cachette"
	L.SI_DQT_HEIST_4					= "Casse : égouts reculés"
	L.SI_DQT_HEIST_5					= "Casse : sépulcre souterrain"

-- Dark Brotherhood Bounty Quests
	L.SI_DQT_GOLD_COAST_BOUNTY_1		= "Mal enfoui"
	L.SI_DQT_GOLD_COAST_BOUNTY_2		= "Le bien commun"
	L.SI_DQT_GOLD_COAST_BOUNTY_3		= "Ombres menaçantes"
	L.SI_DQT_GOLD_COAST_BOUNTY_4		= "Le hurlement des foules"
	
	L.SI_DQT_GOLD_COAST_BOUNTY_1_DISPLAY	= "Mal enfoui"
	L.SI_DQT_GOLD_COAST_BOUNTY_2_DISPLAY	= "Le bien commun"
	L.SI_DQT_GOLD_COAST_BOUNTY_3_DISPLAY	= "Ombres menaçantes"
	L.SI_DQT_GOLD_COAST_BOUNTY_4_DISPLAY	= "Le hurlement des foules"

-- Dark Brotherhood Sacrament Quests
	--[[ Set these to the strings at the start of each quest, including
	the leading space. The code will generate the display name by stripping
	any of these values from the beginning of each quest name.
	--]]
	L.SI_DQT_SACRAMENT_PREFIX			= "Sacrement : "
	
	L.SI_DQT_SACRAMENT_1				= "Sacrement : Antre des contrebandiers"
	L.SI_DQT_SACRAMENT_2				= "Sacrement : Bidonville des égouts"
	L.SI_DQT_SACRAMENT_3				= "Sacrement : Crique du marchand"

-- Clockwork City Bounty Quests
	L.SI_DQT_CWC_BOUNTY_1				= "Un si beau plumage"
	L.SI_DQT_CWC_BOUNTY_2				= "Attirer l'Imparfait"
	
	L.SI_DQT_CWC_BOUNTY_1_DISPLAY		= "Un si beau plumage"
	L.SI_DQT_CWC_BOUNTY_2_DISPLAY		= "Attirer l'Imparfait"

-- Clockwork City Exploratory Quests (Delve)
	L.SI_DQT_CWC_EXPLORATORY_1			= "Changer les filtres"
	L.SI_DQT_CWC_EXPLORATORY_2			= "Graisser les ventilateurs"
	L.SI_DQT_CWC_EXPLORATORY_3			= "Remplacer les commutateurs"
	L.SI_DQT_CWC_EXPLORATORY_4			= "Retour dans les ombres vertes"
	L.SI_DQT_CWC_EXPLORATORY_5			= "Une avarie d'ombre"
	L.SI_DQT_CWC_EXPLORATORY_6			= "Une ombre égarée"

-- Clockwork City Tarnished Quests
	L.SI_DQT_CWC_TARNISHED_1			= "Pilule amère"
	L.SI_DQT_CWC_TARNISHED_2			= "Chaque jour sur le métier"
	L.SI_DQT_CWC_TARNISHED_3			= "La poisse"
	L.SI_DQT_CWC_TARNISHED_4			= "Accumulation enchantée"
	L.SI_DQT_CWC_TARNISHED_5			= "Ce qui alimente nos feux"
	L.SI_DQT_CWC_TARNISHED_6			= "Détails à régler"

-- Clockwork City Blackfeather Court Quests
	L.SI_DQT_CWC_BLACKFEATHER_1			= "Lueur et Chatoiement"
	L.SI_DQT_CWC_BLACKFEATHER_2			= "Une affaire de loisirs"
	L.SI_DQT_CWC_BLACKFEATHER_3			= "Une histoire de respect"
	L.SI_DQT_CWC_BLACKFEATHER_4			= "Une affaire de tributs"
	L.SI_DQT_CWC_BLACKFEATHER_5			= "Morceaux de choix"
	L.SI_DQT_CWC_BLACKFEATHER_6			= "Petites bouchées"

for stringId, translation in pairs(L) do
	SafeAddString(_G[stringId], translation, 0)
end