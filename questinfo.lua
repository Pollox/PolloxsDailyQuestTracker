--[[
Quests Object
	name: name of quest category (quest section name)
	questTypes:
		name : e.g. World Boss
		quest names -> list of names of questTypes, e.g. Boss1, Boss2
--]]

local Info = {}
DQT.Info = Info
local QUEST_TYPE_ENUM = DQT.QUEST_TYPE_ENUM
local Quest = DQT.Quest
local QuestType = DQT.QuestType
local QuestSection = DQT.QuestSection
local Utils = DQT.Utils

-- helper function for Quest:new when name and display name both need to be converted with GetString
local function newQuest(siName, siDisplayName)
	return Quest:new(GetString(siName), siDisplayName and GetString(siDisplayName) or nil)
end

Info.CraftingQuests = QuestSection:new(GetString(SI_DQT_CRAFTING), {
	QuestType:new(
		GetString(SI_DQT_CLOTHING),
		QUEST_TYPE_ENUM.MISC,
		{newQuest(SI_DQT_CLOTHIER_WRIT)}),
	QuestType:new(
		GetString(SI_DQT_BLACKSMITHING),
		QUEST_TYPE_ENUM.MISC,
		{newQuest(SI_DQT_BLACKSMITH_WRIT)}),
	QuestType:new(
		GetString(SI_DQT_WOODWORKING),
		QUEST_TYPE_ENUM.MISC,
		{newQuest(SI_DQT_WOODWORKER_WRIT)}),
	QuestType:new(
		GetString(SI_DQT_JEWELRY),
		QUEST_TYPE_ENUM.MISC,
		{newQuest(SI_DQT_JEWELRY_WRIT)}),
	QuestType:new(
		GetString(SI_DQT_ALCHEMY),
		QUEST_TYPE_ENUM.MISC,
		{newQuest(SI_DQT_ALCHEMIST_WRIT)}),
	QuestType:new(
		GetString(SI_DQT_ENCHANTING),
		QUEST_TYPE_ENUM.MISC,
		{newQuest(SI_DQT_ENCHANTER_WRIT)}),
	QuestType:new(
		GetString(SI_DQT_PROVISIONING),
		QUEST_TYPE_ENUM.MISC,
		{newQuest(SI_DQT_PROVISIONER_WRIT)})
})

Info.SummersetQuests = QuestSection:new(GetString(SI_DQT_SUMMERSET), {
	QuestType:new(
		GetString(SI_DQT_GROUP_BOSS),
		QUEST_TYPE_ENUM.GROUP_BOSS,
		{
			newQuest(SI_DQT_SUMMERSET_BOUNTY_1, SI_DQT_SUMMERSET_BOUNTY_1_DISPLAY),
			newQuest(SI_DQT_SUMMERSET_BOUNTY_2, SI_DQT_SUMMERSET_BOUNTY_2_DISPLAY),
			newQuest(SI_DQT_SUMMERSET_BOUNTY_3, SI_DQT_SUMMERSET_BOUNTY_3_DISPLAY),
			newQuest(SI_DQT_SUMMERSET_BOUNTY_4, SI_DQT_SUMMERSET_BOUNTY_4_DISPLAY),
			newQuest(SI_DQT_SUMMERSET_BOUNTY_5, SI_DQT_SUMMERSET_BOUNTY_5_DISPLAY),
			newQuest(SI_DQT_SUMMERSET_BOUNTY_6, SI_DQT_SUMMERSET_BOUNTY_6_DISPLAY)}),
	QuestType:new(
		GetString(SI_DQT_DELVE),
		QUEST_TYPE_ENUM.DELVE,
		{
			newQuest(SI_DQT_SUMMERSET_EXPLORATORY_1),
			newQuest(SI_DQT_SUMMERSET_EXPLORATORY_2),
			newQuest(SI_DQT_SUMMERSET_EXPLORATORY_3),
			newQuest(SI_DQT_SUMMERSET_EXPLORATORY_4),
			newQuest(SI_DQT_SUMMERSET_EXPLORATORY_5),
			newQuest(SI_DQT_SUMMERSET_EXPLORATORY_6)}),
	QuestType:new(
		GetString(SI_DQT_GEYSERS),
		QUEST_TYPE_ENUM.DOLMEN,
		{newQuest(SI_DQT_SUMMERSET_GEYSER)})
})

