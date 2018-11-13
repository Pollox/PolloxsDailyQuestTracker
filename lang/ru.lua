-- L is a convenience table so we don't have to write ZO_CreateStringId a bunch of times
local L = {}

-- Miscellanoues UI
L.SI_DQT_TOGGLE_DISPLAY				= "Переключить отображение"
L.SI_DQT_TIME_UNTIL_RESET			= "Времени до сброса"
L.SI_DQT_CHARACTERS_HEADER			= "Персонажи"
L.SI_DQT_SECTION_HEADER				= "Разделы"

-- Section Names
L.SI_DQT_CRAFTING					= "Ремесла"
L.SI_DQT_SUMMERSET					= "Саммерсет"
L.SI_DQT_VVARDENFELL				= "Вварденфел"
L.SI_DQT_GUILD						= "Гильдия"
L.SI_DQT_CYRODILIC_COLLECTIONS		= "Коллекции Сиродила"
L.SI_DQT_CLOCKWORK_CITY				= "Заводной город"
L.SI_DQT_WROTHGAR					= "Ротгар"
L.SI_DQT_THIEVES_GUILD				= "Гильдия воров"
L.SI_DQT_DARK_BROTHERHOOD			= "Темное Братство"

-- Quest Type Names
L.SI_DQT_GROUP_BOSS					= "Групповой босс"
L.SI_DQT_DELVE						= "Вылазка"
L.SI_DQT_GEYSERS					= "Гейзеры"
L.SI_DQT_ASHLANDER_HUNT				= "Охотник Эшленда"
L.SI_DQT_ASHLANDER_RELIC			= "Хранитель реликвий Эшленда"
L.SI_DQT_FIGHTERS_GUILD				= "Гильдия Бойцов"
L.SI_DQT_MAGES_GUILD				= "Гильдия Магов"
L.SI_DQT_UNDAUNTED_DELVE			= "Вылазка Неустрашимых"
L.SI_DQT_TARNISHED					= "Tarnished"
L.SI_DQT_BLACKFEATHER_COURT			= "Черноперый двор"
L.SI_DQT_RYES_REACQUISITIONS		= "Возвращение вещей Рая"
L.SI_DQT_HEIST						= "Ограбление"
L.SI_DQT_GOLD_COAST_BOUNTY			= "Объявления"
L.SI_DQT_SACRAMENT					= "Таинство"

L.SI_DQT_CLOTHING					= "Портняжное дело"
L.SI_DQT_BLACKSMITHING				= "Кузнечное дело"
L.SI_DQT_WOODWORKING				= "Столярное дело"
L.SI_DQT_JEWELRY					= "Ювелирное дело"
L.SI_DQT_ALCHEMY					= "Алхимия"
L.SI_DQT_ENCHANTING					= "Зачарование"
L.SI_DQT_PROVISIONING				= "Снабжение"

--[[
	QUEST NAMES MUST BE EXACTLY AS THEY APPEAR IN GAME IN THE QUEST JOURNAL.
	Some quests with have an alternate DISPLAY name under them, for however
	we want to show the quest in the GUI
--]]

-- Daily Crafting Quests
L.SI_DQT_CLOTHIER_WRIT				= "Заказ портному"
L.SI_DQT_BLACKSMITH_WRIT			= "Заказ кузнецу"
L.SI_DQT_WOODWORKER_WRIT			= "Заказ столяру"
L.SI_DQT_JEWELRY_WRIT				= "Заказ ювелиру"
L.SI_DQT_ALCHEMIST_WRIT				= "Заказ алхимику"
L.SI_DQT_ENCHANTER_WRIT				= "Заказ зачарователю"
L.SI_DQT_PROVISIONER_WRIT			= "Заказ снабженцу"

-- Undaunted Pledges
--[[ Set these to the strings at the start of each quest, including
the leading space. The code will generate the display name by stripping
any of these values from the beginning of each quest name.
--]]
L.SI_DQT_PLEDGE_PREFIX				= "Pledge: "

