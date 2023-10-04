--[[
Quests Object
	name: name of quest category (quest section name)
	questTypes:
		name : e.g. World Boss
		quest names -> list of names of questTypes, e.g. Boss1, Boss2
--]]
local Info = {}
DQT.Info = Info
local QUEST_TYPE_ENUM = DQT.Quest.QUEST_TYPE_ENUM
local Quest = DQT.Quest.Quest
local QuestType = DQT.Quest.QuestType
local QuestSection = DQT.Quest.QuestSection
local Utils = DQT.Utils
local TimerQuest = DQT.Timer.TimerQuest
local TimerSection = DQT.Timer.TimerSection
local TIMER_TYPE = DQT.Timer.TIMER_TYPE

-- helper function for Quest:new when name and display name both need to be converted with GetString
local function newQuest(siName, siDisplayName)
    return Quest:new(GetString(siName), siDisplayName and GetString(siDisplayName) or nil)
end

Info.CraftingQuests =
    QuestSection:new(
    GetString(SI_DQT_CRAFTING),
    {
        QuestType:new(
            GetString(SI_DQT_CLOTHING),
            QUEST_TYPE_ENUM.WRIT,
            {newQuest(SI_DQT_CRAFTING_WRITS_EQUIPMENT_CRAFTING_WRITS_02)}
        ),
        QuestType:new(
            GetString(SI_DQT_BLACKSMITHING),
            QUEST_TYPE_ENUM.WRIT,
            {newQuest(SI_DQT_CRAFTING_WRITS_EQUIPMENT_CRAFTING_WRITS_01)}
        ),
        QuestType:new(
            GetString(SI_DQT_WOODWORKING),
            QUEST_TYPE_ENUM.WRIT,
            {newQuest(SI_DQT_CRAFTING_WRITS_EQUIPMENT_CRAFTING_WRITS_04)}
        ),
        QuestType:new(
            GetString(SI_DQT_JEWELRY),
            QUEST_TYPE_ENUM.WRIT,
            {newQuest(SI_DQT_CRAFTING_WRITS_EQUIPMENT_CRAFTING_WRITS_03)}
        ),
        QuestType:new(
            GetString(SI_DQT_ALCHEMY),
            QUEST_TYPE_ENUM.WRIT,
            {newQuest(SI_DQT_CRAFTING_WRITS_CONSUMABLES_CRAFTING_WRITS_01)}
        ),
        QuestType:new(
            GetString(SI_DQT_ENCHANTING),
            QUEST_TYPE_ENUM.WRIT,
            {newQuest(SI_DQT_CRAFTING_WRITS_CONSUMABLES_CRAFTING_WRITS_02)}
        ),
        QuestType:new(
            GetString(SI_DQT_PROVISIONING),
            QUEST_TYPE_ENUM.WRIT,
            {newQuest(SI_DQT_CRAFTING_WRITS_CONSUMABLES_CRAFTING_WRITS_03)}
        )
    }
)

Info.SummersetQuests =
    QuestSection:new(
    GetString(SI_DQT_SUMMERSET),
    {
        QuestType:new(
            GetString(SI_DQT_GROUP_BOSS),
            QUEST_TYPE_ENUM.GROUP_BOSS,
            {
                newQuest(SI_DQT_SUMMERSET_QUESTS_BOUNTY_01, SI_DQT_SUMMERSET_QUESTS_BOUNTY_01_DISPLAY),
                newQuest(SI_DQT_SUMMERSET_QUESTS_BOUNTY_02, SI_DQT_SUMMERSET_QUESTS_BOUNTY_02_DISPLAY),
                newQuest(SI_DQT_SUMMERSET_QUESTS_BOUNTY_03, SI_DQT_SUMMERSET_QUESTS_BOUNTY_03_DISPLAY),
                newQuest(SI_DQT_SUMMERSET_QUESTS_BOUNTY_04, SI_DQT_SUMMERSET_QUESTS_BOUNTY_04_DISPLAY),
                newQuest(SI_DQT_SUMMERSET_QUESTS_BOUNTY_05, SI_DQT_SUMMERSET_QUESTS_BOUNTY_05_DISPLAY),
                newQuest(SI_DQT_SUMMERSET_QUESTS_BOUNTY_06, SI_DQT_SUMMERSET_QUESTS_BOUNTY_06_DISPLAY)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_DELVE),
            QUEST_TYPE_ENUM.DELVE,
            {
                newQuest(SI_DQT_SUMMERSET_QUESTS_EXPLORATORY_01),
                newQuest(SI_DQT_SUMMERSET_QUESTS_EXPLORATORY_02),
                newQuest(SI_DQT_SUMMERSET_QUESTS_EXPLORATORY_03),
                newQuest(SI_DQT_SUMMERSET_QUESTS_EXPLORATORY_04),
                newQuest(SI_DQT_SUMMERSET_QUESTS_EXPLORATORY_05),
                newQuest(SI_DQT_SUMMERSET_QUESTS_EXPLORATORY_06)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_GEYSERS),
            QUEST_TYPE_ENUM.DOLMEN,
            {newQuest(SI_DQT_SUMMERSET_QUESTS_ABYSSAL_GEYSERS_01)}
        )
    }
)

-- create Vvardenfell relic Quest object from variable like SI_DQT_VVARDENFELL_QUESTS_RELICS_01
local function relicsQuest(questLangVar)
    local questName = GetString(questLangVar)
    return Quest:new(
        questName,
        Utils:stripPrefixes(
            questName,
            {
                GetString(SI_DQT_VVARDENFELL_QUESTS_RELICS_PREFIX_1),
                GetString(SI_DQT_VVARDENFELL_QUESTS_RELICS_PREFIX_2)
            }
        )
    )
end

