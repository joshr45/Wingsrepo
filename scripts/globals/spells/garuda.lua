-----------------------------------------
-- Spell: Garuda
-- Summons Garuda to fight by your side
-----------------------------------------
require("scripts/globals/summon")
require("scripts/globals/pets")
require("scripts/globals/msg")
require("scripts/globals/status")
require("scripts/globals/avatars_favor")
-----------------------------------------

function onMagicCastingCheck(caster, target, spell)
    if (not caster:canUseMisc(tpz.zoneMisc.PET)) then
        return tpz.msg.basic.CANT_BE_USED_IN_AREA
    elseif (caster:hasPet()) then
        return tpz.msg.basic.ALREADY_HAS_A_PET
    elseif (caster:getObjType() == tpz.objType.PC) then
        return avatarMiniFightCheck(caster)
    end
    return 0
end

function onSpellCast(caster, target, spell)
    tpz.pet.spawnPet(caster, tpz.pet.id.GARUDA)

    if caster:hasStatusEffect(tpz.effect.AVATAR_S_FAVOR) then
        local effect = caster:getStatusEffect(tpz.effect.AVATAR_S_FAVOR)
        effect:setPower(1) -- resummon resets effect
        applyAvatarsFavorAuraToPet(caster, effect)
        applyAvatarsFavorDebuffsToPet(caster)
    end

    return 0
end