L.SI_DQT_PLEDGE_DARKSHADE1			= "Pledge: Darkshade Caverns I"
L.SI_DQT_PLEDGE_DARKSHADE2			= "Pledge: Darkshade II"
L.SI_DQT_PLEDGE_ELDEN1				= "Pledge: Elden Hollow I"
L.SI_DQT_PLEDGE_ELDEN2				= "Pledge: Elden Hollow II"
L.SI_DQT_PLEDGE_FUNGAL1				= "Pledge: Fungal Grotto I"
L.SI_DQT_PLEDGE_FUNGAL2				= "Pledge: Fungal Grotto II"
L.SI_DQT_PLEDGE_SPINDLE1			= "Pledge: Spindleclutch I"
L.SI_DQT_PLEDGE_SPINDLE2			= "Pledge: Spindleclutch II"
L.SI_DQT_PLEDGE_BANISHED1			= "Pledge: Banished Cells I"
L.SI_DQT_PLEDGE_BANISHED2			= "Pledge: Banished Cells II"
L.SI_DQT_PLEDGE_WAYREST1			= "Pledge: Wayrest Sewers I"
L.SI_DQT_PLEDGE_WAYREST2			= "Pledge: Wayrest Sewers II"

L.SI_DQT_PLEDGE_ARX					= "Pledge: Arx Corinium"
L.SI_DQT_PLEDGE_BLACKHEART			= "Pledge: Blackheart Haven"
L.SI_DQT_PLEDGE_CRUCIBLE			= "Pledge: Blessed Crucible"
L.SI_DQT_PLEDGE_COA1				= "Pledge: City of Ash I"
L.SI_DQT_PLEDGE_COA2				= "Pledge: City of Ash II"
L.SI_DQT_PLEDGE_COH1				= "Pledge: Crypt of Hearts I"
L.SI_DQT_PLEDGE_COH2				= "Pledge: Crypt of Hearts II"
L.SI_DQT_PLEDGE_DIREFROST			= "Pledge: Direfrost Keep"
L.SI_DQT_PLEDGE_SELENE				= "Pledge: Selene's Web"
L.SI_DQT_PLEDGE_TEMPEST				= "Pledge: Tempest Island"
L.SI_DQT_PLEDGE_VOM					= "Pledge: Vaults of Madness"
L.SI_DQT_PLEDGE_VOLENFELL			= "Pledge: Volenfell"

L.SI_DQT_PLEDGE_CRADLE				= "Pledge: Cradle of Shadows"
L.SI_DQT_PLEDGE_PRISON				= "Pledge: Imperial City Prison"
L.SI_DQT_PLEDGE_MAZZATUN			= "Pledge: Ruins of Mazzatun"
L.SI_DQT_PLEDGE_WHITE_GOLD			= "Pledge: White-Gold Tower"
L.SI_DQT_PLEDGE_BLOODROOT			= "Pledge: Bloodroot Forge"
L.SI_DQT_PLEDGE_FALKREATH			= "Pledge: Falkreath Hold"
L.SI_DQT_PLEDGE_FANG_LAIG			= "Pledge: Fang Lair"
L.SI_DQT_PLEDGE_SCALECALLER			= "Pledge: Scalecaller Peak"
L.SI_DQT_PLEDGE_MOONHUNTER			= "Pledge: Moon Hunter Keep"
L.SI_DQT_PLEDGE_MARCH				= "Pledge: March of Sacrifices"

-- Summerset Bounty Quests (World Boss)
L.SI_DQT_SUMMERSET_BOUNTY_1			= "Глубинный алхимик"
L.SI_DQT_SUMMERSET_BOUNTY_2			= "Птицы одного пера"
L.SI_DQT_SUMMERSET_BOUNTY_3			= "Вечная память"
L.SI_DQT_SUMMERSET_BOUNTY_4			= "На мели"
L.SI_DQT_SUMMERSET_BOUNTY_5			= "Болезнь моря"
L.SI_DQT_SUMMERSET_BOUNTY_6			= "Укрощение дикой природы"

L.SI_DQT_SUMMERSET_BOUNTY_1_DISPLAY	= "Глубинный алхимик"
L.SI_DQT_SUMMERSET_BOUNTY_2_DISPLAY	= "Птицы одного пера"
L.SI_DQT_SUMMERSET_BOUNTY_3_DISPLAY	= "Вечная память"
L.SI_DQT_SUMMERSET_BOUNTY_4_DISPLAY	= "На мели"
L.SI_DQT_SUMMERSET_BOUNTY_5_DISPLAY	= "Болезнь моря"
L.SI_DQT_SUMMERSET_BOUNTY_6_DISPLAY	= "Укрощение дикой природы"