Info.VvardenfellQuests =
    QuestSection:new(
    GetString(SI_DQT_VVARDENFELL),
    {
        QuestType:new(
            GetString(SI_DQT_GROUP_BOSS),
            QUEST_TYPE_ENUM.GROUP_BOSS,
            {
                newQuest(SI_DQT_VVARDENFELL_QUESTS_BOUNTY_01, SI_DQT_VVARDENFELL_QUESTS_BOUNTY_01_DISPLAY),
                newQuest(SI_DQT_VVARDENFELL_QUESTS_BOUNTY_02, SI_DQT_VVARDENFELL_QUESTS_BOUNTY_02_DISPLAY),
                newQuest(SI_DQT_VVARDENFELL_QUESTS_BOUNTY_03, SI_DQT_VVARDENFELL_QUESTS_BOUNTY_03_DISPLAY),
                newQuest(SI_DQT_VVARDENFELL_QUESTS_BOUNTY_04, SI_DQT_VVARDENFELL_QUESTS_BOUNTY_04_DISPLAY),
                newQuest(SI_DQT_VVARDENFELL_QUESTS_BOUNTY_05, SI_DQT_VVARDENFELL_QUESTS_BOUNTY_05_DISPLAY),
                newQuest(SI_DQT_VVARDENFELL_QUESTS_BOUNTY_06, SI_DQT_VVARDENFELL_QUESTS_BOUNTY_06_DISPLAY)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_DELVE),
            QUEST_TYPE_ENUM.DELVE,
            {
                newQuest(SI_DQT_VVARDENFELL_QUESTS_EXPLORATORY_01),
                newQuest(SI_DQT_VVARDENFELL_QUESTS_EXPLORATORY_02),
                newQuest(SI_DQT_VVARDENFELL_QUESTS_EXPLORATORY_03),
                newQuest(SI_DQT_VVARDENFELL_QUESTS_EXPLORATORY_04),
                newQuest(SI_DQT_VVARDENFELL_QUESTS_EXPLORATORY_05),
                newQuest(SI_DQT_VVARDENFELL_QUESTS_EXPLORATORY_06)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_ASHLANDER_HUNT),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_VVARDENFELL_QUESTS_HUNT_01),
                newQuest(SI_DQT_VVARDENFELL_QUESTS_HUNT_02),
                newQuest(SI_DQT_VVARDENFELL_QUESTS_HUNT_03),
                newQuest(SI_DQT_VVARDENFELL_QUESTS_HUNT_04),
                newQuest(SI_DQT_VVARDENFELL_QUESTS_HUNT_05),
                newQuest(SI_DQT_VVARDENFELL_QUESTS_HUNT_06),
                newQuest(SI_DQT_VVARDENFELL_QUESTS_HUNT_07)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_ASHLANDER_RELIC),
            QUEST_TYPE_ENUM.MISC,
            {
                relicsQuest(SI_DQT_VVARDENFELL_QUESTS_RELICS_01),
                relicsQuest(SI_DQT_VVARDENFELL_QUESTS_RELICS_02),
                relicsQuest(SI_DQT_VVARDENFELL_QUESTS_RELICS_03),
                relicsQuest(SI_DQT_VVARDENFELL_QUESTS_RELICS_04),
                relicsQuest(SI_DQT_VVARDENFELL_QUESTS_RELICS_05),
                relicsQuest(SI_DQT_VVARDENFELL_QUESTS_RELICS_06),
                relicsQuest(SI_DQT_VVARDENFELL_QUESTS_RELICS_07)
            }
        )
    }
)

-- create fighters guild Quest object from variable like SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_01
local function fightersQuest(questLangVar)
    local questName = GetString(questLangVar)
    return Quest:new(
        questName,
        Utils:stripPrefixes(
            questName,
            {
                GetString(SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_PREFIX_1),
                GetString(SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_PREFIX_2),
                GetString(SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_PREFIX_3),
                GetString(SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_PREFIX_4)
            }
        )
    )
end

-- create mages guild Quest object from variable like SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_01
local function magesQuest(questLangVar)
    local questName = GetString(questLangVar)
    return Quest:new(
        questName,
        Utils:stripPrefixes(
            questName,
            {
                GetString(SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_PREFIX_1),
                GetString(SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_PREFIX_2),
                GetString(SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_PREFIX_3),
                GetString(SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_PREFIX_4)
            }
        )
    )
end

Info.GuildQuests =
    QuestSection:new(
    GetString(SI_DQT_GUILD),
    {
        QuestType:new(
            GetString(SI_DQT_FIGHTERS_GUILD),
            QUEST_TYPE_ENUM.DOLMEN,
            {
                fightersQuest(SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_01),
                fightersQuest(SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_02),
                fightersQuest(SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_03),
                fightersQuest(SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_04),
                fightersQuest(SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_05),
                fightersQuest(SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_06),
                fightersQuest(SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_07),
                fightersQuest(SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_08),
                fightersQuest(SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_09),
                fightersQuest(SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_10),
                fightersQuest(SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_11),
                fightersQuest(SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_12),
                fightersQuest(SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_13),
                fightersQuest(SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_14),
                fightersQuest(SI_DQT_GUILD_DAILY_QUESTS_FIGHTERS_GUILD_DAILY_QUESTS_15)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_MAGES_GUILD),
            QUEST_TYPE_ENUM.DELVE,
            {
                magesQuest(SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_01),
                magesQuest(SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_02),
                magesQuest(SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_03),
                magesQuest(SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_04),
                magesQuest(SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_05),
                magesQuest(SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_06),
                magesQuest(SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_07),
                magesQuest(SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_08),
                magesQuest(SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_09),
                magesQuest(SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_10),
                magesQuest(SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_11),
                magesQuest(SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_12),
                magesQuest(SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_13),
                magesQuest(SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_14),
                magesQuest(SI_DQT_GUILD_DAILY_QUESTS_MAGES_GUILD_DAILY_QUESTS_15)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_UNDAUNTED_DELVE),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_GUILD_DAILY_QUESTS_UNDAUNTED_DAILY_QUESTS_01),
                newQuest(SI_DQT_GUILD_DAILY_QUESTS_UNDAUNTED_DAILY_QUESTS_02),
                newQuest(SI_DQT_GUILD_DAILY_QUESTS_UNDAUNTED_DAILY_QUESTS_03),
                newQuest(SI_DQT_GUILD_DAILY_QUESTS_UNDAUNTED_DAILY_QUESTS_04),
                newQuest(SI_DQT_GUILD_DAILY_QUESTS_UNDAUNTED_DAILY_QUESTS_05),
                newQuest(SI_DQT_GUILD_DAILY_QUESTS_UNDAUNTED_DAILY_QUESTS_06),
                newQuest(SI_DQT_GUILD_DAILY_QUESTS_UNDAUNTED_DAILY_QUESTS_07),
                newQuest(SI_DQT_GUILD_DAILY_QUESTS_UNDAUNTED_DAILY_QUESTS_08),
                newQuest(SI_DQT_GUILD_DAILY_QUESTS_UNDAUNTED_DAILY_QUESTS_09),
                newQuest(SI_DQT_GUILD_DAILY_QUESTS_UNDAUNTED_DAILY_QUESTS_10),
                newQuest(SI_DQT_GUILD_DAILY_QUESTS_UNDAUNTED_DAILY_QUESTS_11),
                newQuest(SI_DQT_GUILD_DAILY_QUESTS_UNDAUNTED_DAILY_QUESTS_12),
                newQuest(SI_DQT_GUILD_DAILY_QUESTS_UNDAUNTED_DAILY_QUESTS_13),
                newQuest(SI_DQT_GUILD_DAILY_QUESTS_UNDAUNTED_DAILY_QUESTS_14),
                newQuest(SI_DQT_GUILD_DAILY_QUESTS_UNDAUNTED_DAILY_QUESTS_15)
            }
        )
    }
)

-- create Cyrodilic Collections Quest object from variable like SI_DQT_BLACK_MARSH_CYRODILIC_COLLECTIONS_01
--[[local function ccQuestType(questLangVar)
    return QuestType:new(GetString(questLangVar), QUEST_TYPE_ENUM.MISC, {Quest:new(GetString(questLangVar))})
end

Info.CyrodilicCollectionsQuests =
    QuestSection:new(
    GetString(SI_DQT_CYRODILIC_COLLECTIONS),
    {
        ccQuestType(SI_DQT_BLACK_MARSH_CYRODILIC_COLLECTIONS_01),
        ccQuestType(SI_DQT_BLACK_MARSH_CYRODILIC_COLLECTIONS_02),
        ccQuestType(SI_DQT_BLACK_MARSH_CYRODILIC_COLLECTIONS_03),
        ccQuestType(SI_DQT_BLACK_MARSH_CYRODILIC_COLLECTIONS_04),
        ccQuestType(SI_DQT_BLACK_MARSH_CYRODILIC_COLLECTIONS_05),
        ccQuestType(SI_DQT_BLACK_MARSH_CYRODILIC_COLLECTIONS_06)
    }
)]]

