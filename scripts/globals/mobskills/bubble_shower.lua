---------------------------------------------------
-- Bubble Shower
-- Deals Water damage in an area of effect. Additional effect: STR Down
---------------------------------------------------

require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/monstertpmoves")

---------------------------------------------------

function onMobSkillCheck(target, mob, skill)
    return 0
end

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = tpz.effect.STR_DOWN
    local bonus = 0
    local bubbleCap = 0

    MobStatusEffectMove(mob, target, typeEffect, 10, 3, 120)
  
    if mob:getMaster() then 
        bubbleCap = 2000
    else 
        bubbleCap = 200
    end 
    
    local dmgmod = MobBreathMove(mob, target, 0.15, 5, tpz.magic.ele.WATER, bubbleCap, bonus)

    local dmg = MobFinalAdjustments(dmgmod, mob, skill, target, tpz.attackType.BREATH, tpz.damageType.WATER, MOBPARAM_IGNORE_SHADOWS)
    target:takeDamage(dmg, mob, tpz.attackType.BREATH, tpz.damageType.WATER)
    return dmg
end
