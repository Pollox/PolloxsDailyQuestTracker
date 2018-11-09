DQTInfo = {}

--[[
Quests Object
	name: name of quest category
	quests:
		quest type -> list of names of quests
--]]

DQTInfo.CraftingQuests = {
	name=GetString(SI_DQT_CRAFTING),
	quests={
		[GetString(SI_DQT_CLOTHING)] = {GetString(SI_DQT_CLOTHIER_WRIT)},
		[GetString(SI_DQT_BLACKSMITHING)] = {GetString(SI_DQT_BLACKSMITH_WRIT)},
		[GetString(SI_DQT_WOODWORKING)] = {GetString(SI_DQT_WOODWORKER_WRIT)},
		[GetString(SI_DQT_JEWELRY)] = {GetString(SI_DQT_JEWELRY_WRIT)},
		[GetString(SI_DQT_ALCHEMY)] = {GetString(SI_DQT_ALCHEMIST_WRIT)},
		[GetString(SI_DQT_ENCHANTING)] = {GetString(SI_DQT_ENCHANTER_WRIT)},
		[GetString(SI_DQT_PROVISIONING)] = {GetString(SI_DQT_PROVISIONER_WRIT)}
	}
}

DQTInfo.SummersetQuests = {
	name=GetString(SI_DQT_SUMMERSET),
	quests={
		[GetString(SI_DQT_GROUP_BOSS)] = {
			GetString(SI_DQT_SUMMERSET_BOUNTY_1),
			GetString(SI_DQT_SUMMERSET_BOUNTY_2),
			GetString(SI_DQT_SUMMERSET_BOUNTY_3),
			GetString(SI_DQT_SUMMERSET_BOUNTY_4),
			GetString(SI_DQT_SUMMERSET_BOUNTY_5),
			GetString(SI_DQT_SUMMERSET_BOUNTY_6)
		},
		[GetString(SI_DQT_DELVE)] = {
			GetString(SI_DQT_SUMMERSET_EXPLORATORY_1),
			GetString(SI_DQT_SUMMERSET_EXPLORATORY_2),
			GetString(SI_DQT_SUMMERSET_EXPLORATORY_3),
			GetString(SI_DQT_SUMMERSET_EXPLORATORY_4),
			GetString(SI_DQT_SUMMERSET_EXPLORATORY_5),
			GetString(SI_DQT_SUMMERSET_EXPLORATORY_6)
		},
		[GetString(SI_DQT_GEYSERS)] = {
			GetString(SI_DQT_SUMMERSET_GEYSER)
		}
	}
}

DQTInfo.VvardenfellQuests = {
	name=GetString(SI_DQT_VVARDENFELL),
	quests={
		[GetString(SI_DQT_GROUP_BOSS)] = {
			GetString(SI_DQT_VVARDENFELL_BOUNTY_1),
			GetString(SI_DQT_VVARDENFELL_BOUNTY_2),
			GetString(SI_DQT_VVARDENFELL_BOUNTY_3),
			GetString(SI_DQT_VVARDENFELL_BOUNTY_4),
			GetString(SI_DQT_VVARDENFELL_BOUNTY_5),
			GetString(SI_DQT_VVARDENFELL_BOUNTY_6)
		},
		[GetString(SI_DQT_DELVE)] = {
			GetString(SI_DQT_VVARDENFELL_EXPLORATORY_1),
			GetString(SI_DQT_VVARDENFELL_EXPLORATORY_2),
			GetString(SI_DQT_VVARDENFELL_EXPLORATORY_3),
			GetString(SI_DQT_VVARDENFELL_EXPLORATORY_4),
			GetString(SI_DQT_VVARDENFELL_EXPLORATORY_5),
			GetString(SI_DQT_VVARDENFELL_EXPLORATORY_6)
		},
		[GetString(SI_DQT_ASHLANDER_HUNT)] = {
			GetString(SI_DQT_VVARDENFELL_HUNT_1),
			GetString(SI_DQT_VVARDENFELL_HUNT_2),
			GetString(SI_DQT_VVARDENFELL_HUNT_3),
			GetString(SI_DQT_VVARDENFELL_HUNT_4),
			GetString(SI_DQT_VVARDENFELL_HUNT_5),
			GetString(SI_DQT_VVARDENFELL_HUNT_6),
			GetString(SI_DQT_VVARDENFELL_HUNT_7)
		},
		[GetString(SI_DQT_ASHLANDER_RELIC)] = {
			GetString(SI_DQT_VVARDENFELL_RELICS_1),
			GetString(SI_DQT_VVARDENFELL_RELICS_2),
			GetString(SI_DQT_VVARDENFELL_RELICS_3),
			GetString(SI_DQT_VVARDENFELL_RELICS_4),
			GetString(SI_DQT_VVARDENFELL_RELICS_5),
			GetString(SI_DQT_VVARDENFELL_RELICS_6),
			GetString(SI_DQT_VVARDENFELL_RELICS_7)
		}
	}
}