--[[Info.LowerCraglorn =
    QuestSection:new(
    GetString(SI_DQT_LOWER_CRAGLORN),
    {
        -- Added by DarkPhalanx
        QuestType:new(
            GetString(SI_DQT_CRAGLORN_QUESTS_LOWER_CRAGLORN_01),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CRAGLORN_QUESTS_LOWER_CRAGLORN_01)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_CRAGLORN_QUESTS_LOWER_CRAGLORN_02),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CRAGLORN_QUESTS_LOWER_CRAGLORN_02)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_CRAGLORN_QUESTS_LOWER_CRAGLORN_03),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CRAGLORN_QUESTS_LOWER_CRAGLORN_03)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_CRAGLORN_QUESTS_LOWER_CRAGLORN_04),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CRAGLORN_QUESTS_LOWER_CRAGLORN_04)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_CRAGLORN_QUESTS_LOWER_CRAGLORN_05),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CRAGLORN_QUESTS_LOWER_CRAGLORN_05)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_CRAGLORN_QUESTS_LOWER_CRAGLORN_06),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CRAGLORN_QUESTS_LOWER_CRAGLORN_06)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_CRAGLORN_QUESTS_LOWER_CRAGLORN_07),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CRAGLORN_QUESTS_LOWER_CRAGLORN_07)
            }
        )
    }
)

Info.UpperCraglorn =
    QuestSection:new(
    GetString(SI_DQT_UPPER_CRAGLORN),
    {
        -- Added by DarkPhalanx
        QuestType:new(
            GetString(SI_DQT_CRAGLORN_QUESTS_UPPER_CRAGLORN_01),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CRAGLORN_QUESTS_UPPER_CRAGLORN_01)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_CRAGLORN_QUESTS_UPPER_CRAGLORN_02),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CRAGLORN_QUESTS_UPPER_CRAGLORN_02)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_CRAGLORN_QUESTS_UPPER_CRAGLORN_03),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CRAGLORN_QUESTS_UPPER_CRAGLORN_03)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_CRAGLORN_QUESTS_UPPER_CRAGLORN_04),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CRAGLORN_QUESTS_UPPER_CRAGLORN_04)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_CRAGLORN_QUESTS_UPPER_CRAGLORN_05),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CRAGLORN_QUESTS_UPPER_CRAGLORN_05)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_CRAGLORN_QUESTS_UPPER_CRAGLORN_06),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CRAGLORN_QUESTS_UPPER_CRAGLORN_06)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_CRAGLORN_QUESTS_UPPER_CRAGLORN_07),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CRAGLORN_QUESTS_UPPER_CRAGLORN_07)
            }
        )
    }
)]]

Info.Craglorn =
    QuestSection:new(
    GetString(SI_DQT_CRAGLORN),
    {
        QuestType:new(
            GetString(SI_DQT_GROUP_PVE),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CRAGLORN_QUESTS_LOWER_CRAGLORN_01),
                newQuest(SI_DQT_CRAGLORN_QUESTS_LOWER_CRAGLORN_02),
                newQuest(SI_DQT_CRAGLORN_QUESTS_LOWER_CRAGLORN_03),
                newQuest(SI_DQT_CRAGLORN_QUESTS_LOWER_CRAGLORN_04),
                newQuest(SI_DQT_CRAGLORN_QUESTS_LOWER_CRAGLORN_05),
                newQuest(SI_DQT_CRAGLORN_QUESTS_LOWER_CRAGLORN_06),
                newQuest(SI_DQT_CRAGLORN_QUESTS_LOWER_CRAGLORN_07),
                newQuest(SI_DQT_CRAGLORN_QUESTS_UPPER_CRAGLORN_01),
                newQuest(SI_DQT_CRAGLORN_QUESTS_UPPER_CRAGLORN_02),
                newQuest(SI_DQT_CRAGLORN_QUESTS_UPPER_CRAGLORN_03),
                newQuest(SI_DQT_CRAGLORN_QUESTS_UPPER_CRAGLORN_04),
                newQuest(SI_DQT_CRAGLORN_QUESTS_UPPER_CRAGLORN_05),
                newQuest(SI_DQT_CRAGLORN_QUESTS_UPPER_CRAGLORN_06),
                newQuest(SI_DQT_CRAGLORN_QUESTS_UPPER_CRAGLORN_07) 
            }
        )
    }
    )

Info.ClockworkCityQuests =
    QuestSection:new(
    GetString(SI_DQT_CLOCKWORK_CITY),
    {
        QuestType:new(
            GetString(SI_DQT_GROUP_BOSS),
            QUEST_TYPE_ENUM.GROUP_BOSS,
            {
                newQuest(SI_DQT_CLOCKWORK_CITY_QUESTS_BOUNTY_01, SI_DQT_CLOCKWORK_CITY_QUESTS_BOUNTY_01_DISPLAY),
                newQuest(SI_DQT_CLOCKWORK_CITY_QUESTS_BOUNTY_02, SI_DQT_CLOCKWORK_CITY_QUESTS_BOUNTY_02_DISPLAY)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_DELVE),
            QUEST_TYPE_ENUM.DELVE,
            {
                newQuest(SI_DQT_CLOCKWORK_CITY_QUESTS_EXPLORATORY_01),
                newQuest(SI_DQT_CLOCKWORK_CITY_QUESTS_EXPLORATORY_02),
                newQuest(SI_DQT_CLOCKWORK_CITY_QUESTS_EXPLORATORY_03),
                newQuest(SI_DQT_CLOCKWORK_CITY_QUESTS_EXPLORATORY_04),
                newQuest(SI_DQT_CLOCKWORK_CITY_QUESTS_EXPLORATORY_05),
                newQuest(SI_DQT_CLOCKWORK_CITY_QUESTS_EXPLORATORY_06)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_TARNISHED),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CLOCKWORK_CITY_QUESTS_TARNISHED_01),
                newQuest(SI_DQT_CLOCKWORK_CITY_QUESTS_TARNISHED_02),
                newQuest(SI_DQT_CLOCKWORK_CITY_QUESTS_TARNISHED_03),
                newQuest(SI_DQT_CLOCKWORK_CITY_QUESTS_TARNISHED_04),
                newQuest(SI_DQT_CLOCKWORK_CITY_QUESTS_TARNISHED_05),
                newQuest(SI_DQT_CLOCKWORK_CITY_QUESTS_TARNISHED_06)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_BLACKFEATHER_COURT),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CLOCKWORK_CITY_QUESTS_BLACKFEATHER_COURT_01),
                newQuest(SI_DQT_CLOCKWORK_CITY_QUESTS_BLACKFEATHER_COURT_02),
                newQuest(SI_DQT_CLOCKWORK_CITY_QUESTS_BLACKFEATHER_COURT_03),
                newQuest(SI_DQT_CLOCKWORK_CITY_QUESTS_BLACKFEATHER_COURT_04),
                newQuest(SI_DQT_CLOCKWORK_CITY_QUESTS_BLACKFEATHER_COURT_05),
                newQuest(SI_DQT_CLOCKWORK_CITY_QUESTS_BLACKFEATHER_COURT_06)
            }
        )
    }
)

