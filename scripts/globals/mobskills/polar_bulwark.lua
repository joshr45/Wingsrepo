---------------------------------------------
-- Polar Bulwark
--
-- Description: Grants a Physical Shield effect for a time.
-- Type: Enhancing
-- Family 163/164 = Hydra, 313 = Tinnin, 316 = Pandemonium Warden
-- Range: Self
---------------------------------------------
require("scripts/globals/monstertpmoves")
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/msg")
---------------------------------------------

function onMobSkillCheck(target, mob, skill)
    if (mob:getFamily() == 316) then
        local mobSkin = mob:getModelId()

        if (mobSkin == 1796) then
            return 0
        else
            return 1
        end
    end
   --Only used when 2 or more heads alive
    if (mob:AnimationSub() <= 1) then
        return 0
    else
        return 1
    end
end

function onMobWeaponSkill(target, mob, skill)
    mob:delStatusEffectSilent(tpz.effect.MAGIC_SHIELD)
    mob:addStatusEffect(tpz.effect.PHYSICAL_SHIELD, 0, 1, 40, 0)
    mob:getStatusEffect(tpz.effect.PHYSICAL_SHIELD):unsetFlag(tpz.effectFlag.DISPELABLE) -- Cannot be dispelled
    skill:setMsg(tpz.msg.basic.SKILL_GAIN_EFFECT)    
    if (mob:getFamily() == 313) then -- Tinnin follows this up immediately with Nerve Gas
        mob:useMobAbility(1580)
    end

    return tpz.effect.PHYSICAL_SHIELD
end