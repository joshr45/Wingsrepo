-----------------------------------
-- Area: The Garden of Ru'Hmet
--  Mob: Aw'zdei
-- Animation Sub 0 Pot Form
-- Animation Sub 1 Pot Form (reverse eye position)
-- Animation Sub 2 Bar Form
-- Animation Sub 3 Ring Form
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onMobSpawn(mob)
    -- Set AnimationSub to 0, put it in pot form
    mob:AnimationSub(0)
    mob:SetAutoAttackEnabled(true)
    mob:SetMobAbilityEnabled(true)
    onPath(mob)
end

function onPath(mob)
    local spawnPos = mob:getSpawnPos()
    mob:pathThrough({spawnPos.x, spawnPos.y, spawnPos.z})
    local pos = mob:getPos()
    if (spawnPos.x == pos.x and spawnPos.z == pos.z) then
        mob:setPos(spawnPos.x, spawnPos.y, spawnPos.z, mob:getRotPos() + 16)
    end
end

function onMobEngaged(mob, target)
    mob:setLocalVar("changeTime", 0)
end

function onMobFight(mob)

    local randomTime = math.random(15, 45)
    local changeTime = mob:getLocalVar("changeTime")

    local isBusy = false
    local act = mob:getCurrentAction()
    if act == tpz.act.MOBABILITY_START or act == tpz.act.MOBABILITY_USING or act == tpz.act.MOBABILITY_FINISH then
            isBusy = true
    end

    if mob:actionQueueEmpty() == true and not isBusy then -- dont change forms while charging Optic Induration
        if (mob:AnimationSub() == 0 and mob:getBattleTime() - changeTime > randomTime) then
            mob:AnimationSub(math.random(2, 3))
            mob:setLocalVar("changeTime", mob:getBattleTime())
        elseif (mob:AnimationSub() == 1 and mob:getBattleTime() - changeTime > randomTime) then
            mob:AnimationSub(math.random(2, 3))
            mob:setLocalVar("changeTime", mob:getBattleTime())
        elseif (mob:AnimationSub() == 2 and mob:getBattleTime() - changeTime > randomTime) then
            local aniChance = math.random(0, 1)
            if (aniChance == 0) then
                mob:AnimationSub(0)
                mob:setLocalVar("changeTime", mob:getBattleTime())
            else
                mob:AnimationSub(3)
                mob:setLocalVar("changeTime", mob:getBattleTime())
            end
        elseif (mob:AnimationSub() == 3 and mob:getBattleTime() - changeTime > randomTime) then
            mob:AnimationSub(math.random(0, 2))
            mob:setLocalVar("changeTime", mob:getBattleTime())
        end
    end

end

function onMobWeaponSkill(target, mob, skill)
    local skill = skill:getID()
    local charge = mob:getLocalVar("charge")
    if skill == 1464 then
        mob:AnimationSub(0)
        local opticCounter = mob:getLocalVar("opticCounter")

        opticCounter = opticCounter +1
        mob:setLocalVar("opticCounter", opticCounter)

        if (opticCounter > 2) then
            mob:setLocalVar("opticCounter", 0)
            mob:setLocalVar("opticInduration", 1)
            chargeOptic(mob)
        else
            chargeOptic(mob)
        end
    end
end

function chargeOptic(mob)
    mob:SetAutoAttackEnabled(false)
    mob:SetMobAbilityEnabled(false)

    if mob:getLocalVar("opticInduration") ~= 1 then
        mob:timer(5000, function(mob)
            mob:useMobAbility(1464)
        end)
    elseif mob:getLocalVar("opticInduration") == 1 then
        mob:useMobAbility(1465)
        mob:setLocalVar("opticInduration", 0)
        mob:SetAutoAttackEnabled(true)
        mob:SetMobAbilityEnabled(true)
    end
end


function onMobDeath(mob, player, isKiller)
end
