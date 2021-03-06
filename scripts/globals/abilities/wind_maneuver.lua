-----------------------------------
-- Ability: Wind Maneuver
-- Enhances the effect of wind attachments. Must have animator equipped.
-- Obtained: Puppetmaster level 1
-- Recast Time: 10 seconds (shared with all maneuvers)
-- Duration: 1 minute
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/utils")
require("scripts/globals/automaton")
-----------------------------------

function onAbilityCheck(player, target, ability)
    if (player:getWeaponSubSkillType(tpz.slot.RANGED) == 10 and
        not player:hasStatusEffect(tpz.effect.OVERLOAD) and
        player:getPet()) then
        return 0, 0
    else
        return 71, 0
    end
end

function onUseAbility(player, target, ability)

    local burden = 15
    if (target:getStat(tpz.mod.AGI) < target:getPet():getStat(tpz.mod.AGI)) then
        burden = 20
    end

    local overload = target:addBurden(tpz.magic.ele.WIND-1, burden)

    if (overload ~= 0 and
        (player:getMod(tpz.mod.PREVENT_OVERLOAD) > 0 or player:getPet():getMod(tpz.mod.PREVENT_OVERLOAD) > 0) and
        player:delStatusEffectSilent(tpz.effect.WATER_MANEUVER)) then
        overload = 0
    end

    if (overload ~= 0) then
        target:removeAllManeuvers()
        target:addStatusEffect(tpz.effect.OVERLOAD, 0, 0, overload)
    else
        local bonus = getManeuverBonus(player)

        bonus = bonus + target:getMod(tpz.mod.MANEUVER_BONUS)

        if (target:getActiveManeuvers() == 3) then
            target:removeOldestManeuver()
        end

        --local dur = player:getPet():getLocalVar("MANEUVER_DURATION")
        target:addStatusEffect(tpz.effect.WIND_MANEUVER, bonus, 0, 60)

    end

    return tpz.effect.WIND_MANEUVER
end
