-----------------------------------------
-- Spell: Magnetite Cloud
-- Deals earth damage to enemies within a fan-shaped area originating from the caster. Additional effect: Weight
-- Spell cost: 86 MP
-- Monster Type: Beastmen
-- Spell Type: Magical (Earth)
-- Blue Magic Points: 3
-- Stat Bonus: VIT+2
-- Level: 46
-- Casting Time: 4.5 seconds
-- Recast Time: 29.25 seconds
-- Magic Bursts on: Scission, Gravitation, and Darkness
-- Combos: Magic Defense Bonus
-----------------------------------------
require("scripts/globals/bluemagic")
require("scripts/globals/status")
require("scripts/globals/magic")
-----------------------------------------

function onMagicCastingCheck(caster, target, spell)
    return 0
end

function onSpellCast(caster, target, spell)
    local params = {}
    params.eco = ECO_NONE
    params.attackType = tpz.attackType.BREATH
    params.damageType = tpz.damageType.EARTH
    params.diff = caster:getStat(tpz.mod.INT) - target:getStat(tpz.mod.INT)
    params.attribute = tpz.mod.INT
    params.skillType = tpz.skill.BLUE_MAGIC
    params.bonus = 0
    params.multiplier = 2.0
    params.tMultiplier = 1.0
    params.duppercap = 56
    params.str_wsc = 0.0
    params.dex_wsc = 0.0
    params.vit_wsc = 0.0
    params.agi_wsc = 0.0
    params.int_wsc = 0.0
    params.mnd_wsc = 0.0
    params.chr_wsc = 0.2
    params.effect = tpz.effect.WEIGHT

    local resist = applyResistanceEffect(caster, target, spell, params)
    local damage = BlueMagicalSpell(caster, target, spell, params, CHR_BASED)
    damage = BlueFinalAdjustments(caster, target, spell, damage, params)
    
    local duration = math.ceil(60 * tryBuildResistance(tpz.mod.RESBUILD_GRAVITY, target))
    if resist >= 0.5 and not target:hasStatusEffect(tpz.effect.WEIGHT) then
        target:addStatusEffect(tpz.effect.WEIGHT, 25, 0, duration*resist)
    end

    return damage
end
