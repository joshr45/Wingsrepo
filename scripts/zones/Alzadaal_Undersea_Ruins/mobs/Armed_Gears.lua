-----------------------------------
-- Area: Alzadaal Undersea Ruins
--  Mob: Armed Gears
-- !pos -19 -4 -153
-----------------------------------
-- todo
-- add add random elemental magic absorb to elements its casting

mixins =
{
    require("scripts/mixins/job_special"),
}
require("scripts/globals/status")

function onMobInitialize(mob)
    mob:addMod(tpz.mod.MDEF, 60)
    mob:addMod(tpz.mod.DEF, 60)
    mob:AnimationSub(0)
end

function onMobDeath(mob, player, isKiller)
end
