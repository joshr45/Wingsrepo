---------------------------------------------
--  Plague Swipe
--
--  Description: Delivers a threefold attack in an cone effect behind user. Additional effect: Bio + Plague
--  Type: Physical
--  2-3 Shadows
--  Range: Backward Arc
---------------------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/monstertpmoves")
---------------------------------------------
function onMobSkillCheck(target, mob, skill) 
    if target:isInfront(mob, 128) then
        return 1
    end

    return 0
end

function onMobWeaponSkill(target, mob, skill)

    local numhits = 3
    local accmod = 1
    local dmgmod = 1

    local info = MobPhysicalMove(mob, target, skill, numhits, accmod, dmgmod, TP_NO_EFFECT)
    local dmg = MobFinalAdjustments(info.dmg, mob, skill, target, tpz.attackType.PHYSICAL, tpz.damageType.SLASHING, info.hitslanded)

    MobPhysicalStatusEffectMove(mob, target, skill, tpz.effect.BIO, 7, 3, 60)
    MobPhysicalStatusEffectMove(mob, target, skill, tpz.effect.PLAGUE, 5, 3, 60)
    
    target:takeDamage(dmg, mob, tpz.attackType.PHYSICAL, tpz.damageType.SLASHING)
	
    if dmg > 0 and skill:getMsg() ~= 31 then 
        target:tryInterruptSpell(mob, info.hitslanded) 
    end
    
    return dmg
end