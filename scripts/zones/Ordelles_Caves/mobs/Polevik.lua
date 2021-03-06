-----------------------------------
-- Area: Ordelles Caves
--   NM: Polevik
-- Involved In Quest: Dark Puppet
-- !pos -51 0.1 3 193
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.IDLE_DESPAWN, 180)
    mob:addMod(tpz.mod.ATT, 150) 
end

function onMobSpawn(mob)
    mob:setMod(tpz.mod.FASTCAST,50)
end

function onMobDeath(mob, player, isKiller)
    if player:getCharVar("sharpeningTheSwordCS") == 3 then
        player:setCharVar("PolevikKilled", 1)
    end
end
