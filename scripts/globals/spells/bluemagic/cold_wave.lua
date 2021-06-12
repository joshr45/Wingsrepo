-----------------------------------------
-- Spell: Cold Wave
-- Deals ice damage that lowers Agility and gradually reduces HP of enemies within range
-- Spell cost: 37 MP
-- Monster Type: Arcana
-- Spell Type: Magical (Ice)
-- Blue Magic Points: 1
-- Stat Bonus: INT-1
-- Level: 52
-- Casting Time: 4 seconds
-- Recast Time: 60 seconds
-- Magic Bursts on: Induration, Distortion, and Darkness
-- Combos: Auto Refresh
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
    params.eco = ECO_ARCANA
    params.attribute = tpz.mod.INT
    params.skillType = tpz.skill.BLUE_MAGIC
    params.bonus = 0
    params.effect = nil
    params.attackType = tpz.attackType.MAGICAL
    params.damageType = tpz.damageType.ICE
    params.multiplier = 1
    params.tMultiplier = 1
    params.duppercap = 50
    params.str_wsc = 0.0
    params.dex_wsc = 0.0
    params.vit_wsc = 0.0
    params.agi_wsc = 0.0
    params.int_wsc = 0.1
    params.mnd_wsc = 0.0
    params.chr_wsc = 0.0
    
    local damage = BlueMagicalSpell(caster, target, spell, params, INT_BASED)
    damage = BlueFinalAdjustments(caster, target, spell, damage, params)
    
    params = {}
    params.eco = ECO_ARCANA
    params.diff = caster:getStat(tpz.mod.INT) - target:getStat(tpz.mod.INT)
    params.attribute = tpz.mod.INT
    params.skillType = tpz.skill.BLUE_MAGIC
    params.bonus = 0
    params.effect = nil
    local resist = applyResistanceEffect(caster, target, spell, params)
    
    if resist >= 0.5 and target:getStatusEffect(tpz.effect.BURN) == nil and target:getStatusEffect(tpz.effect.FROST) == nil then
        if target:getStatusEffect(tpz.effect.CHOKE) ~= nil then
            target:delStatusEffect(tpz.effect.CHOKE)
        end
        local BLUlvl = caster:getMainLvl()
        if caster:getMainJob() ~= tpz.job.BLU then BLUlvl = caster:getSubLvl() end
        local power = 3 + math.floor(BLUlvl/5) -- per wiki
        target:addStatusEffect(tpz.effect.FROST, power, 3, 30*resist)
    end

    return damage
end
