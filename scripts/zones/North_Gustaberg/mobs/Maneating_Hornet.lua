-----------------------------------
-- Area: North Gustaberg
--  Mob: Maneating Hornet
-- Note: Place Holder For Stinging Sophie
-----------------------------------
local ID = require("scripts/zones/North_Gustaberg/IDs")
require("scripts/globals/regimes")
require("scripts/globals/mobs")
-----------------------------------

function onMobDeath(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 17, 1, tpz.regime.type.FIELDS)
end

function onMobDespawn(mob)
    tpz.mob.phOnDespawn(mob, ID.mob.STINGING_SOPHIE_PH, 5, 1) -- True lottery pop, can pop back to back
end
