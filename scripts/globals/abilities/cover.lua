-----------------------------------
-- Ability: Cover
-- Allows you to protect party members by placing yourself between them and the enemy
-- Obtained: Paladin Level 35
-- Recast Time: 0:03:00
-- Duration: 0:00:15
-- Info from https://www.bg-wiki.com/bg/Cover
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------

function onAbilityCheck(player, target, ability)
    if target == nil or target:getID() == player:getID() or not target:isPC() then
        return tpz.msg.basic.CANNOT_PERFORM_TARG, 0
    else
        return 0, 0
    end
end

function onUseAbility(player, target, ability)
    local baseDuration = 15
    local duration     = baseDuration + player:getMerit(tpz.merit.COVER_EFFECT_LENGTH)

    player:addStatusEffect(tpz.effect.COVER, player:getMod(tpz.mod.COVER_TO_MP), 0, duration)
    player:setLocalVar("COVER_ABILITY_TARGET", target:getID())
    ability:setMsg(tpz.msg.basic.COVER_SUCCESS)
end