---------------------------------------------
-- Guillotine
-- Delivers a four-hit attack. Silences enemy
-- Type: Physical
-- Range: Melee
---------------------------------------------
require("scripts/globals/monstertpmoves")
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/msg")

function onMobSkillCheck(target, mob, skill)
    return 0
end

function onMobWeaponSkill(target, mob, skill)
    local numhits = 4
    local accmod = 1
    local dmgmod = 0.875
    local info = MobPhysicalMove(mob, target, skill, numhits, accmod, dmgmod, TP_NO_EFFECT, 1, 1, 1)
    local dmg = MobFinalAdjustments(info.dmg, mob, skill, target, tpz.attackType.PHYSICAL, tpz.damageType.SLASHING, info.hitslanded)

    target:takeDamage(dmg, mob, tpz.attackType.PHYSICAL, tpz.damageType.SLASHING)

    if (dmg > 0) then
        local resist = applyResistanceAddEffect(mob, target, tpz.magic.ele.WIND, 0)
        if not target:hasStatusEffect(tpz.effect.SILENCE) and resist >= 0.5 then
            local duration = (5 + 5) * resist
            target:addStatusEffect(tpz.effect.SILENCE, 1, 0, duration)
        end
    end

	if dmg > 0 and skill:getMsg() ~= 31 then target:tryInterruptSpell(mob, info.hitslanded) end
    return dmg
end
