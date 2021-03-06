---------------------------------------------------
-- Inertia Stream
-- Deals light ele damage to enemies within range. Additional Effect: "Bind."
---------------------------------------------------
require("scripts/globals/status")
require("scripts/globals/monstertpmoves")
---------------------------------------------------

function onMobSkillCheck(target, mob, skill)
    return 0
end

function onMobWeaponSkill(target, mob, skill)
    local wDmgMultiplier = 2

    -- Nyzul Isle Racing Chariots
    if (mob:getID() >= 17092994 and mob:getID() <= 17092998) then
        -- lower damage from the racing chariots
        wDmgMultiplier = 1.5
    end
    local dmgmod = 2
    local info = MobMagicalMove(mob, target, skill, mob:getWeaponDmg()*wDmgMultiplier, tpz.magic.ele.ICE, dmgmod, TP_MAB_BONUS, 1)
    local dmg = MobFinalAdjustments(info.dmg, mob, skill, target, tpz.damageType.MAGICAL, tpz.attackType.ICE, MOBPARAM_WIPE_SHADOWS)
    target:takeDamage(dmg, mob, tpz.attackType.MAGICAL, tpz.damageType.EARTH)
    MobStatusEffectMove(mob, target, tpz.effect.BIND, 1, 0, 30)
    return dmg
end
