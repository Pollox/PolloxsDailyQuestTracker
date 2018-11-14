local Pledges = {}
DQT.Pledges = Pledges

local QuestType = DQT.QuestType

-------- Pledges orders --------

--[[
	Calculates the current pledges based on a reference day when the pledges were known.
	If new pledges are added, reference day must be updated.
	
	The pledge order tables contain:
		startIndex (0-based, not 1 based) index indicating pledge on reference day.
		pledgeNames: pledges in order they are given, with SI strings that will get fed into GetString
--]]
function Pledges.getPledges(pledgeOrder)
	-- this is the next reset time on the day when the below pledges were active
	local referenceResetTime = os.time({year=2018, month=11, day=4,
		hour=6, minute=0, second=0})
	
	-- this is the next reset time now
	local resetTime = DQT.Utils:getResetTime()
	
	-- how many days have elapsed since the reference day
	local daysSinceReference = os.difftime(resetTime, referenceResetTime) / 86400
	
	-- using 0 based index until doing lookup
	local index = (pledgeOrder.startIndex + daysSinceReference) % #pledgeOrder.pledgeNames
	local pledgeName = GetString(pledgeOrder.pledgeNames[index + 1])
	return DQT.Utils:stripPrefixes(pledgeName, {GetString(SI_DQT_PLEDGE_PREFIX)})
end

-- pledges from Maj al-Ragath
Pledges.majPledgeOrder = {
	startIndex = 0,
	pledgeNames = {
		SI_DQT_PLEDGE_DARKSHADE1,
		SI_DQT_PLEDGE_ELDEN2,
		SI_DQT_PLEDGE_WAYREST1,
		SI_DQT_PLEDGE_SPINDLE2,
		SI_DQT_PLEDGE_BANISHED1,
		SI_DQT_PLEDGE_FUNGAL2,
		SI_DQT_PLEDGE_SPINDLE1,
		SI_DQT_PLEDGE_DARKSHADE2,
		SI_DQT_PLEDGE_ELDEN1,
		SI_DQT_PLEDGE_WAYREST2,
		SI_DQT_PLEDGE_FUNGAL1,
		SI_DQT_PLEDGE_BANISHED2
	}
}

-- pledges from Glirion
Pledges.glirionPledgeOrder = {
	startIndex = 0,
	pledgeNames = {
		SI_DQT_PLEDGE_COH1,
		SI_DQT_PLEDGE_VOLENFELL,
		SI_DQT_PLEDGE_CRUCIBLE,
		SI_DQT_PLEDGE_DIREFROST,
		SI_DQT_PLEDGE_VOM,
		SI_DQT_PLEDGE_COH2,
		SI_DQT_PLEDGE_COA1,
		SI_DQT_PLEDGE_TEMPEST,
		SI_DQT_PLEDGE_BLACKHEART,
		SI_DQT_PLEDGE_ARX,
		SI_DQT_PLEDGE_SELENE,
		SI_DQT_PLEDGE_COA2
	}
}

-- pledges from Urgarlag
Pledges.urgarlagPledgeOrder = {
	startIndex = 6,
	pledgeNames = {
		SI_DQT_PLEDGE_WHITE_GOLD,
		SI_DQT_PLEDGE_CRADLE,
		SI_DQT_PLEDGE_BLOODROOT,
		SI_DQT_PLEDGE_FALKREATH,
		SI_DQT_FANG_LAIG,
		SI_DQT_SCALECALLER,
		SI_DQT_PLEDGE_MOONHUNTER,
		SI_DQT_PLEDGE_MARCH,
		SI_DQT_PLEDGE_PRISON,
		SI_DQT_PLEDGE_MAZZATUN
	}
}

-------- Pledge --------
local Pledge = ZO_Object.MultiSubclass(QuestType)
Pledges.Pledge = Pledge

function Pledge:new(...)
	local object = ZO_Object.New(self)
	object:initPledge(...)
	return object
end

--[[
	Pledge is an implementation of QuestType
	
	@param name a unique identifer to distinguish this from other QuestType objects
	@param pledgeOrder one of the pledgeOrder tables from above, e.g. Pledges.majPledgeOrder
--]]
function Pledge:initPledge(name, pledgeOrder)
	quests = {}
	
	for _, pledgeName in ipairs(pledgeOrder.pledgeNames) do
		quests[#quests + 1] = DQT.Quest:new(GetString(pledgeName))
	end
	
	self:init(name, QUEST_TYPE_ENUM.PLEDGE, quests, false)
	self._pledgeOrder = pledgeOrder
end

-- instead of returning the name, return the name of today's pledge
function Pledge:getName()
	return Pledges.getPledges(self._pledgeOrder)
end

function Pledges.getPledgeSection()
	return DQT.QuestSection:new(GetString(SI_DQT_UNDAUNTED_PLEDGE), {
		Pledge:new("Maj al-Ragath", Pledges.majPledgeOrder),
		Pledge:new("Glirion", Pledges.glirionPledgeOrder),
		Pledge:new("Urgarlag", Pledges.urgarlagPledgeOrder)
	})
end