-- Summerset Exploratory Quests (Delve)
L.SI_DQT_SUMMERSET_EXPLORATORY_1	= "Сокращение популяции змей"
L.SI_DQT_SUMMERSET_EXPLORATORY_2	= "Завершение паломничества"
L.SI_DQT_SUMMERSET_EXPLORATORY_3	= "Волокита с реликвиями"
L.SI_DQT_SUMMERSET_EXPLORATORY_4	= "Красота розы"
L.SI_DQT_SUMMERSET_EXPLORATORY_5	= "Тушение пламени"
L.SI_DQT_SUMMERSET_EXPLORATORY_6	= "Вычеркнуть из памяти"

-- Summerset Abyssal Geyser Quests
L.SI_DQT_SUMMERSET_GEYSER			= "Затопление Саммерсета"

-- Vvardenfell Bounty Quests (World Boss)
L.SI_DQT_VVARDENFELL_BOUNTY_1		= "Обеспокоенная ученица"
L.SI_DQT_VVARDENFELL_BOUNTY_2		= "Затаившийся алчущий"
L.SI_DQT_VVARDENFELL_BOUNTY_3		= "Отбраковка колонии"
L.SI_DQT_VVARDENFELL_BOUNTY_4		= "Волам здесь не место"
L.SI_DQT_VVARDENFELL_BOUNTY_5		= "Проклятье Салотанов"
L.SI_DQT_VVARDENFELL_BOUNTY_6		= "Песня сирены"

L.SI_DQT_VVARDENFELL_BOUNTY_1_DISPLAY = "Обеспокоенная ученица"
L.SI_DQT_VVARDENFELL_BOUNTY_2_DISPLAY = "Затаившийся алчущий"
L.SI_DQT_VVARDENFELL_BOUNTY_3_DISPLAY = "Отбраковка колонии"
L.SI_DQT_VVARDENFELL_BOUNTY_4_DISPLAY = "Волам здесь не место"
L.SI_DQT_VVARDENFELL_BOUNTY_5_DISPLAY = "Проклятье Салотанов"
L.SI_DQT_VVARDENFELL_BOUNTY_6_DISPLAY = "Песня сирены"

-- Vvardenfell Exploratory Quests (Delve)
L.SI_DQT_VVARDENFELL_EXPLORATORY_1	= "Даэдрический срыв"
L.SI_DQT_VVARDENFELL_EXPLORATORY_2	= "Задачка с квама"
L.SI_DQT_VVARDENFELL_EXPLORATORY_3	= "Насаждение дезинформации"
L.SI_DQT_VVARDENFELL_EXPLORATORY_4	= "Налоговый вычет"
L.SI_DQT_VVARDENFELL_EXPLORATORY_5	= "Проблемы племени"
L.SI_DQT_VVARDENFELL_EXPLORATORY_6	= "Беспокойный синдикат"

-- Vvardenfell Hunt Quests
L.SI_DQT_VVARDENFELL_HUNT_1			= "Охота на Пеплоеда"
L.SI_DQT_VVARDENFELL_HUNT_2			= "Охота на Великого Зексина"
L.SI_DQT_VVARDENFELL_HUNT_3			= "Охота на Короля Острый Клык"
L.SI_DQT_VVARDENFELL_HUNT_4			= "Охота на Мать Зазубренная Клешня"
L.SI_DQT_VVARDENFELL_HUNT_5			= "Охота на Старого Топотуна"
L.SI_DQT_VVARDENFELL_HUNT_6			= "Охота на Тарра-Судж"
L.SI_DQT_VVARDENFELL_HUNT_7			= "Охота на Извивающегося Свита"

-- Vvardenfell Relics Quests
--[[ Set these to the strings at the start of each quest, including
the leading space. The code will generate the display name by stripping
any of these values from the beginning of each quest name.
--]]
L.SI_DQT_VVARDENFELL_RELICS_PREFIX_1	= "Реликвии "
L.SI_DQT_VVARDENFELL_RELICS_PREFIX_2	= "" -- placeholder for other languages

L.SI_DQT_VVARDENFELL_RELICS_1		= "Реликвии Ашалмавии"
L.SI_DQT_VVARDENFELL_RELICS_2		= "Реликвии Ассурнабиташпи"
L.SI_DQT_VVARDENFELL_RELICS_3		= "Реликвии Ассарнатамата"
L.SI_DQT_VVARDENFELL_RELICS_4		= "Реликвии Душарирана"
L.SI_DQT_VVARDENFELL_RELICS_5		= "Реликвии Эбернанита"
L.SI_DQT_VVARDENFELL_RELICS_6		= "Реликвии Мелкашиши"
L.SI_DQT_VVARDENFELL_RELICS_7		= "Реликвии Ясаммидана"

