-----------------------------------------
-- ID: 17325
-- Item: Kabura Arrow
-- Additional Effect: Silence
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------

function onAdditionalEffect(player, target, damage)
    local chance = 50
    if target:isNM() then
        chance = 35
    end
    if target:getMainLvl() > player:getMainLvl() then
        chance = chance - 4 * (target:getMainLvl() - player:getMainLvl())
        chance = utils.clamp(chance, 5, 95)
    end
    if target:getMod(tpz.mod.STATUSRES) < 100 and target:getMod(tpz.mod.SILENCERES) < 100 then
        if (math.random(0, 99) >= chance or applyResistanceAddEffect(player, target, tpz.magic.ele.WIND, 0) <= 0.5) then
            return 0, 0, 0
        else
            target:delStatusEffect(tpz.effect.SILENCE)
            if (not target:hasStatusEffect(tpz.effect.SILENCE)) then
                target:addStatusEffect(tpz.effect.SILENCE, 1, 0, 60)
            end
            return tpz.subEffect.SILENCE, tpz.msg.basic.ADD_EFFECT_STATUS, tpz.effect.SILENCE
        end
    end
end
