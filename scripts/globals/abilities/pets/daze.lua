---------------------------------------------------
-- Daze
---------------------------------------------------
require("scripts/globals/status")
require("scripts/globals/settings")
require("scripts/globals/automatonweaponskills")

---------------------------------------------------

function onMobSkillCheck(target, automaton, skill)
    local master = automaton:getMaster()
    return master:countEffect(tpz.effect.THUNDER_MANEUVER)
end

function onPetAbility(target, automaton, skill, master, action)
    local params = {
        numHits = 1,
        atkmulti = 1,
        accBonus = 150,
        ftp100 = 5.0,
        ftp200 = 5.5,
        ftp300 = 6.0,
        acc100 = 0.0,
        acc200 = 0.0,
        acc300 = 0.0,
        str_wsc = 0.0,
        dex_wsc = 1.0,
        vit_wsc = 0.0,
        agi_wsc = 0.0,
        int_wsc = 0.0,
        mnd_wsc = 0.0,
        chr_wsc = 0.0
    }

    if USE_ADOULIN_WEAPON_SKILL_CHANGES then
        params.dex_wsc = 0.6
        params.ftp100 = 6.0
        params.ftp200 = 8.5
        params.ftp300 = 11.0
    end

    local damage, criticalHit, tpHits, extraHits = doAutoRangedWeaponskill(automaton, target, 0, params, skill:getTP(), true, skill, action)
    
    local duration = math.ceil(4 * tryBuildResistance(tpz.mod.RESBUILD_STUN, target))
    if damage > 0 then
        local chance = 0.033 * skill:getTP()
        if not target:hasStatusEffect(tpz.effect.STUN) and chance >= math.random()*100 then
            target:addStatusEffect(tpz.effect.STUN, 1, 0, duration)
        end
        master:trySkillUp(target, tpz.skill.AUTOMATON_RANGED, tpHits+extraHits)
        target:tryInterruptSpell(automaton, tpHits+extraHits)
    end
    return damage
end
