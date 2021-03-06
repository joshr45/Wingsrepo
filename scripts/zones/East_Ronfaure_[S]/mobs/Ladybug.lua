-----------------------------------
-- Area: East Ronfaure [S]
--  Mob: Ladybug
-- Note: PH for Skogs Fru
-----------------------------------
local ID = require("scripts/zones/East_Ronfaure_[S]/IDs")
mixins = {require("scripts/mixins/families/ladybug")}
require("scripts/globals/mobs")
-----------------------------------

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    tpz.mob.phOnDespawn(mob, ID.mob.SKOGS_FRU_PH, 5, 3600) -- 1 hour
end
