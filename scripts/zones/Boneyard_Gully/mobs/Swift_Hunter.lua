-----------------------------------
-- Area: Boneyard Gully
--  Mob: Swift Hunter
-----------------------------------
mixins = {require("scripts/mixins/families/antlion_ambush")}
-----------------------------------

function onMobSpawn(mob)
    -- Aggros via ambush, not superlinking
    mob:setMobMod(tpz.mobMod.SUPERLINK, 0)
    mob:setMobMod(tpz.mobMod.NO_MOVE, 1)
    mob:setMod(tpz.mod.MAIN_DMG_RATING, 15)
    mob:setMod(tpz.mod.DEFP, -15)
    mob:setMod(tpz.mod.EVA, -20)
end

function onMobEngaged(mob, target)
    mob:setMobMod(tpz.mobMod.NO_MOVE, 0)
end

function onMobDeath(mob, player, isKiller)
end
