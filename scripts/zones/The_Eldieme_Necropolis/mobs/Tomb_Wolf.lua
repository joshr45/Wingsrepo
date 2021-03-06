-----------------------------------
-- Area: The Eldieme Necropolis
--  Mob: Tomb Wolf
-- Note: PH for Cwn Cyrff
-----------------------------------
local ID = require("scripts/zones/The_Eldieme_Necropolis/IDs")
require("scripts/globals/regimes")
require("scripts/globals/mobs")
-----------------------------------

function onMobDeath(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 675, 1, tpz.regime.type.GROUNDS)
end

function onMobDespawn(mob)
    tpz.mob.phOnDespawn(mob, ID.mob.CWN_CYRFF_PH, 5, 3600) -- 1 hour minimum respawn
end
