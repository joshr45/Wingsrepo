-----------------------------------
-- Area: Waughroon Shrine
--  Mob: Fe'e
-- BCNM: Up In Arms
-----------------------------------
local ID = require("scripts/zones/Waughroon_Shrine/IDs")
require("scripts/globals/status")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.MULTI_HIT, 6)
end

function onMobSpawn(mob)
    mob:setLocalVar("tentacles", 6)
    mob:SetMobSkillAttack(0)
    mob:setMod(tpz.mod.BINDRES, 0)
    mob:setMod(tpz.mod.BLINDRES, 0)
    mob:setMod(tpz.mod.SLEEPRES, 0)
    mob:setMod(tpz.mod.LULLABYRES, 0)
    mob:setMod(tpz.mod.GRAVITYRES, 0)
	mob:addMod(tpz.mod.INT, -10)
    mob:addMod(tpz.mod.ATT, -50)
    mob:addMod(tpz.mod.DEF, 30)
end

-- Remove a tentacle from Fe'e.  This happens six times during the fight, with final at about 33% HP.
-- Each removal slows attack speed in exchange for TP regain and damage.
-- When all tentacles are removed, its normal melee attack is replaced by a special Ink Jet attack that
-- ignores shadows and has knockback.

function removeTentacle(mob, tentacles)
    if tentacles > 0 then
        mob:setMobMod(tpz.mobMod.MULTI_HIT, tentacles)
        mob:messageText(mob, ID.text.ONE_TENTACLE_WOUNDED, false)
    else
        mob:messageText(mob, ID.text.ALL_TENTACLES_WOUNDED, false)
        mob:SetMobSkillAttack(704) -- replace melee attack with special Ink Jet attack
    end
    mob:addMod(tpz.mod.ATT, 20)
    mob:addMod(tpz.mod.REGAIN, 20)
    mob:addMod(tpz.mod.BINDRES, 15)
    mob:addMod(tpz.mod.BLINDRES, 15)
    mob:addMod(tpz.mod.SLEEPRES, 15)
    mob:addMod(tpz.mod.LULLABYRES, 15)
    mob:addMod(tpz.mod.GRAVITYRES, 15)
end

function onMobFight(mob, target)
    local tentacles = mob:getLocalVar("tentacles")

    if tentacles > 0 then
        local hpp = mob:getHPP()

        while hpp < (11 * tentacles + 22) and tentacles > 0 do
            tentacles = tentacles - 1
            removeTentacle(mob, tentacles)
        end

        mob:setLocalVar("tentacles", tentacles)
    end
end

function onMobDeath(mob, player, isKiller)
end