Info.WrothgarQuests =
    QuestSection:new(
    GetString(SI_DQT_WROTHGAR),
    {
        QuestType:new(
            GetString(SI_DQT_GROUP_BOSS),
            QUEST_TYPE_ENUM.GROUP_BOSS,
            {
                newQuest(
                    SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_01,
                    SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_01_DISPLAY
                ),
                newQuest(
                    SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_02,
                    SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_02_DISPLAY
                ),
                newQuest(
                    SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_03,
                    SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_03_DISPLAY
                ),
                newQuest(
                    SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_04,
                    SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_04_DISPLAY
                ),
                newQuest(
                    SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_05,
                    SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_05_DISPLAY
                ),
                newQuest(
                    SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_06,
                    SI_DQT_WROTHGAR_QUESTS_GROUP_BOSS_DAILIES_06_DISPLAY
                )
            }
        ),
        QuestType:new(
            GetString(SI_DQT_DELVE),
            QUEST_TYPE_ENUM.DELVE,
            {
                newQuest(SI_DQT_WROTHGAR_QUESTS_DELVE_DAILIES_01),
                newQuest(SI_DQT_WROTHGAR_QUESTS_DELVE_DAILIES_02),
                newQuest(SI_DQT_WROTHGAR_QUESTS_DELVE_DAILIES_03),
                newQuest(SI_DQT_WROTHGAR_QUESTS_DELVE_DAILIES_04),
                newQuest(SI_DQT_WROTHGAR_QUESTS_DELVE_DAILIES_05),
                newQuest(SI_DQT_WROTHGAR_QUESTS_DELVE_DAILIES_06)
            }
        )
    }
)

-- create heist Quest object from variable like SI_DQT_THIEVES_GUILD_LARCENY_QUESTS_HEISTS_01
local function heistQuest(questLangVar)
    local questName = GetString(questLangVar)
    return Quest:new(
        questName,
        Utils:stripPrefixes(
            questName,
            {
                GetString(SI_DQT_THIEVES_GUILD_LARCENY_QUESTS_HEISTS_PREFIX_1),
                GetString(SI_DQT_THIEVES_GUILD_LARCENY_QUESTS_HEISTS_PREFIX_2)
            }
        )
    )
end

Info.ThievesGuildQuests =
    QuestSection:new(
    GetString(SI_DQT_THIEVES_GUILD),
    {
        QuestType:new(
            GetString(SI_DQT_RYES_REACQUISITIONS),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_THIEVES_GUILD_LARCENY_QUESTS_RYE_S_REACQUISITIONS_01),
                newQuest(SI_DQT_THIEVES_GUILD_LARCENY_QUESTS_RYE_S_REACQUISITIONS_02),
                newQuest(SI_DQT_THIEVES_GUILD_LARCENY_QUESTS_RYE_S_REACQUISITIONS_03),
                newQuest(SI_DQT_THIEVES_GUILD_LARCENY_QUESTS_RYE_S_REACQUISITIONS_04)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_HEIST),
            QUEST_TYPE_ENUM.MISC,
            {
                heistQuest(SI_DQT_THIEVES_GUILD_LARCENY_QUESTS_HEISTS_01),
                heistQuest(SI_DQT_THIEVES_GUILD_LARCENY_QUESTS_HEISTS_02),
                heistQuest(SI_DQT_THIEVES_GUILD_LARCENY_QUESTS_HEISTS_03),
                heistQuest(SI_DQT_THIEVES_GUILD_LARCENY_QUESTS_HEISTS_04),
                heistQuest(SI_DQT_THIEVES_GUILD_LARCENY_QUESTS_HEISTS_05)
            }
        )
    }
)

-- create sacrament Quest object from variable like SI_DQT_GOLD_COAST_QUESTS_DARK_BROTHERHOOD_SACRAMENTS_01
local function sacramentQuest(questLangVar)
    local questName = GetString(questLangVar)
    return Quest:new(
        questName,
        Utils:stripPrefixes(
            questName,
            {
                GetString(SI_DQT_GOLD_COAST_QUESTS_DARK_BROTHERHOOD_SACRAMENTS_PREFIX)
            }
        )
    )
end

Info.DarkBrotherhoodQuests =
    QuestSection:new(
    GetString(SI_DQT_DARK_BROTHERHOOD),
    {
        QuestType:new(
            GetString(SI_DQT_GOLD_COAST_BOUNTY),
            QUEST_TYPE_ENUM.GROUP_BOSS,
            {
                newQuest(SI_DQT_GOLD_COAST_QUESTS_BOUNTIES_01, SI_DQT_GOLD_COAST_QUESTS_BOUNTIES_01_DISPLAY),
                newQuest(SI_DQT_GOLD_COAST_QUESTS_BOUNTIES_02, SI_DQT_GOLD_COAST_QUESTS_BOUNTIES_02_DISPLAY),
                newQuest(SI_DQT_GOLD_COAST_QUESTS_BOUNTIES_03, SI_DQT_GOLD_COAST_QUESTS_BOUNTIES_03_DISPLAY),
                newQuest(SI_DQT_GOLD_COAST_QUESTS_BOUNTIES_04, SI_DQT_GOLD_COAST_QUESTS_BOUNTIES_04_DISPLAY)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_SACRAMENT),
            QUEST_TYPE_ENUM.MISC,
            {
                sacramentQuest(SI_DQT_GOLD_COAST_QUESTS_DARK_BROTHERHOOD_SACRAMENTS_01),
                sacramentQuest(SI_DQT_GOLD_COAST_QUESTS_DARK_BROTHERHOOD_SACRAMENTS_02),
                sacramentQuest(SI_DQT_GOLD_COAST_QUESTS_DARK_BROTHERHOOD_SACRAMENTS_03)
            }
        )
    }
)

Info.MurkmireQuests =
    QuestSection:new(
    GetString(SI_DQT_MURKMIRE),
    {
        QuestType:new(
            GetString(SI_DQT_GROUP_BOSS),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_MURKMIRE_QUESTS_BOUNTY_01),
                newQuest(SI_DQT_MURKMIRE_QUESTS_BOUNTY_02),
                newQuest(SI_DQT_MURKMIRE_QUESTS_BOUNTY_03),
                newQuest(SI_DQT_MURKMIRE_QUESTS_BOUNTY_04),
                newQuest(SI_DQT_MURKMIRE_QUESTS_BOUNTY_05),
                newQuest(SI_DQT_MURKMIRE_QUESTS_BOUNTY_06)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_DELVE),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_MURKMIRE_QUESTS_EXPLORATORY_01),
                newQuest(SI_DQT_MURKMIRE_QUESTS_EXPLORATORY_02),
                newQuest(SI_DQT_MURKMIRE_QUESTS_EXPLORATORY_03),
                newQuest(SI_DQT_MURKMIRE_QUESTS_EXPLORATORY_04),
                newQuest(SI_DQT_MURKMIRE_QUESTS_EXPLORATORY_05),
                newQuest(SI_DQT_MURKMIRE_QUESTS_EXPLORATORY_06)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_ROOT_WHISPER),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_MURKMIRE_QUESTS_ROOT_WHISPER_01),
                newQuest(SI_DQT_MURKMIRE_QUESTS_ROOT_WHISPER_02),
                newQuest(SI_DQT_MURKMIRE_QUESTS_ROOT_WHISPER_03),
                newQuest(SI_DQT_MURKMIRE_QUESTS_ROOT_WHISPER_04),
                newQuest(SI_DQT_MURKMIRE_QUESTS_ROOT_WHISPER_05)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_PROLOGUE),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_BLACK_MARSH_CYRODILIC_COLLECTIONS_01),
                newQuest(SI_DQT_BLACK_MARSH_CYRODILIC_COLLECTIONS_02),
                newQuest(SI_DQT_BLACK_MARSH_CYRODILIC_COLLECTIONS_03),
                newQuest(SI_DQT_BLACK_MARSH_CYRODILIC_COLLECTIONS_04),
                newQuest(SI_DQT_BLACK_MARSH_CYRODILIC_COLLECTIONS_05),
                newQuest(SI_DQT_BLACK_MARSH_CYRODILIC_COLLECTIONS_06)
            }
        )
    }
)

