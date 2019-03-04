BanishedTeam = RegisterMod("BanishedTeam", 1)
BanishedTeam.Characters = require("characters.team")

-- Default Functions
function BanishedTeam:GetPlayerStatsByName(player)
  return BanishedTeam.Characters.Stats[player:GetName()]
end

function BanishedTeam:RandomChanceHappens(chance, min, max)
  return math.random(min, max) < chance
end

function BanishedTeam:GiveGregoryGoldenBomb(gregory)
  if BanishedTeam:RandomChanceHappens(30, 0, 100) then
    gregory:GiveGoldenKey()
  end
end

function BanishedTeam:GiveJessGoldenKey(jess)
  if BanishedTeam:RandomChanceHappens(30, 0, 100) then
    jess:GiveGoldenBomb()
  end
end

-- Callback Functions
function BanishedTeam:OnCache(player, cacheFlag)
  local stats = BanishedTeam:GetPlayerStatsByName[player:GetName()]
  if stats ~= nil then
    if cacheFlag == CacheFlag.CACHE_DAMAGE then
      player.Damage = player.Damage + stats.Damage
    elseif cacheFlag == CacheFlag.CACHE_SHOTSPEED then
      player.ShotSpeed = player.ShotSpeed + stats.ShotSpeed
    elseif cacheFlag == CacheFlag.CACHE_RANGE then
      player.TearHeight = player.TearHeight - stats.TearHeight
      player.TearFallingSpeed = player.TearFallingSpeed + stats.TearFallSpeed
    elseif cacheFlag == CacheFlag.CACHE_SPEED then
      player.MoveSpeed = player.MoveSpeed + stats.Speed
    elseif cacheFlag == CacheFlag.CACHE_LUCK then
      player.Luck = player.Luck + stats.Luck
    elseif cacheFlag == CacheFlag.CACHE_FLYING then
      player.CanFly = stats.Flight
    elseif cacheFlag == CacheFlag.CACHE_TEARFLAG then
      player.TearFlags = player.TearFlags | stats.TearFlags
    elseif cacheFlag == CacheFlag.CACHE_TEARCOLOR then
      player.TearColor = stats.TearColor
    end
  end
end

BanishedTeam:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, BanishedTeam.OnCache)
