-----------------------------------------
-- Spell: Yawn
-- Puts all enemies within range to sleep
-- Spell cost: 55 MP
-- Monster Type: Birds
-- Spell Type: Magical (Light)
-- Blue Magic Points: 3
-- Stat Bonus: CHR+1, HP+5
-- Level: 64
-- Casting Time: 3 seconds
-- Recast Time: 60 seconds
-- Duration: 90 seconds
-- Magic Bursts on: Transfixion, Fusion, Light
-- Combos: Resist Sleep
-----------------------------------------
require("scripts/globals/bluemagic")
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------------

function onMagicCastingCheck(caster, target, spell)
    return 0
end

function onSpellCast(caster, target, spell)
    local params = {}
    params.eco = ECO_BIRD
    params.diff = caster:getStat(tpz.mod.CHR) - target:getStat(tpz.mod.CHR)
    params.attribute = tpz.mod.CHR
    params.skillType = tpz.skill.BLUE_MAGIC
    params.bonus = 0
    params.effect = tpz.effect.SLEEP_I
    local resist = applyResistanceEffect(caster, target, spell, params)
    
    local duration = math.ceil(90 * resist * tryBuildResistance(tpz.mod.RESBUILD_LULLABY, target))
    
    if target:hasStatusEffect(tpz.effect.SLEEP_I) or target:hasStatusEffect(tpz.effect.SLEEP_II) or target:hasStatusEffect(tpz.effect.LULLABY) or (caster:isPC() and not target:isFacing(caster,30)) then
        spell:setMsg(tpz.msg.basic.MAGIC_NO_EFFECT)
    elseif resist >= 0.5 then
        if target:addStatusEffect(tpz.effect.SLEEP_I, 1, 0, duration) then
            spell:setMsg(tpz.msg.basic.MAGIC_ENFEEB_IS)
        else
            spell:setMsg(tpz.msg.basic.MAGIC_NO_EFFECT)
        end
    else
        spell:setMsg(tpz.msg.basic.MAGIC_RESIST)
    end

    return tpz.effect.SLEEP_I
end