Info.ElsweyrQuests =
    QuestSection:new(
    GetString(SI_DQT_ELSWEYR),
    {
        QuestType:new(
            GetString(SI_DQT_GROUP_BOSS),
            QUEST_TYPE_ENUM.GROUP_BOSS,
            {
                newQuest(SI_DQT_ELSWEYR_QUESTS_BOUNTY_01),
                newQuest(SI_DQT_ELSWEYR_QUESTS_BOUNTY_02),
                newQuest(SI_DQT_ELSWEYR_QUESTS_BOUNTY_03),
                newQuest(SI_DQT_ELSWEYR_QUESTS_BOUNTY_04),
                newQuest(SI_DQT_ELSWEYR_QUESTS_BOUNTY_05)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_DELVE),
            QUEST_TYPE_ENUM.DELVE,
            {
                newQuest(SI_DQT_ELSWEYR_QUESTS_EXPLORATORY_01),
                newQuest(SI_DQT_ELSWEYR_QUESTS_EXPLORATORY_02),
                newQuest(SI_DQT_ELSWEYR_QUESTS_EXPLORATORY_03),
                newQuest(SI_DQT_ELSWEYR_QUESTS_EXPLORATORY_04),
                newQuest(SI_DQT_ELSWEYR_QUESTS_EXPLORATORY_05),
                newQuest(SI_DQT_ELSWEYR_QUESTS_EXPLORATORY_06)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_DRAGONHUNT),
            QUEST_TYPE_ENUM.DOLMEN,
            {
                newQuest(SI_DQT_ELSWEYR_QUESTS_DRAGONHUNT_01)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_PROLOGUE),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_01),
                newQuest(SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_02),
                newQuest(SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_03),
                newQuest(SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_04),
                newQuest(SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_05),
                newQuest(SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_06),
                newQuest(SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_07),
                newQuest(SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_08),
                newQuest(SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_09)
            }
        )
    }
)

Info.ImperialCityQuests =
    QuestSection:new(
    GetString(SI_DQT_IMPERIAL_CITY),
    {
        -- Added by DarkPhalanx
        QuestType:new(
            GetString(SI_DQT_PVP),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_IMPERIAL_CITY_IMPERIAL_CITY_QUESTS_01),
                newQuest(SI_DQT_IMPERIAL_CITY_IMPERIAL_CITY_QUESTS_02),
                newQuest(SI_DQT_IMPERIAL_CITY_IMPERIAL_CITY_QUESTS_03),
                newQuest(SI_DQT_IMPERIAL_CITY_IMPERIAL_CITY_QUESTS_04),
                newQuest(SI_DQT_IMPERIAL_CITY_IMPERIAL_CITY_QUESTS_05),
                newQuest(SI_DQT_IMPERIAL_CITY_IMPERIAL_CITY_QUESTS_06)
            }
        )
    }
)

Info.DragonHoldQuests =
    QuestSection:new(
    GetString(SI_DQT_DRAGONHOLD),
    {
        QuestType:new(
            GetString(SI_DQT_GROUP_BOSS),
            QUEST_TYPE_ENUM.GROUP_BOSS,
            {
                newQuest(SI_DQT_SOUTHERN_ELSWEYR_QUESTS_WORLDBOSS_01),
                newQuest(SI_DQT_SOUTHERN_ELSWEYR_QUESTS_WORLDBOSS_02),
                newQuest(SI_DQT_SOUTHERN_ELSWEYR_QUESTS_WORLDBOSS_03),
                newQuest(SI_DQT_SOUTHERN_ELSWEYR_QUESTS_WORLDBOSS_04),
                newQuest(SI_DQT_SOUTHERN_ELSWEYR_QUESTS_WORLDBOSS_05),
                newQuest(SI_DQT_SOUTHERN_ELSWEYR_QUESTS_WORLDBOSS_06)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_DELVE),
            QUEST_TYPE_ENUM.DELVE,
            {
                newQuest(SI_DQT_SOUTHERN_ELSWEYR_QUESTS_DELVE_01),
                newQuest(SI_DQT_SOUTHERN_ELSWEYR_QUESTS_DELVE_02),
                newQuest(SI_DQT_SOUTHERN_ELSWEYR_QUESTS_DELVE_03),
                newQuest(SI_DQT_SOUTHERN_ELSWEYR_QUESTS_DELVE_04),
                newQuest(SI_DQT_SOUTHERN_ELSWEYR_QUESTS_DELVE_05),
                newQuest(SI_DQT_SOUTHERN_ELSWEYR_QUESTS_DELVE_06)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_DRAGONHUNT),
            QUEST_TYPE_ENUM.DOLMEN,
            {
                newQuest(SI_DQT_SOUTHERN_ELSWEYR_QUESTS_DRAGONHUNT_02)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_NEW_MOON),
            QUEST_TYPE_ENUM.DOLMEN,
            {
                newQuest(SI_DQT_SOUTHERN_ELSWEYR_QUESTS_DELVE_07),
                newQuest(SI_DQT_SOUTHERN_ELSWEYR_QUESTS_DELVE_08),
                newQuest(SI_DQT_SOUTHERN_ELSWEYR_QUESTS_DELVE_09),
                newQuest(SI_DQT_SOUTHERN_ELSWEYR_QUESTS_DELVE_10),
                newQuest(SI_DQT_SOUTHERN_ELSWEYR_QUESTS_DELVE_11),
                newQuest(SI_DQT_SOUTHERN_ELSWEYR_QUESTS_DELVE_12)
            }
        )
    }
)

