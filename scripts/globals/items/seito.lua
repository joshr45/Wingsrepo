-----------------------------------------
-- ID: 17797
-- Item: Seito
-- Additional Effect: Silence
-- TODO: Enchantment: Ensilence
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------

function onAdditionalEffect(player, target, damage)
    local chance = 10
    if target:getMod(tpz.mod.STATUSRES) < 100 and target:getMod(tpz.mod.SILENCERES) < 100 then
        if (math.random(0, 99) >= chance or applyResistanceAddEffect(player, target, tpz.magic.ele.WIND, 0) <= 0.5) then
            return 0, 0, 0
        else
            if (not target:hasStatusEffect(tpz.effect.SILENCE)) then
                target:addStatusEffect(tpz.effect.SILENCE, 1, 0, 60)
            end
            return tpz.subEffect.SILENCE, tpz.msg.basic.ADD_EFFECT_STATUS, tpz.effect.SILENCE
        end
    end
end

function onItemCheck(target)
end

function onItemUse(target)
end
