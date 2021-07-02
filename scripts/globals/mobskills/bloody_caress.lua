---------------------------------------------------
-- Bloody Caress
-- Delivers a threefold attack. Additional effect: Drain
-- 100% TP: ??? / 250% TP: ??? / 300% TP: ???
-----------------------------------
require("scripts/globals/monstertpmoves")
require("scripts/globals/settings")
require("scripts/globals/status")
-----------------------------------

function onMobSkillCheck(target, mob, skill)
    return 0
end

function onMobWeaponSkill(target, mob, skill)
    -- Todo: Need to allow this ability to target charmed mobs/players

    local numhits = 3
    local accmod = 1
    local dmgmod = 1

	if math.random()*100 < target:getGuardRate(mob) then
		skill:setMsg(tpz.msg.basic.SKILL_MISS)
		target:trySkillUp(mob, tpz.skill.GUARD, numhits)
		return 0
	end

    local info = MobPhysicalMove(mob, target, skill, numhits, accmod, dmgmod, TP_ACC_VARIES, 1, 2, 3)
    local dmg = MobFinalAdjustments(info.dmg, mob, skill, target, tpz.attackType.PHYSICAL, tpz.damageType.SLASHING, info.hitslanded)
    target:takeDamage(dmg, mob, tpz.attackType.PHYSICAL, tpz.damageType.SLASHING)
	skill:setMsg(MobPhysicalDrainMove(mob, target, skill, MOBDRAIN_HP, dmg))

    return dmg
end
