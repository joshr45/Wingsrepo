-----------------------------------------
-- ID: 18150
-- Item: Blind Bolt
-- Additional Effect: Blindness
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------

function onAdditionalEffect(player, target, damage)
    local chance = 70
    if (target:getMainLvl() > player:getMainLvl()) then
        chance = chance - 2 * (target:getMainLvl() - player:getMainLvl())
        chance = utils.clamp(chance, 5, 95)
    end
    if (target:hasImmunity(64)) then
        return 0, 0, 0
    elseif (math.random(0, 100) >= chance or applyResistanceAddEffect(player, target, tpz.magic.ele.DARK, 0) < 0.5) then
        return 0, 0, 0
    else
        if target:getMod(tpz.mod.STATUSRES) < 100 and target:getMod(tpz.mod.BLINDRES) < 100 then
            target:delStatusEffect(tpz.effect.BLINDNESS)
            if (not target:hasStatusEffect(tpz.effect.BLINDNESS)) then
                target:addStatusEffect(tpz.effect.BLINDNESS, 10, 0, 30)
            end
            return tpz.subEffect.BLIND, tpz.msg.basic.ADD_EFFECT_STATUS, tpz.effect.BLINDNESS
        end
    end
end
