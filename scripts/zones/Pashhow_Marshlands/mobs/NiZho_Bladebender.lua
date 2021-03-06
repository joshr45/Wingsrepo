-----------------------------------
-- Area: Pashhow Marshlands
--   NM: Ni'Zho Bladebender
-----------------------------------
require("scripts/globals/regimes")
require("scripts/globals/hunts")
-----------------------------------

function onMobWeaponSkillPrepare(mob, target)
    if mob:getHPP() <= 30 then
        return 612
    end
end

function onMobDeath(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 60, 1, tpz.regime.type.FIELDS)
    tpz.hunts.checkHunt(mob, player, 214)
end