Info.WesternSkyrimQuests =
    QuestSection:new(
    GetString(SI_DQT_WESTERN_SKYRIM),
    {
        QuestType:new(
            GetString(SI_DQT_GROUP_BOSS),
            QUEST_TYPE_ENUM.GROUP_BOSS,
            {
                newQuest(SI_DQT_WESTERN_SKYRIM_QUESTS_WORLDBOSS_01),
                newQuest(SI_DQT_WESTERN_SKYRIM_QUESTS_WORLDBOSS_02),
                newQuest(SI_DQT_WESTERN_SKYRIM_QUESTS_WORLDBOSS_03),
                newQuest(SI_DQT_WESTERN_SKYRIM_QUESTS_WORLDBOSS_04),
                newQuest(SI_DQT_WESTERN_SKYRIM_QUESTS_WORLDBOSS_05),
                newQuest(SI_DQT_WESTERN_SKYRIM_QUESTS_WORLDBOSS_06)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_DELVE),
            QUEST_TYPE_ENUM.DELVE,
            {
                newQuest(SI_DQT_WESTERN_SKYRIM_QUESTS_DELVE_01),
                newQuest(SI_DQT_WESTERN_SKYRIM_QUESTS_DELVE_02),
                newQuest(SI_DQT_WESTERN_SKYRIM_QUESTS_DELVE_03),
                newQuest(SI_DQT_WESTERN_SKYRIM_QUESTS_DELVE_04),
                newQuest(SI_DQT_WESTERN_SKYRIM_QUESTS_DELVE_05),
                newQuest(SI_DQT_WESTERN_SKYRIM_QUESTS_DELVE_06)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_HARROWSTORM),
            QUEST_TYPE_ENUM.DOLMEN,
            {newQuest(SI_DQT_WESTERN_SKYRIM_QUESTS_HARROWSTORM_01)}
        )
    }
)

Info.ReachQuests =
    QuestSection:new(
    GetString(SI_DQT_THE_REACH),
    {
        QuestType:new(
            GetString(SI_DQT_GROUP_BOSS),
            QUEST_TYPE_ENUM.GROUP_BOSS,
            {
                newQuest(SI_DQT_THE_REACH_QUESTS_WORLDBOSS_01),
                newQuest(SI_DQT_THE_REACH_QUESTS_WORLDBOSS_02),
                newQuest(SI_DQT_THE_REACH_QUESTS_WORLDBOSS_03),
                newQuest(SI_DQT_THE_REACH_QUESTS_WORLDBOSS_04),
                newQuest(SI_DQT_THE_REACH_QUESTS_WORLDBOSS_05),
                newQuest(SI_DQT_THE_REACH_QUESTS_WORLDBOSS_06)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_DELVE),
            QUEST_TYPE_ENUM.DELVE,
            {
                newQuest(SI_DQT_THE_REACH_QUESTS_DELVE_01),
                newQuest(SI_DQT_THE_REACH_QUESTS_DELVE_02),
                newQuest(SI_DQT_THE_REACH_QUESTS_DELVE_03),
                newQuest(SI_DQT_THE_REACH_QUESTS_DELVE_04),
                newQuest(SI_DQT_THE_REACH_QUESTS_DELVE_05),
                newQuest(SI_DQT_THE_REACH_QUESTS_DELVE_06)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_RESISTANCE),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_THE_REACH_QUESTS_RESISTANCE_01),
                newQuest(SI_DQT_THE_REACH_QUESTS_RESISTANCE_02),
                newQuest(SI_DQT_THE_REACH_QUESTS_RESISTANCE_03),
                newQuest(SI_DQT_THE_REACH_QUESTS_RESISTANCE_04),
                newQuest(SI_DQT_THE_REACH_QUESTS_RESISTANCE_05),
                newQuest(SI_DQT_THE_REACH_QUESTS_RESISTANCE_06),
                newQuest(SI_DQT_THE_REACH_QUESTS_RESISTANCE_07)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_HARROWSTORM),
            QUEST_TYPE_ENUM.DOLMEN,
            {newQuest(SI_DQT_THE_REACH_QUESTS_HARROWSTORM_01)}
        )
    }
)

Info.BlackwoodQuests =
    QuestSection:new(
    GetString(SI_DQT_BLACKWOOD),
    {
        QuestType:new(
            GetString(SI_DQT_GROUP_BOSS),
            QUEST_TYPE_ENUM.GROUP_BOSS,
            {
                newQuest(SI_DQT_BLACKWOOD_QUESTS_WORLDBOSS_01),
                newQuest(SI_DQT_BLACKWOOD_QUESTS_WORLDBOSS_02),
                newQuest(SI_DQT_BLACKWOOD_QUESTS_WORLDBOSS_03),
                newQuest(SI_DQT_BLACKWOOD_QUESTS_WORLDBOSS_04),
                newQuest(SI_DQT_BLACKWOOD_QUESTS_WORLDBOSS_05),
                newQuest(SI_DQT_BLACKWOOD_QUESTS_WORLDBOSS_06)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_DELVE),
            QUEST_TYPE_ENUM.DELVE,
            {
                newQuest(SI_DQT_BLACKWOOD_QUESTS_DELVE_01),
                newQuest(SI_DQT_BLACKWOOD_QUESTS_DELVE_02),
                newQuest(SI_DQT_BLACKWOOD_QUESTS_DELVE_03),
                newQuest(SI_DQT_BLACKWOOD_QUESTS_DELVE_04),
                newQuest(SI_DQT_BLACKWOOD_QUESTS_DELVE_05),
                newQuest(SI_DQT_BLACKWOOD_QUESTS_DELVE_06)
            }
        )
    }
)

Info.DeadlandsQuests =
    QuestSection:new(
    GetString(SI_DQT_DEADLANDS),
    {
        QuestType:new(
            GetString(SI_DQT_GROUP_BOSS),
            QUEST_TYPE_ENUM.GROUP_BOSS,
            {
                newQuest(SI_DQT_DEADLANDS_QUESTS_WORLDBOSS_01),
                newQuest(SI_DQT_DEADLANDS_QUESTS_WORLDBOSS_02),
                newQuest(SI_DQT_DEADLANDS_QUESTS_WORLDBOSS_03),
                newQuest(SI_DQT_DEADLANDS_QUESTS_WORLDBOSS_04),
                newQuest(SI_DQT_DEADLANDS_QUESTS_WORLDBOSS_05),
                newQuest(SI_DQT_DEADLANDS_QUESTS_WORLDBOSS_06)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_DELVE),
            QUEST_TYPE_ENUM.DELVE,
            {
                newQuest(SI_DQT_DEADLANDS_QUESTS_DELVE_01),
                newQuest(SI_DQT_DEADLANDS_QUESTS_DELVE_02),
                newQuest(SI_DQT_DEADLANDS_QUESTS_DELVE_03),
                newQuest(SI_DQT_DEADLANDS_QUESTS_DELVE_04),
                newQuest(SI_DQT_DEADLANDS_QUESTS_DELVE_05),
                newQuest(SI_DQT_DEADLANDS_QUESTS_DELVE_06)
            }
        )
    }
)