-- create Vvardenfell relic Quest object from variable like SI_DQT_VVARDENFELL_RELICS_1
local function relicsQuest(questLangVar)
	local questName = GetString(questLangVar)
	return Quest:new(questName,
		Utils:stripPrefixes(questName, {
			GetString(SI_DQT_VVARDENFELL_RELICS_PREFIX_1),
			GetString(SI_DQT_VVARDENFELL_RELICS_PREFIX_2)
	}))
end

Info.VvardenfellQuests = QuestSection:new(GetString(SI_DQT_VVARDENFELL), {
	QuestType:new(
		GetString(SI_DQT_GROUP_BOSS),
		QUEST_TYPE_ENUM.GROUP_BOSS,
		{
			newQuest(SI_DQT_VVARDENFELL_BOUNTY_1, SI_DQT_VVARDENFELL_BOUNTY_1_DISPLAY),
			newQuest(SI_DQT_VVARDENFELL_BOUNTY_2, SI_DQT_VVARDENFELL_BOUNTY_2_DISPLAY),
			newQuest(SI_DQT_VVARDENFELL_BOUNTY_3, SI_DQT_VVARDENFELL_BOUNTY_3_DISPLAY),
			newQuest(SI_DQT_VVARDENFELL_BOUNTY_4, SI_DQT_VVARDENFELL_BOUNTY_4_DISPLAY),
			newQuest(SI_DQT_VVARDENFELL_BOUNTY_5, SI_DQT_VVARDENFELL_BOUNTY_5_DISPLAY),
			newQuest(SI_DQT_VVARDENFELL_BOUNTY_6, SI_DQT_VVARDENFELL_BOUNTY_6_DISPLAY)}),
	QuestType:new(
		GetString(SI_DQT_DELVE),
		QUEST_TYPE_ENUM.DELVE,
		{
			newQuest(SI_DQT_VVARDENFELL_EXPLORATORY_1),
			newQuest(SI_DQT_VVARDENFELL_EXPLORATORY_2),
			newQuest(SI_DQT_VVARDENFELL_EXPLORATORY_3),
			newQuest(SI_DQT_VVARDENFELL_EXPLORATORY_4),
			newQuest(SI_DQT_VVARDENFELL_EXPLORATORY_5),
			newQuest(SI_DQT_VVARDENFELL_EXPLORATORY_6)}),
	QuestType:new(
		GetString(SI_DQT_ASHLANDER_HUNT),
		QUEST_TYPE_ENUM.MISC,
		{
			newQuest(SI_DQT_VVARDENFELL_HUNT_1),
			newQuest(SI_DQT_VVARDENFELL_HUNT_2),
			newQuest(SI_DQT_VVARDENFELL_HUNT_3),
			newQuest(SI_DQT_VVARDENFELL_HUNT_4),
			newQuest(SI_DQT_VVARDENFELL_HUNT_5),
			newQuest(SI_DQT_VVARDENFELL_HUNT_6),
			newQuest(SI_DQT_VVARDENFELL_HUNT_7)}),
	QuestType:new(
		GetString(SI_DQT_ASHLANDER_RELIC),
		QUEST_TYPE_ENUM.MISC,
		{
			relicsQuest(SI_DQT_VVARDENFELL_RELICS_1),
			relicsQuest(SI_DQT_VVARDENFELL_RELICS_2),
			relicsQuest(SI_DQT_VVARDENFELL_RELICS_3),
			relicsQuest(SI_DQT_VVARDENFELL_RELICS_4),
			relicsQuest(SI_DQT_VVARDENFELL_RELICS_5),
			relicsQuest(SI_DQT_VVARDENFELL_RELICS_6),
			relicsQuest(SI_DQT_VVARDENFELL_RELICS_7)})
})

-- create fighters guild Quest object from variable like SI_DQT_FIGHTERS_GUILD_1
local function fightersQuest(questLangVar)
	local questName = GetString(questLangVar)
	return Quest:new(questName,
		Utils:stripPrefixes(questName, {
			GetString(SI_DQT_FIGHTERS_GUILD_PREFIX_1),
			GetString(SI_DQT_FIGHTERS_GUILD_PREFIX_2),
			GetString(SI_DQT_FIGHTERS_GUILD_PREFIX_3),
			GetString(SI_DQT_FIGHTERS_GUILD_PREFIX_4)
	}))
