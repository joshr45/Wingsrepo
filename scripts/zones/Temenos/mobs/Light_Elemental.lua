-----------------------------------
-- Area: Temenos E T
--  Mob: Light Elemental
-----------------------------------
local ID = require("scripts/zones/Temenos/IDs")

function onMobSpawn(mob)
    mob:addMod(tpz.mod.DMGPHYS, 25)
    mob:addMod(tpz.mod.DMGMAGIC, -40)
    mob:setMobMod(tpz.mobMod.NO_LINK, 1)
    mob:setMobMod(tpz.mobMod.ALLI_HATE, 30)
end

function onMobEngaged(mob, target)
    local mobID = mob:getID()
    if mobID == ID.mob.TEMENOS_C_MOB[2]+1 then
        GetMobByID(ID.mob.TEMENOS_C_MOB[2]+2):updateEnmity(target)
        GetMobByID(ID.mob.TEMENOS_C_MOB[2]):updateEnmity(target)
    elseif mobID == ID.mob.TEMENOS_C_MOB[2]+2 then
        GetMobByID(ID.mob.TEMENOS_C_MOB[2]+1):updateEnmity(target)
        GetMobByID(ID.mob.TEMENOS_C_MOB[2]):updateEnmity(target)
    end
end

function onMobDeath(mob, player, isKiller, noKiller)
    if isKiller or noKiller then
        switch (mob:getID()): caseof
        {
            [ID.mob.TEMENOS_C_MOB[2]+1] = function()
                if GetMobByID(ID.mob.TEMENOS_C_MOB[2]):isDead() and GetMobByID(ID.mob.TEMENOS_C_MOB[2]+2):isDead() then
                    GetNPCByID(ID.npc.TEMENOS_C_CRATE[2]):setStatus(tpz.status.NORMAL)
                end
            end,
            [ID.mob.TEMENOS_C_MOB[2]+2] = function()
                if GetMobByID(ID.mob.TEMENOS_C_MOB[2]):isDead() and GetMobByID(ID.mob.TEMENOS_C_MOB[2]+1):isDead() then
                    GetNPCByID(ID.npc.TEMENOS_C_CRATE[2]):setStatus(tpz.status.NORMAL)
                end
            end,
        }
    end
end
