-----------------------------------
-- Ability: Arcane Circle
-- Grants resistance, defense, and attack against Arcana to party members within the area of effect.
-- Obtained: Dark Knight Level 5
-- Recast Time: 10:00 minutes
-- Duration: 1:00 minutes
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onAbilityCheck(player, target, ability)
    return 0, 0
end

function onUseAbility(player, target, ability)
    local duration = 60 + player:getMod(tpz.mod.ARCANE_CIRCLE_DURATION)
    target:addStatusEffect(tpz.effect.ARCANE_CIRCLE, 15, 0, duration)
end