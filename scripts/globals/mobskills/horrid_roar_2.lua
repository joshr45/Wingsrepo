---------------------------------------------
-- Horrid Roar (Nidhogg)
-- Dispels all buffs including food. Lowers Enmity.
---------------------------------------------
require("scripts/globals/monstertpmoves")
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/msg")
---------------------------------------------

function onMobSkillCheck(target, mob, skill)
    if target:isBehind(mob, 96) then
        return 1
    elseif mob:AnimationSub() == 1 then
        return 1
    end
    return 0
end

function onMobWeaponSkill(target, mob, skill)
    local dispel =  target:dispelAllStatusEffect(bit.bor(tpz.effectFlag.DISPELABLE, tpz.effectFlag.FOOD))

    if dispel == 0 then
        -- no effect
        skill:setMsg(tpz.msg.basic.SKILL_NO_EFFECT) -- no effect
    else
        skill:setMsg(tpz.msg.basic.DISAPPEAR_NUM)
    end

    mob:lowerEnmity(target, 45)

    return dispel
end
