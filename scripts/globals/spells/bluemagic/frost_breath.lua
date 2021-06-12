-----------------------------------------
-- Spell: Frost Breath
-- Deals ice damage to enemies within a fan-shaped area originating from the caster. Additional effect: Paralysis
-- Spell cost: 136 MP
-- Monster Type: Lizards
-- Spell Type: Magical (Ice)
-- Blue Magic Points: 3
-- Stat Bonus: INT-2
-- Level: 66
-- Casting Time: 6.5 seconds
-- Recast Time: 42.75 seconds
-- Magic Bursts on: Induration, Distortion, and Darkness
-- Combos: Conserve MP
-----------------------------------------
require("scripts/globals/bluemagic")
require("scripts/globals/status")
require("scripts/globals/magic")
-----------------------------------------

function onMagicCastingCheck(caster, target, spell)
    return 0
end

function onSpellCast(caster, target, spell)
    local multi
    if caster:hasStatusEffect(tpz.effect.AZURE_LORE) then
        multi = 2.58
    else
        multi = 2.08
    end

    local params = {}
    params.eco = ECO_VERMIN
    params.attackType = tpz.attackType.BREATH
    params.damageType = tpz.damageType.ICE
    params.multiplier = multi
    params.tMultiplier = 1.5
    params.duppercap = 69
    params.str_wsc = 0.0
    params.dex_wsc = 0.0
    params.vit_wsc = 0.0
    params.agi_wsc = 0.0
    params.int_wsc = 0.0
    params.mnd_wsc = 0.3
    params.chr_wsc = 0.0
    local damage = BlueMagicalSpell(caster, target, spell, params, MND_BASED)
    damage = BlueFinalAdjustments(caster, target, spell, damage, params)
    
    params = {}
    params.eco = ECO_VERMIN
    params.diff = caster:getStat(tpz.mod.INT) - target:getStat(tpz.mod.INT)
    params.attribute = tpz.mod.INT
    params.skillType = tpz.skill.BLUE_MAGIC
    params.bonus = 0
    params.effect = tpz.effect.PARALYSIS
    local resist = applyResistanceEffect(caster, target, spell, params)
    
    local duration = math.ceil(90 * tryBuildResistance(tpz.mod.RESBUILD_PARALYZE, target))
    if resist >= 0.25 and not target:hasStatusEffect(tpz.effect.PARALYSIS) then
        target:addStatusEffect(tpz.effect.PARALYSIS, 16, 0, duration*resist)
    end

    return damage
end
