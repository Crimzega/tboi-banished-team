local TeamInfo = {}
local GregoryInfo = require('characters.gregory')
local EllyseInfo = require('characters.ellyse')
local SolomonInfo = require('characters.solomon')
local EllroyInfo = require('characters.ellroy')
local AllieInfo = require('characters.allie')
local JessInfo = require('characters.jess')
local HannahInfo = require('characters.hannah')
local MarkusInfo = require('characters.markus')
local PamilaInfo = require('characters.pamila')
local DennisInfo = require('characters.dennis')

TeamInfo.Ids = {
	['Gregory'] = GregoryInfo.Id,
	['Ellyse'] = EllyseInfo.Id,
	['Solomon'] = SolomonInfo.Id,
	['Ellroy'] = EllroyInfo.Id,
	['Allie'] = AllieInfo.Id,
	['Jess'] = JessInfo.Id,
	['Hannah'] = HannahInfo.Id,
	['Markus'] = MarkusInfo.Id,
	['Pamila'] = PamilaInfo.Id,
	['Dennis'] = DennisInfo.Id
}
TeamInfo.Stats = {
	['Gregory'] = GregoryInfo.Stats,
	['Ellyse'] = EllyseInfo.Stats,
	['Solomon'] = SolomonInfo.Stats,
	['Ellroy'] = EllroyInfo.Stats,
	['Allie'] = AllieInfo.Stats,
	['Jess'] = JessInfo.Stats,
	['Hannah'] = HannahInfo.Stats,
	['Markus'] = MarkusInfo.Stats,
	['Pamila'] = PamilaInfo.Stats,
	['Dennis'] = DennisInfo.Stats
}

function TeamInfo:CreateRandomChance(chance, min, max)
	return math.random(min, max) < 30
end

function TeamInfo:GiveJessGoldenKey(jess)
	if TeamInfo:CreateRandomChance(30,0,100) then
		jess:GiveGoldenKey()
	end
end

function TeamInfo:GiveGregoryGoldenBomb(gregory)
	if TeamInfo:CreateRandomChance(30, 0, 100) then
		gregory:GiveGoldenBomb()
	end
end

function TeamInfo:GetTeamStatsByName(player)
	return TeamInfo[player:GetName()]
end

return TeamInfo