end

-- create mages guild Quest object from variable like SI_DQT_MAGES_GUILD_1
local function magesQuest(questLangVar)
	local questName = GetString(questLangVar)
	return Quest:new(questName,
		Utils:stripPrefixes(questName, {
			GetString(SI_DQT_MAGES_GUILD_PREFIX_1),
			GetString(SI_DQT_MAGES_GUILD_PREFIX_2),
			GetString(SI_DQT_MAGES_GUILD_PREFIX_3),
			GetString(SI_DQT_MAGES_GUILD_PREFIX_4)
	}))
end

Info.GuildQuests = QuestSection:new(GetString(SI_DQT_GUILD), {
	QuestType:new(
		GetString(SI_DQT_FIGHTERS_GUILD),
		QUEST_TYPE_ENUM.DOLMEN,
		{
			fightersQuest(SI_DQT_FIGHTERS_GUILD_1),
			fightersQuest(SI_DQT_FIGHTERS_GUILD_2),
			fightersQuest(SI_DQT_FIGHTERS_GUILD_3),
			fightersQuest(SI_DQT_FIGHTERS_GUILD_4),
			fightersQuest(SI_DQT_FIGHTERS_GUILD_5),
			fightersQuest(SI_DQT_FIGHTERS_GUILD_6),
			fightersQuest(SI_DQT_FIGHTERS_GUILD_7),
			fightersQuest(SI_DQT_FIGHTERS_GUILD_8),
			fightersQuest(SI_DQT_FIGHTERS_GUILD_9),
			fightersQuest(SI_DQT_FIGHTERS_GUILD_10),
			fightersQuest(SI_DQT_FIGHTERS_GUILD_11),
			fightersQuest(SI_DQT_FIGHTERS_GUILD_12),
			fightersQuest(SI_DQT_FIGHTERS_GUILD_13),
			fightersQuest(SI_DQT_FIGHTERS_GUILD_14),
			fightersQuest(SI_DQT_FIGHTERS_GUILD_15)}),
	QuestType:new(
		GetString(SI_DQT_MAGES_GUILD),
		QUEST_TYPE_ENUM.DELVE,
		{
			magesQuest(SI_DQT_MAGES_GUILD_1),
			magesQuest(SI_DQT_MAGES_GUILD_2),
			magesQuest(SI_DQT_MAGES_GUILD_3),
			magesQuest(SI_DQT_MAGES_GUILD_4),
			magesQuest(SI_DQT_MAGES_GUILD_5),
			magesQuest(SI_DQT_MAGES_GUILD_6),
			magesQuest(SI_DQT_MAGES_GUILD_7),
			magesQuest(SI_DQT_MAGES_GUILD_8),
			magesQuest(SI_DQT_MAGES_GUILD_9),
			magesQuest(SI_DQT_MAGES_GUILD_10),
			magesQuest(SI_DQT_MAGES_GUILD_11),
			magesQuest(SI_DQT_MAGES_GUILD_12),
			magesQuest(SI_DQT_MAGES_GUILD_13),
			magesQuest(SI_DQT_MAGES_GUILD_14),
			magesQuest(SI_DQT_MAGES_GUILD_15)}),
	QuestType:new(
		GetString(SI_DQT_UNDAUNTED_DELVE),
		QUEST_TYPE_ENUM.MISC,
		{
			newQuest(SI_DQT_UNDAUNTED_DELVE_1),
			newQuest(SI_DQT_UNDAUNTED_DELVE_2),
			newQuest(SI_DQT_UNDAUNTED_DELVE_3),
			newQuest(SI_DQT_UNDAUNTED_DELVE_4),
			newQuest(SI_DQT_UNDAUNTED_DELVE_5),
			newQuest(SI_DQT_UNDAUNTED_DELVE_6),
			newQuest(SI_DQT_UNDAUNTED_DELVE_7),
			newQuest(SI_DQT_UNDAUNTED_DELVE_8),
			newQuest(SI_DQT_UNDAUNTED_DELVE_9),
			newQuest(SI_DQT_UNDAUNTED_DELVE_10),
			newQuest(SI_DQT_UNDAUNTED_DELVE_11),
			newQuest(SI_DQT_UNDAUNTED_DELVE_12),
			newQuest(SI_DQT_UNDAUNTED_DELVE_13),
			newQuest(SI_DQT_UNDAUNTED_DELVE_14),
			newQuest(SI_DQT_UNDAUNTED_DELVE_15)})
})

