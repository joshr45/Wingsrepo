---------------------------------------------
-- Obfuscate
--
-- Description: A blinding wave hits players in an area of effect.
-- Type: Enfeebling
-- Utsusemi/Blink absorb: Ignores shadows
-- Range: 10' radial
-- Notes:
---------------------------------------------
require("scripts/globals/monstertpmoves")
require("scripts/globals/settings")
require("scripts/globals/status")
---------------------------------------------

function onMobSkillCheck(target, mob, skill)
    return 0
end

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = tpz.effect.FLASH
    local power = 200
    local duration = 12

    skill:setMsg(MobStatusEffectMove(mob, target, typeEffect, power, 0, duration))

    return typeEffect
end