Info.HighIsle = 
    QuestSection:new(
    GetString(SI_DQT_HIGH_ISLE),
    {
        QuestType:new(
            GetString(SI_DQT_GROUP_BOSS),
            QUEST_TYPE_ENUM.GROUP_BOSS,
            {
                newQuest(SI_DQT_HIGH_ISLE_QUESTS_WORLDBOSS_01),
                newQuest(SI_DQT_HIGH_ISLE_QUESTS_WORLDBOSS_02),
                newQuest(SI_DQT_HIGH_ISLE_QUESTS_WORLDBOSS_03),
                newQuest(SI_DQT_HIGH_ISLE_QUESTS_WORLDBOSS_04),
                newQuest(SI_DQT_HIGH_ISLE_QUESTS_WORLDBOSS_05),
                newQuest(SI_DQT_HIGH_ISLE_QUESTS_WORLDBOSS_06)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_DELVE),
            QUEST_TYPE_ENUM.DELVE,
            {
                newQuest(SI_DQT_HIGH_ISLE_QUESTS_DELVE_01),
                newQuest(SI_DQT_HIGH_ISLE_QUESTS_DELVE_02),
                newQuest(SI_DQT_HIGH_ISLE_QUESTS_DELVE_03),
                newQuest(SI_DQT_HIGH_ISLE_QUESTS_DELVE_04),
                newQuest(SI_DQT_HIGH_ISLE_QUESTS_DELVE_05),
                newQuest(SI_DQT_HIGH_ISLE_QUESTS_DELVE_06)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_VOLCANIC_VENTS),
            QUEST_TYPE_ENUM.DOLMEN,
            {
                newQuest(SI_DQT_HIGH_ISLE_QUESTS_VOLCANIC_VENTS_01)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_TALES_OF_TRIBUTE),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_TALES_OF_TRIBUTE_QUESTS_01),
                newQuest(SI_DQT_TALES_OF_TRIBUTE_QUESTS_02)
            }
        )
    }
)

Info.Galen = 
    QuestSection:new(
    GetString(SI_DQT_GALEN),
    {
        QuestType:new(
            GetString(SI_DQT_GROUP_BOSS),
            QUEST_TYPE_ENUM.GROUP_BOSS,
            {
                newQuest(SI_DQT_GALEN_QUESTS_WORLDBOSS_01),
                newQuest(SI_DQT_GALEN_QUESTS_WORLDBOSS_02),
                newQuest(SI_DQT_GALEN_QUESTS_WORLDBOSS_03),
                newQuest(SI_DQT_GALEN_QUESTS_WORLDBOSS_04),
                newQuest(SI_DQT_GALEN_QUESTS_WORLDBOSS_05),
                newQuest(SI_DQT_GALEN_QUESTS_WORLDBOSS_06)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_DELVE),
            QUEST_TYPE_ENUM.DELVE,
            {
                newQuest(SI_DQT_GALEN_QUESTS_DELVE_01),
                newQuest(SI_DQT_GALEN_QUESTS_DELVE_02),
                newQuest(SI_DQT_GALEN_QUESTS_DELVE_03),
                newQuest(SI_DQT_GALEN_QUESTS_DELVE_04),
                newQuest(SI_DQT_GALEN_QUESTS_DELVE_05),
                newQuest(SI_DQT_GALEN_QUESTS_DELVE_06)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_VOLCANIC_VENTS),
            QUEST_TYPE_ENUM.DOLMEN,
            {
                newQuest(SI_DQT_GALEN_QUESTS_VOLCANIC_VENTS_01)
            }
        )
    }
)

Info.CyrodiilSettlements =
    QuestSection:new(
    GetString(SI_DQT_CYRODIIL_PVE),
    {
        QuestType:new(
            GetString(SI_DQT_BRUMA),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_BRUMA_01),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_BRUMA_02),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_BRUMA_03),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_BRUMA_04),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_BRUMA_05),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_BRUMA_06),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_BRUMA_07),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_BRUMA_08),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_BRUMA_09),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_BRUMA_10)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_CHEYDINHAL),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CHEYDINHAL_01),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CHEYDINHAL_02),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CHEYDINHAL_03),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CHEYDINHAL_04),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CHEYDINHAL_05),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CHEYDINHAL_06),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CHEYDINHAL_07),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CHEYDINHAL_08),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CHEYDINHAL_09),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CHEYDINHAL_10)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_CHORROL),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CHORROL_AND_WEYNON_PRIORY_01),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CHORROL_AND_WEYNON_PRIORY_02),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CHORROL_AND_WEYNON_PRIORY_03),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CHORROL_AND_WEYNON_PRIORY_04),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CHORROL_AND_WEYNON_PRIORY_05),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CHORROL_AND_WEYNON_PRIORY_06),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CHORROL_AND_WEYNON_PRIORY_07),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CHORROL_AND_WEYNON_PRIORY_08),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CHORROL_AND_WEYNON_PRIORY_09),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CHORROL_AND_WEYNON_PRIORY_10)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_CROPSFORD),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CROPSFORD_01),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CROPSFORD_02),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CROPSFORD_03),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CROPSFORD_04),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CROPSFORD_05),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CROPSFORD_06),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CROPSFORD_07),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CROPSFORD_08),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_CROPSFORD_09)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_VLASTARUS),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_VLASTARUS_01),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_VLASTARUS_02),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_VLASTARUS_03),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_VLASTARUS_04),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_VLASTARUS_05),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_VLASTARUS_06),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_VLASTARUS_07),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_VLASTARUS_08),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_VLASTARUS_09),
                newQuest(SI_DQT_CYRODIIL_CYRODIIL_SETTLEMENT_QUESTS_VLASTARUS_10)
            }
        )
    }
)

Info.CyrodiilPVP =
    QuestSection:new(
    GetString(SI_DQT_CYRODIIL_PVP),
    {
        QuestType:new(
            GetString(SI_DQT_CYRODIIL_FIGHTERS_GUILD),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CYRODIIL_FIGHTERS_GUILD_BOUNTY_QUESTS_01),
                newQuest(SI_DQT_CYRODIIL_FIGHTERS_GUILD_BOUNTY_QUESTS_02),
                newQuest(SI_DQT_CYRODIIL_FIGHTERS_GUILD_BOUNTY_QUESTS_03),
                newQuest(SI_DQT_CYRODIIL_FIGHTERS_GUILD_BOUNTY_QUESTS_04)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_CYRODIIL_BATTLE_MISSIONS),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_01),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_02),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_03),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_04),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_05),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_06),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_07),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_08),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_09),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_10),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_11),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_12),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_13),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_14),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_15),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_16),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_17),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_18),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_19),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_20),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_21),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_22),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_23),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_24),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_25),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_26),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_27),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_28),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_29),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_30),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_31),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_32),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_33),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_34),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_35),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_36),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_37),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_38),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_39),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_40),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_41),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_42),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_43),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_44),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_45),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_46),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_47),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_48),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_49),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_50),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_51),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_52),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_53),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BATTLE_MISSIONS_54)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_CYRODIIL_BOUNTY_MISSIONS),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BOUNTY_MISSIONS_01),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BOUNTY_MISSIONS_02),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BOUNTY_MISSIONS_03),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BOUNTY_MISSIONS_04),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BOUNTY_MISSIONS_05),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BOUNTY_MISSIONS_06),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_BOUNTY_MISSIONS_07),
            }
        ),
        QuestType:new(
            GetString(SI_DQT_CYRODIIL_CONQUEST_MISSION),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_CONQUEST_MISSIONS_01),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_CONQUEST_MISSIONS_02),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_CONQUEST_MISSIONS_03),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_CONQUEST_MISSIONS_04)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_CYRODIIL_SCOUTING_MISSIONS),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_01),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_02),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_03),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_04),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_05),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_06),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_07),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_08),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_09),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_10),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_11),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_12),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_13),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_14),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_15),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_16),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_17),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_18),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_19),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_20),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_21),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_22),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_23),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_24),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_25),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_26),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_27),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_28),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_29),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_30),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_31),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_32),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_33),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_34),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_35),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_36),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_37),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_38),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_39),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_40),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_41),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_42),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_43),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_44),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_45),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_46),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_47),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_48),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_49),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_50),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_51),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_52),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_53),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_54),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_55),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_56),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_57),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_58),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_59),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_60),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_61),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_62),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_63),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_64),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_65),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_66),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_67),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_68),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_69),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_70),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_71),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_SCOUTING_MISSIONS_72)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_CYRODIIL_WARFRONT_MISSION),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_WARFRONT_MISSIONS_01),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_WARFRONT_MISSIONS_02),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_WARFRONT_MISSIONS_03),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_WARFRONT_MISSIONS_04),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_WARFRONT_MISSIONS_05),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_WARFRONT_MISSIONS_06),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_WARFRONT_MISSIONS_07),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_WARFRONT_MISSIONS_08),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_WARFRONT_MISSIONS_09),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_WARFRONT_MISSIONS_10),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_WARFRONT_MISSIONS_11),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_WARFRONT_MISSIONS_12)
            }
        ),
        QuestType:new(
            GetString(SI_DQT_CYRODIIL_ELDER_SCROLL),
            QUEST_TYPE_ENUM.MISC,
            {
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_ELDER_SCROLLS_MISSIONS_01),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_ELDER_SCROLLS_MISSIONS_02),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_ELDER_SCROLLS_MISSIONS_03),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_ELDER_SCROLLS_MISSIONS_04),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_ELDER_SCROLLS_MISSIONS_05),
                newQuest(SI_DQT_CYRODIIL_PVP_QUESTS_ELDER_SCROLLS_MISSIONS_06)
            }
        )
    }
)

