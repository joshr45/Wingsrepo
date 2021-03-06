-----------------------------------
-- Area: Cape Teriggan
--   NM: Axesarion the Wanderer
-----------------------------------
local ID = require("scripts/zones/Cape_Teriggan/IDs")
-----------------------------------
function onMobSpawn(mob)
    mob:addMod(tpz.mod.DMGMAGIC,-50)
end

function onMobDisengage(mob)
    DespawnMob(mob:getID(), 120)
end

function onMobDeath(mob, player, isKiller)
    if (isKiller) then
        GetNPCByID(ID.npc.CERMET_HEADSTONE):setLocalVar("cooldown", os.time() + 900)
    end
end