-- Murkmire Prequel (Cyrodilic Collections) Quests
L.SI_DQT_CYRODILIC_COLLECTIONS_1	= "Вкус к отраве"
L.SI_DQT_CYRODILIC_COLLECTIONS_2	= "Смешивание противоядия"
L.SI_DQT_CYRODILIC_COLLECTIONS_3	= "Бой жукам"
L.SI_DQT_CYRODILIC_COLLECTIONS_4	= "Привлечение новых участников"
L.SI_DQT_CYRODILIC_COLLECTIONS_5	= "Солонина"
L.SI_DQT_CYRODILIC_COLLECTIONS_6	= "Ветра Кин"

-- Fighters Guild Quests
--[[ Set these to the strings at the start of each quest, including
the leading space. The code will generate the display name by stripping
any of these values from the beginning of each quest name.
--]]
L.SI_DQT_FIGHTERS_GUILD_PREFIX_1		= "Темные якоря в "
L.SI_DQT_FIGHTERS_GUILD_PREFIX_2		= "Темные якоря на " -- placeholder for other languages
L.SI_DQT_FIGHTERS_GUILD_PREFIX_3		= "" -- placeholder for other languages
L.SI_DQT_FIGHTERS_GUILD_PREFIX_4		= "" -- placeholder for other languages

L.SI_DQT_FIGHTERS_GUILD_1			= "Темные якоря в пустыне Алик'р"
L.SI_DQT_FIGHTERS_GUILD_2			= "Темные якоря на Ауридоне"
L.SI_DQT_FIGHTERS_GUILD_3			= "Темные якоря в Бангкорае"
L.SI_DQT_FIGHTERS_GUILD_4			= "Темные якоря в Дешаане"
L.SI_DQT_FIGHTERS_GUILD_5			= "Темные якоря в Истмарке"
L.SI_DQT_FIGHTERS_GUILD_6			= "Темные якоря в Гленумбре"
L.SI_DQT_FIGHTERS_GUILD_7			= "Темные якоря в Гратвуде"
L.SI_DQT_FIGHTERS_GUILD_8			= "Темные якоря в Гриншейде"
L.SI_DQT_FIGHTERS_GUILD_9			= "Темные якоря в Малабал Торе"
L.SI_DQT_FIGHTERS_GUILD_10			= "Темные якоря в Марке Смерти"
L.SI_DQT_FIGHTERS_GUILD_11			= "Темные якоря в Ривенспайре"
L.SI_DQT_FIGHTERS_GUILD_12			= "Темные якоря в Шедоуфене"
L.SI_DQT_FIGHTERS_GUILD_13			= "Темные якоря в Стоунфолзе"
L.SI_DQT_FIGHTERS_GUILD_14			= "Темные якоря в Стормхейвене"
L.SI_DQT_FIGHTERS_GUILD_15			= "Темные якоря в Рифте"

-- Mages Guild Quests
--[[ Set these to the strings at the start of each quest, including
the leading space. The code will generate the display name by stripping
any of these values from the beginning of each quest name.
--]]
L.SI_DQT_MAGES_GUILD_PREFIX_1		= "Безумие в "
L.SI_DQT_MAGES_GUILD_PREFIX_2		= "Безумие на " -- placeholder for other languages
L.SI_DQT_MAGES_GUILD_PREFIX_3		= "" -- placeholder for other languages
L.SI_DQT_MAGES_GUILD_PREFIX_4		= "" -- placeholder for other languages

L.SI_DQT_MAGES_GUILD_1				= "Безумие в пустыне Алик'р"
L.SI_DQT_MAGES_GUILD_2				= "Безумие на Ауридоне"
L.SI_DQT_MAGES_GUILD_3				= "Безумие в Бангкорае"
L.SI_DQT_MAGES_GUILD_4				= "Безумие в Дешаане"
L.SI_DQT_MAGES_GUILD_5				= "Безумие в Истмарке"
L.SI_DQT_MAGES_GUILD_6				= "Безумие в Гленумбре"
L.SI_DQT_MAGES_GUILD_7				= "Безумие в Гратвуде"
L.SI_DQT_MAGES_GUILD_8				= "Безумие в Гриншейде"
L.SI_DQT_MAGES_GUILD_9				= "Безумие в Малабал Торе"
L.SI_DQT_MAGES_GUILD_10				= "Безумие в Марке Смерти"
L.SI_DQT_MAGES_GUILD_11				= "Безумие в Ривенспайре"
L.SI_DQT_MAGES_GUILD_12				= "Безумие в Шедоуфене"
L.SI_DQT_MAGES_GUILD_13				= "Безумие в Стоунфолзе"
L.SI_DQT_MAGES_GUILD_14				= "Безумие в Стормхейвене"
L.SI_DQT_MAGES_GUILD_15				= "Безумие в Рифте"