-- create Elsweyr Prologue Quest object from variable like SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_01
--[[local function epQuestType(questLangVar, displayLangVar)
    return QuestType:new(GetString(displayLangVar), QUEST_TYPE_ENUM.MISC, {Quest:new(GetString(questLangVar))})
end--]]
--[[local function epQuestType(questLangVar)
    return QuestType:new(GetString(questLangVar), QUEST_TYPE_ENUM.MISC, {Quest:new(GetString(questLangVar))})
end

Info.ElsweyrPrologueQuests =
    QuestSection:new(
    GetString(SI_DQT_ELSWEYR_PROLOGUE),
    {
        epQuestType(SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_01, SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_01_DISPLAY),
        epQuestType(SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_02, SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_02_DISPLAY),
        epQuestType(SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_03, SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_03_DISPLAY),
        epQuestType(SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_04, SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_04_DISPLAY),
        epQuestType(SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_05, SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_05_DISPLAY),
        epQuestType(SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_06, SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_06_DISPLAY),
        epQuestType(SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_07, SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_07_DISPLAY),
        epQuestType(SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_08, SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_08_DISPLAY),
        epQuestType(SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_09, SI_DQT_NORTHERN_ELSWEYR_DEFENSE_FORCE_09_DISPLAY)
    }
)]]

Info.Necrom = 
    QuestSection:new(
    GetString(SI_DQT_NECROM),
    {
        QuestType:new(
            GetString(SI_DQT_GROUP_BOSS),
            QUEST_TYPE_ENUM.GROUP_BOSS,
            {
                newQuest(SI_DQT_NECROM_QUESTS_WORLDBOSS_01),
                newQuest(SI_DQT_NECROM_QUESTS_WORLDBOSS_02),
                newQuest(SI_DQT_NECROM_QUESTS_WORLDBOSS_03),
                newQuest(SI_DQT_NECROM_QUESTS_WORLDBOSS_04),
                newQuest(SI_DQT_NECROM_QUESTS_WORLDBOSS_05),
                newQuest(SI_DQT_NECROM_QUESTS_WORLDBOSS_06),
            }
        ),
        QuestType:new(
            GetString(SI_DQT_DELVE),
            QUEST_TYPE_ENUM.DELVE,
            {
                newQuest(SI_DQT_NECROM_QUESTS_DELVE_01),
                newQuest(SI_DQT_NECROM_QUESTS_DELVE_02),
                newQuest(SI_DQT_NECROM_QUESTS_DELVE_03),
                newQuest(SI_DQT_NECROM_QUESTS_DELVE_04),
                newQuest(SI_DQT_NECROM_QUESTS_DELVE_05),
                newQuest(SI_DQT_NECROM_QUESTS_DELVE_06),
            }
        ),
        QuestType:new(
            GetString(SI_DQT_BASTION_NYMIC),
            QUEST_TYPE_ENUM.DOLMEN,
            {
                newQuest(SI_DQT_NECROM_QUESTS_BASTION_NYMIC_01),
                newQuest(SI_DQT_NECROM_QUESTS_BASTION_NYMIC_02),
                newQuest(SI_DQT_NECROM_QUESTS_BASTION_NYMIC_03),
                newQuest(SI_DQT_NECROM_QUESTS_BASTION_NYMIC_04),
            }
        )
    }
)

Info.OtherTimerQuests =
    TimerSection:new(
    GetString(SI_DQT_OTHER_TIMERS),
    {
        TimerQuest:new(GetString(SI_DQT_RANDOM_DUNGEON), TIMER_TYPE.DUNGEON),
        TimerQuest:new(GetString(SI_DQT_RANDOM_BATTLEGROUNDS), TIMER_TYPE.BATTLEGROUNDS),
        TimerQuest:new(GetString(SI_DQT_MOUNT_TRAINING), TIMER_TYPE.MOUNT),
        TimerQuest:new(GetString(SI_DQT_BEQUEATHER), TIMER_TYPE.BEQUEATHER)
    }
)

Info.Pledges = DQT.Pledges.getPledgeSection()

Info.QuestSections = {
    Info.OtherTimerQuests,
    Info.CraftingQuests,
    Info.Pledges,
--    Info.CyrodiilSettlements,
--    Info.ImperialCityQuests,
--    Info.CyrodiilPVP,
    Info.GuildQuests,
    Info.Craglorn,
    Info.ImperialCityQuests,
    Info.WrothgarQuests,
    Info.ThievesGuildQuests,
    Info.DarkBrotherhoodQuests,
    Info.VvardenfellQuests,
    Info.ClockworkCityQuests, -- Added by DarkPhalanx
    Info.SummersetQuests,
    Info.MurkmireQuests,
    Info.ElsweyrQuests,
    Info.DragonHoldQuests, -- Added by DarkPhalanx
    Info.WesternSkyrimQuests, -- Added by DarkPhalanx
    Info.ReachQuests, -- Added by DarkPhalanx
	Info.BlackwoodQuests, -- Added by DarkPhalanx
	Info.DeadlandsQuests, -- Added by g4m3r7ag
    Info.HighIsle, -- Added by g4m3r7ag
    Info.Galen, -- Added by g4m3r7ag
    Info.Necrom, -- Added by notnear
    Info.CyrodiilSettlements, -- Added by g4m3r7ag
    Info.CyrodiilPVP, -- Added by g4m3r7ag
}