DQTInfo.GuildQuests = {
	name=GetString(SI_DQT_GUILD),
	quests={
		[GetString(SI_DQT_FIGHTERS_GUILD)] = {
			GetString(SI_DQT_FIGHTERS_GUILD_1),
			GetString(SI_DQT_FIGHTERS_GUILD_2),
			GetString(SI_DQT_FIGHTERS_GUILD_3),
			GetString(SI_DQT_FIGHTERS_GUILD_4),
			GetString(SI_DQT_FIGHTERS_GUILD_5),
			GetString(SI_DQT_FIGHTERS_GUILD_6),
			GetString(SI_DQT_FIGHTERS_GUILD_7),
			GetString(SI_DQT_FIGHTERS_GUILD_8),
			GetString(SI_DQT_FIGHTERS_GUILD_9),
			GetString(SI_DQT_FIGHTERS_GUILD_10),
			GetString(SI_DQT_FIGHTERS_GUILD_11),
			GetString(SI_DQT_FIGHTERS_GUILD_12),
			GetString(SI_DQT_FIGHTERS_GUILD_13),
			GetString(SI_DQT_FIGHTERS_GUILD_14),
			GetString(SI_DQT_FIGHTERS_GUILD_15)
		},
		[GetString(SI_DQT_MAGES_GUILD)] = {
			GetString(SI_DQT_MAGES_GUILD_1),
			GetString(SI_DQT_MAGES_GUILD_2),
			GetString(SI_DQT_MAGES_GUILD_3),
			GetString(SI_DQT_MAGES_GUILD_4),
			GetString(SI_DQT_MAGES_GUILD_5),
			GetString(SI_DQT_MAGES_GUILD_6),
			GetString(SI_DQT_MAGES_GUILD_7),
			GetString(SI_DQT_MAGES_GUILD_8),
			GetString(SI_DQT_MAGES_GUILD_9),
			GetString(SI_DQT_MAGES_GUILD_10),
			GetString(SI_DQT_MAGES_GUILD_11),
			GetString(SI_DQT_MAGES_GUILD_12),
			GetString(SI_DQT_MAGES_GUILD_13),
			GetString(SI_DQT_MAGES_GUILD_14),
			GetString(SI_DQT_MAGES_GUILD_15)
		},
		[GetString(SI_DQT_UNDAUNTED_DELVE)] = {
			GetString(SI_DQT_UNDAUNTED_DELVE_1),
			GetString(SI_DQT_UNDAUNTED_DELVE_2),
			GetString(SI_DQT_UNDAUNTED_DELVE_3),
			GetString(SI_DQT_UNDAUNTED_DELVE_4),
			GetString(SI_DQT_UNDAUNTED_DELVE_5),
			GetString(SI_DQT_UNDAUNTED_DELVE_6),
			GetString(SI_DQT_UNDAUNTED_DELVE_7),
			GetString(SI_DQT_UNDAUNTED_DELVE_8),
			GetString(SI_DQT_UNDAUNTED_DELVE_9),
			GetString(SI_DQT_UNDAUNTED_DELVE_10),
			GetString(SI_DQT_UNDAUNTED_DELVE_11),
			GetString(SI_DQT_UNDAUNTED_DELVE_12),
			GetString(SI_DQT_UNDAUNTED_DELVE_13),
			GetString(SI_DQT_UNDAUNTED_DELVE_14),
			GetString(SI_DQT_UNDAUNTED_DELVE_15)
		}
	}
}

DQTInfo.CyrodilicCollectionsQuests = {
	name=GetString(SI_DQT_CYRODILIC_COLLECTIONS),
	quests={
		[GetString(SI_DQT_CYRODILIC_COLLECTIONS_1)] = {GetString(SI_DQT_CYRODILIC_COLLECTIONS_1)},
		[GetString(SI_DQT_CYRODILIC_COLLECTIONS_2)] = {GetString(SI_DQT_CYRODILIC_COLLECTIONS_2)},
		[GetString(SI_DQT_CYRODILIC_COLLECTIONS_3)] = {GetString(SI_DQT_CYRODILIC_COLLECTIONS_3)},
		[GetString(SI_DQT_CYRODILIC_COLLECTIONS_4)] = {GetString(SI_DQT_CYRODILIC_COLLECTIONS_4)},
		[GetString(SI_DQT_CYRODILIC_COLLECTIONS_5)] = {GetString(SI_DQT_CYRODILIC_COLLECTIONS_5)},
		[GetString(SI_DQT_CYRODILIC_COLLECTIONS_6)] = {GetString(SI_DQT_CYRODILIC_COLLECTIONS_6)}
	}
}

