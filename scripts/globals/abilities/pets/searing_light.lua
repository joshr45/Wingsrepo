---------------------------------------------------
-- Searing Light
---------------------------------------------------
require("/scripts/globals/settings")
require("/scripts/globals/status")
require("/scripts/globals/monstertpmoves")
require("/scripts/globals/magic")

---------------------------------------------------

function onAbilityCheck(player, target, ability)
    local level = player:getMainLvl() * 2

    if(player:getMP()<level) then
        return 87, 0
    end

    return 0, 0
end

function onPetAbility(target, pet, skill, master)
    local ele = tpz.damageType.LIGHT
    local coe = getAvatarEcosystemCoefficient(target, ele)
    local dINT = math.floor(pet:getStat(tpz.mod.INT) - target:getStat(tpz.mod.INT))

    local level = pet:getMainLvl()
    local damage = (48 + (level * 8))*coe
    damage = damage + (dINT * 1.5)
    damage = MobMagicalMove(pet, target, skill, damage, tpz.magic.ele.LIGHT, 1, TP_NO_EFFECT, 0)
    damage = mobAddBonuses(pet, nil, target, damage.dmg, tpz.magic.ele.LIGHT)
    damage = AvatarFinalAdjustments(damage, pet, skill, target, tpz.attackType.MAGICAL, tpz.damageType.LIGHT, MOBPARAM_WIPE_SHADOWS)

    local skillchainTier, skillchainCount = FormMagicBurst(tpz.damageType.LIGHT - 5, target)
    if (skillchainTier > 0) then
        skill:setMsg(747)
    end
    
    target:takeDamage(damage, pet, tpz.attackType.MAGICAL, tpz.damageType.LIGHT)
    target:updateEnmityFromDamage(pet, damage)
    master:setMP(0)

    return damage
end