-- Undaunted Delve Quests
L.SI_DQT_UNDAUNTED_DELVE_1			= "Обереги предков в Дешаане"
L.SI_DQT_UNDAUNTED_DELVE_2			= "Древнее оружие Бангкорая"
L.SI_DQT_UNDAUNTED_DELVE_3			= "Айлейдские безделушки в Гратвуде"
L.SI_DQT_UNDAUNTED_DELVE_4			= "Кулинарное правосудие в Гриншейде"
L.SI_DQT_UNDAUNTED_DELVE_5			= "Проклятые безделушки Стормхейвена"
L.SI_DQT_UNDAUNTED_DELVE_6			= "Расцвет тьмы в Ривенспайре"
L.SI_DQT_UNDAUNTED_DELVE_7			= "Двемерские реликвии Стоунфолза"
L.SI_DQT_UNDAUNTED_DELVE_8			= "Обмен в Шедоуфене"
L.SI_DQT_UNDAUNTED_DELVE_9			= "Ледяная интрига в Истмарке"
L.SI_DQT_UNDAUNTED_DELVE_10			= "Зажженные погребальные огни в Рифте"
L.SI_DQT_UNDAUNTED_DELVE_11			= "Талисман вора в Марке Смерти"
L.SI_DQT_UNDAUNTED_DELVE_12			= "Расплавленный жемчуг в пустыне Алик'р"
L.SI_DQT_UNDAUNTED_DELVE_13			= "Ограбление Красных Грачей в Гленумбре"
L.SI_DQT_UNDAUNTED_DELVE_14			= "The Spirit Trap in Malabal Tor"
L.SI_DQT_UNDAUNTED_DELVE_15			= "Скрытая тьма на Ауридоне"

-- Wrothgar Delve Quests
L.SI_DQT_WROTHGAR_DELVE_1			= "Завтрак чудака"
L.SI_DQT_WROTHGAR_DELVE_2			= "Пожар во владении"
L.SI_DQT_WROTHGAR_DELVE_3			= "Свободные духи"
L.SI_DQT_WROTHGAR_DELVE_4			= "До отвала"
L.SI_DQT_WROTHGAR_DELVE_5			= "Части целого"
L.SI_DQT_WROTHGAR_DELVE_6			= "Торговля кожей"

-- Wrothgar Group Boss Quests
L.SI_DQT_WROTHGAR_GROUP_BOSS_1		= "Ересь невежества"
L.SI_DQT_WROTHGAR_GROUP_BOSS_2		= "Мясо в массы"
L.SI_DQT_WROTHGAR_GROUP_BOSS_3		= "Щедрость природы"
L.SI_DQT_WROTHGAR_GROUP_BOSS_4		= "Запах нечестной игры"
L.SI_DQT_WROTHGAR_GROUP_BOSS_5		= "Спасение во имя знаний"
L.SI_DQT_WROTHGAR_GROUP_BOSS_6		= "Снег и пар"

L.SI_DQT_WROTHGAR_GROUP_BOSS_1_DISPLAY = "Ересь невежества"
L.SI_DQT_WROTHGAR_GROUP_BOSS_2_DISPLAY = "Мясо в массы"
L.SI_DQT_WROTHGAR_GROUP_BOSS_3_DISPLAY = "Щедрость природы"
L.SI_DQT_WROTHGAR_GROUP_BOSS_4_DISPLAY = "Запах нечестной игры"
L.SI_DQT_WROTHGAR_GROUP_BOSS_5_DISPLAY = "Спасение во имя знаний"
L.SI_DQT_WROTHGAR_GROUP_BOSS_6_DISPLAY = "Снег и пар"

-- Thieves Guild Rye's Reacquisitions Quests
L.SI_DQT_RYES_REACQUISITIONS_1		= "Потерянные жемчужины"
L.SI_DQT_RYES_REACQUISITIONS_2		= "Воспоминания о молодости"
L.SI_DQT_RYES_REACQUISITIONS_3		= "Трубка моряка"
L.SI_DQT_RYES_REACQUISITIONS_4		= "Бухта рабов"