-- create Cyrodilic Collections Quest object from variable like SI_DQT_CYRODILIC_COLLECTIONS_1
local function ccQuestType(questLangVar)
	return QuestType:new(GetString(questLangVar),
		QUEST_TYPE_ENUM.MISC,
		{Quest:new(GetString(questLangVar))})
end

Info.CyrodilicCollectionsQuests = QuestSection:new(GetString(SI_DQT_CYRODILIC_COLLECTIONS), {
	ccQuestType(SI_DQT_CYRODILIC_COLLECTIONS_1),
	ccQuestType(SI_DQT_CYRODILIC_COLLECTIONS_2),
	ccQuestType(SI_DQT_CYRODILIC_COLLECTIONS_3),
	ccQuestType(SI_DQT_CYRODILIC_COLLECTIONS_4),
	ccQuestType(SI_DQT_CYRODILIC_COLLECTIONS_5),
	ccQuestType(SI_DQT_CYRODILIC_COLLECTIONS_6)
})

Info.ClockworkCityQuests = QuestSection:new(GetString(SI_DQT_CLOCKWORK_CITY), {
	QuestType:new(
		GetString(SI_DQT_GROUP_BOSS),
		QUEST_TYPE_ENUM.GROUP_BOSS,
		{
			newQuest(SI_DQT_CWC_BOUNTY_1, SI_DQT_CWC_BOUNTY_1_DISPLAY),
			newQuest(SI_DQT_CWC_BOUNTY_2, SI_DQT_CWC_BOUNTY_2_DISPLAY)}),
	QuestType:new(
		GetString(SI_DQT_DELVE),
		QUEST_TYPE_ENUM.DELVE,
		{
			newQuest(SI_DQT_CWC_EXPLORATORY_1),
			newQuest(SI_DQT_CWC_EXPLORATORY_2),
			newQuest(SI_DQT_CWC_EXPLORATORY_3),
			newQuest(SI_DQT_CWC_EXPLORATORY_4),
			newQuest(SI_DQT_CWC_EXPLORATORY_5),
			newQuest(SI_DQT_CWC_EXPLORATORY_6)}),
	QuestType:new(
		GetString(SI_DQT_TARNISHED),
		QUEST_TYPE_ENUM.MISC,
		{
			newQuest(SI_DQT_CWC_TARNISHED_1),
			newQuest(SI_DQT_CWC_TARNISHED_2),
			newQuest(SI_DQT_CWC_TARNISHED_3),
			newQuest(SI_DQT_CWC_TARNISHED_4),
			newQuest(SI_DQT_CWC_TARNISHED_5),
			newQuest(SI_DQT_CWC_TARNISHED_6)}),
	QuestType:new(
		GetString(SI_DQT_BLACKFEATHER_COURT),
		QUEST_TYPE_ENUM.MISC,
		{
			newQuest(SI_DQT_CWC_BLACKFEATHER_1),
			newQuest(SI_DQT_CWC_BLACKFEATHER_2),
			newQuest(SI_DQT_CWC_BLACKFEATHER_3),
			newQuest(SI_DQT_CWC_BLACKFEATHER_4),
			newQuest(SI_DQT_CWC_BLACKFEATHER_5),
			newQuest(SI_DQT_CWC_BLACKFEATHER_6)}),
})

Info.WrothgarQuests = QuestSection:new(GetString(SI_DQT_WROTHGAR), {
	QuestType:new(
		GetString(SI_DQT_GROUP_BOSS),
		QUEST_TYPE_ENUM.GROUP_BOSS,
		{
			newQuest(SI_DQT_WROTHGAR_GROUP_BOSS_1, SI_DQT_WROTHGAR_GROUP_BOSS_1_DISPLAY),
			newQuest(SI_DQT_WROTHGAR_GROUP_BOSS_2, SI_DQT_WROTHGAR_GROUP_BOSS_2_DISPLAY),
			newQuest(SI_DQT_WROTHGAR_GROUP_BOSS_3, SI_DQT_WROTHGAR_GROUP_BOSS_3_DISPLAY),
			newQuest(SI_DQT_WROTHGAR_GROUP_BOSS_4, SI_DQT_WROTHGAR_GROUP_BOSS_4_DISPLAY),
			newQuest(SI_DQT_WROTHGAR_GROUP_BOSS_5, SI_DQT_WROTHGAR_GROUP_BOSS_5_DISPLAY),
			newQuest(SI_DQT_WROTHGAR_GROUP_BOSS_6, SI_DQT_WROTHGAR_GROUP_BOSS_6_DISPLAY)}),
	QuestType:new(
		GetString(SI_DQT_DELVE),
		QUEST_TYPE_ENUM.DELVE,
		{
			newQuest(SI_DQT_WROTHGAR_DELVE_1),
			newQuest(SI_DQT_WROTHGAR_DELVE_2),
			newQuest(SI_DQT_WROTHGAR_DELVE_3),
			newQuest(SI_DQT_WROTHGAR_DELVE_4),
			newQuest(SI_DQT_WROTHGAR_DELVE_5),
			newQuest(SI_DQT_WROTHGAR_DELVE_6)})
})

