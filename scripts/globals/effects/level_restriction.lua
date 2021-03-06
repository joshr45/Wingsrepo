-----------------------------------
--
--     tpz.effect.LEVEL_RESTRICTION
--
-----------------------------------

function onEffectGain(target, effect)
    target:levelRestriction(effect:getPower())
    target:delStatusEffectsByFlag(bit.bor(tpz.effectFlag.DISPELABLE, tpz.effectFlag.ON_ZONE, tpz.effectFlag.ON_SYNC), true)
    target:messageBasic(314, effect:getPower()) -- <target>'s level is restricted to <param>

    if target:getObjType() == tpz.objType.PC then
        target:clearTrusts()
    end
end


function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
    target:levelRestriction(0)
end