-- Thieves Guild Heist Quests
--[[ Set these to the strings at the start of each quest, including
the leading space. The code will generate the display name by stripping
any of these values from the beginning of each quest name.
--]]
L.SI_DQT_HEIST_PREFIX_1				= "Ограбление: "
L.SI_DQT_HEIST_PREFIX_2				= "" -- placeholder for other languages

L.SI_DQT_HEIST_1					= "Ограбление: залы Мертвой лощины"
L.SI_DQT_HEIST_2					= "Ограбление: Сверкающий грот"
L.SI_DQT_HEIST_3					= "Ограбление: укрытие"
L.SI_DQT_HEIST_4					= "Ограбление: Потайные коллекторы"
L.SI_DQT_HEIST_5					= "Ограбление: подземная усыпальница"

-- Dark Brotherhood Bounty Quests
L.SI_DQT_GOLD_COAST_BOUNTY_1		= "Захороненное зло"
L.SI_DQT_GOLD_COAST_BOUNTY_2		= "Всеобщее благо"
L.SI_DQT_GOLD_COAST_BOUNTY_3		= "Надвигающиеся тени"
L.SI_DQT_GOLD_COAST_BOUNTY_4		= "Рев толпы"

L.SI_DQT_GOLD_COAST_BOUNTY_1_DISPLAY = "Захороненное зло"
L.SI_DQT_GOLD_COAST_BOUNTY_2_DISPLAY = "Всеобщее благо"
L.SI_DQT_GOLD_COAST_BOUNTY_3_DISPLAY = "Надвигающиеся тени"
L.SI_DQT_GOLD_COAST_BOUNTY_4_DISPLAY = "Рев толпы"

-- Dark Brotherhood Sacrament Quests
--[[ Set these to the strings at the start of each quest, including
the leading space. The code will generate the display name by stripping
any of these values from the beginning of each quest name.
--]]
L.SI_DQT_SACRAMENT_PREFIX			= "Таинство: "

L.SI_DQT_SACRAMENT_1				= "Таинство: логово контрабандистов"
L.SI_DQT_SACRAMENT_2				= "Таинство: жилая канализация"
L.SI_DQT_SACRAMENT_3				= "Таинство: пещера торговцев"

-- Clockwork City Bounty Quests
L.SI_DQT_CWC_BOUNTY_1				= "Враг в прекрасном оперении"
L.SI_DQT_CWC_BOUNTY_2				= "Пробуждение Несовершенства"

L.SI_DQT_CWC_BOUNTY_1_DISPLAY		= "Враг в прекрасном оперении"
L.SI_DQT_CWC_BOUNTY_2_DISPLAY		= "Пробуждение Несовершенства"

-- Clockwork City Exploratory Quests (Delve)
L.SI_DQT_CWC_EXPLORATORY_1			= "Замена фильтров"
L.SI_DQT_CWC_EXPLORATORY_2			= "Смазывание вентиляторов"
L.SI_DQT_CWC_EXPLORATORY_3			= "Замена преобразователей"
L.SI_DQT_CWC_EXPLORATORY_4			= "Обратно в тень"
L.SI_DQT_CWC_EXPLORATORY_5			= "Сумрачная неисправность"
L.SI_DQT_CWC_EXPLORATORY_6			= "Пропавшая тень"

-- Clockwork City Tarnished Quests
L.SI_DQT_CWC_TARNISHED_1			= "Горькая пилюля"
L.SI_DQT_CWC_TARNISHED_2			= "Ежедневная молотилка"
L.SI_DQT_CWC_TARNISHED_3			= "Липкое решение"
L.SI_DQT_CWC_TARNISHED_4			= "Сбор зачарований"
L.SI_DQT_CWC_TARNISHED_5			= "Масло в огонь"
L.SI_DQT_CWC_TARNISHED_6			= "Свободные нити"

-- Clockwork City Blackfeather Court Quests
L.SI_DQT_CWC_BLACKFEATHER_1			= "Шик и блеск"
L.SI_DQT_CWC_BLACKFEATHER_2			= "Вопрос о свободном времени"
L.SI_DQT_CWC_BLACKFEATHER_3			= "Вопрос уважения"
L.SI_DQT_CWC_BLACKFEATHER_4			= "Вопрос о подношениях"
L.SI_DQT_CWC_BLACKFEATHER_5			= "Лакомые кусочки"
L.SI_DQT_CWC_BLACKFEATHER_6			= "Кусочки и частички"

for stringId, translation in pairs(L) do
    -- In other language files, use SafeAddString instead, e.g. SafeAddString(stringId, translation, 0)
    SafeAddString(_G[stringId], translation, 0)
end