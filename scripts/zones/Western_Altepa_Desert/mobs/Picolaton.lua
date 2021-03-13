------------------------------
-- Area: Western Altepa Desert
--   NM: Picolaton
------------------------------
require("scripts/globals/hunts")
------------------------------
function onMobInitialize(mob)
    mob:addMod(tpz.mod.REGAIN, 200)
end

function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 414)
end