-- create heist Quest object from variable like SI_DQT_HEIST_1
local function heistQuest(questLangVar)
	local questName = GetString(questLangVar)
	return Quest:new(questName,
		Utils:stripPrefixes(questName, {
			GetString(SI_DQT_HEIST_PREFIX_1),
			GetString(SI_DQT_HEIST_PREFIX_2)
	}))
end

Info.ThievesGuildQuests = QuestSection:new(GetString(SI_DQT_THIEVES_GUILD), {
	QuestType:new(
		GetString(SI_DQT_RYES_REACQUISITIONS),
		QUEST_TYPE_ENUM.MISC,
		{
			newQuest(SI_DQT_RYES_REACQUISITIONS_1),
			newQuest(SI_DQT_RYES_REACQUISITIONS_2),
			newQuest(SI_DQT_RYES_REACQUISITIONS_3),
			newQuest(SI_DQT_RYES_REACQUISITIONS_4)}),
	QuestType:new(
		GetString(SI_DQT_HEIST),
		QUEST_TYPE_ENUM.MISC,
		{
			heistQuest(SI_DQT_HEIST_1),
			heistQuest(SI_DQT_HEIST_2),
			heistQuest(SI_DQT_HEIST_3),
			heistQuest(SI_DQT_HEIST_4),
			heistQuest(SI_DQT_HEIST_5)})
})

-- create sacrament Quest object from variable like SI_DQT_SACRAMENT_1
local function sacramentQuest(questLangVar)
	local questName = GetString(questLangVar)
	return Quest:new(questName,
		Utils:stripPrefixes(questName, {
			GetString(SI_DQT_SACRAMENT_PREFIX),
	}))
end

Info.DarkBrotherhoodQuests = QuestSection:new(GetString(SI_DQT_DARK_BROTHERHOOD), {
	QuestType:new(
		GetString(SI_DQT_GOLD_COAST_BOUNTY),
		QUEST_TYPE_ENUM.GROUP_BOSS,
		{
			newQuest(SI_DQT_GOLD_COAST_BOUNTY_1, SI_DQT_GOLD_COAST_BOUNTY_1_DISPLAY),
			newQuest(SI_DQT_GOLD_COAST_BOUNTY_2, SI_DQT_GOLD_COAST_BOUNTY_2_DISPLAY),
			newQuest(SI_DQT_GOLD_COAST_BOUNTY_3, SI_DQT_GOLD_COAST_BOUNTY_3_DISPLAY),
			newQuest(SI_DQT_GOLD_COAST_BOUNTY_4, SI_DQT_GOLD_COAST_BOUNTY_4_DISPLAY)}),
	QuestType:new(
		GetString(SI_DQT_SACRAMENT),
		QUEST_TYPE_ENUM.MISC,
		{
			sacramentQuest(SI_DQT_SACRAMENT_1),
			sacramentQuest(SI_DQT_SACRAMENT_2),
			sacramentQuest(SI_DQT_SACRAMENT_3)})
})

Info.Pledges = DQT.Pledges.getPledgeSection()

Info.QuestSections = {
	Info.CraftingQuests,
	Info.Pledges,
	Info.SummersetQuests,
	Info.VvardenfellQuests,
	Info.CyrodilicCollectionsQuests,
	Info.GuildQuests,
	Info.ClockworkCityQuests,
	Info.WrothgarQuests,
	Info.ThievesGuildQuests,
	Info.DarkBrotherhoodQuests
}