------------------------------
-- Area: King Ranperres Tomb
--   NM: Gwyllgi
------------------------------
require("scripts/globals/hunts")
------------------------------

function onMobInitialize(mob)
    mob:setMod(tpz.mod.STORETP, 50)
end

function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 177)
end