DQTInfo.ClockworkCityQuests = {
	name=GetString(SI_DQT_CLOCKWORK_CITY),
	quests={
		[GetString(SI_DQT_GROUP_BOSS)] = {
			GetString(SI_DQT_CWC_BOUNTY_1),
			GetString(SI_DQT_CWC_BOUNTY_2)
		},
		[GetString(SI_DQT_DELVE)] = {
			GetString(SI_DQT_CWC_EXPLORATORY_1),
			GetString(SI_DQT_CWC_EXPLORATORY_2),
			GetString(SI_DQT_CWC_EXPLORATORY_3),
			GetString(SI_DQT_CWC_EXPLORATORY_4),
			GetString(SI_DQT_CWC_EXPLORATORY_5),
			GetString(SI_DQT_CWC_EXPLORATORY_6)
		},
		[GetString(SI_DQT_TARNISHED)] = {
			GetString(SI_DQT_CWC_TARNISHED_1),
			GetString(SI_DQT_CWC_TARNISHED_2),
			GetString(SI_DQT_CWC_TARNISHED_3),
			GetString(SI_DQT_CWC_TARNISHED_4),
			GetString(SI_DQT_CWC_TARNISHED_5),
			GetString(SI_DQT_CWC_TARNISHED_6)
		},
		[GetString(SI_DQT_BLACKFEATHER_COURT)] = {
			GetString(SI_DQT_CWC_BLACKFEATHER_1),
			GetString(SI_DQT_CWC_BLACKFEATHER_2),
			GetString(SI_DQT_CWC_BLACKFEATHER_3),
			GetString(SI_DQT_CWC_BLACKFEATHER_4),
			GetString(SI_DQT_CWC_BLACKFEATHER_5),
			GetString(SI_DQT_CWC_BLACKFEATHER_6)
		}
	}
}

DQTInfo.WrothgarQuests = {
	name=GetString(SI_DQT_WROTHGAR),
	quests = {
		[GetString(SI_DQT_GROUP_BOSS)] = {
			GetString(SI_DQT_WROTHGAR_GROUP_BOSS_1),
			GetString(SI_DQT_WROTHGAR_GROUP_BOSS_2),
			GetString(SI_DQT_WROTHGAR_GROUP_BOSS_3),
			GetString(SI_DQT_WROTHGAR_GROUP_BOSS_4),
			GetString(SI_DQT_WROTHGAR_GROUP_BOSS_5),
			GetString(SI_DQT_WROTHGAR_GROUP_BOSS_6)
		},
		[GetString(SI_DQT_DELVE)] = {
			GetString(SI_DQT_WROTHGAR_DELVE_1),
			GetString(SI_DQT_WROTHGAR_DELVE_2),
			GetString(SI_DQT_WROTHGAR_DELVE_3),
			GetString(SI_DQT_WROTHGAR_DELVE_4),
			GetString(SI_DQT_WROTHGAR_DELVE_5),
			GetString(SI_DQT_WROTHGAR_DELVE_6)
		}
	}
}

DQTInfo.ThievesGuildQuests = {
	name=GetString(SI_DQT_THIEVES_GUILD),
	quests={
		[GetString(SI_DQT_RYES_REACQUISITIONS)] = {
			GetString(SI_DQT_RYES_REACQUISITIONS_1),
			GetString(SI_DQT_RYES_REACQUISITIONS_2),
			GetString(SI_DQT_RYES_REACQUISITIONS_3),
			GetString(SI_DQT_RYES_REACQUISITIONS_4)
		},
		[GetString(SI_DQT_HEIST)] = {
			GetString(SI_DQT_HEIST_1),
			GetString(SI_DQT_HEIST_2),
			GetString(SI_DQT_HEIST_3),
			GetString(SI_DQT_HEIST_4),
			GetString(SI_DQT_HEIST_5)
		}
	}
}

DQTInfo.DarkBrotherhoodQuests = {
	name=GetString(SI_DQT_DARK_BROTHERHOOD),
	quests={
		[GetString(SI_DQT_GOLD_COAST_BOUNTY)] = {
			GetString(SI_DQT_GOLD_COAST_BOUNTY_1),
			GetString(SI_DQT_GOLD_COAST_BOUNTY_2),
			GetString(SI_DQT_GOLD_COAST_BOUNTY_3),
			GetString(SI_DQT_GOLD_COAST_BOUNTY_4)
		},
		[GetString(SI_DQT_SACRAMENT)] = {
			GetString(SI_DQT_SACRAMENT_1),
			GetString(SI_DQT_SACRAMENT_2),
			GetString(SI_DQT_SACRAMENT_3)
		}
	}
}

DQTInfo.Quests = {
	DQTInfo.CraftingQuests,
	DQTInfo.SummersetQuests,
	DQTInfo.VvardenfellQuests,
	DQTInfo.CyrodilicCollectionsQuests,
	DQTInfo.GuildQuests,
	DQTInfo.ClockworkCityQuests,
	DQTInfo.WrothgarQuests,
	DQTInfo.ThievesGuildQuests,
	DQTInfo.DarkBrotherhoodQuests
}