-----------------------------------
-- Area: East Ronfaure
--  Mob: Pugil
-- Note: PH for Swamfisk
-----------------------------------
local ID = require("scripts/zones/East_Ronfaure/IDs")
require("scripts/globals/regimes")
require("scripts/globals/mobs")

function onMobDeath(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 64, 1, tpz.regime.type.FIELDS)
end

function onMobDespawn(mob)
    tpz.mob.phOnDespawn(mob, ID.mob.SWAMFISK_PH, 7, 3600) -- 1 hour minimum
end
