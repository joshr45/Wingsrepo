-----------------------------------
-- Area: Spire of Vahzl
--  Mob: Cumulator
-----------------------------------
require("scripts/globals/pathfind")
-----------------------------------

function onMobInitialize(mob)
end

function onMobSpawn(mob)
	mob:setMobMod(tpz.mobMod.NO_MOVE, 1)
    mob:setMobMod(tpz.mobMod.NO_AGGRO, 1)
    mob:setMobMod(tpz.mobMod.NO_LINK, 1)
	mob:delRoamFlag(512)
end

function onMobEngaged(mob, target)
	mob:setMobMod(tpz.mobMod.NO_MOVE, 0)
    mob:setMobMod(tpz.mobMod.NO_AGGRO, 0)
end

function onMobWeaponSkill(target, mob, skill)
end

function onMobFight(mob, target)
    if mob:getHPP() < 20 then
        local nextMob = GetMobByID(mob:getID() - 5) --Procreator aggros at <20%
        if not nextMob:isEngaged() then
            nextMob:updateEnmity(target)
			nextMob:setMobMod(tpz.mobMod.NO_MOVE, 0)
			nextMob:setMobMod(tpz.mobMod.NO_AGGRO, 0)
        end
    end
	
	local terrorEndTime = mob:getLocalVar("EmptyTerror")
	if terrorEndTime == 0 then
		return
	elseif terrorEndTime < os.time() then
		mob:setLocalVar("EmptyTerror",0)
		mob:delRoamFlag(512)
		return
	end
	
	-- scripted run around
	mob:addRoamFlag(512) -- ignore attacking
	if not mob:isFollowingPath() then
		mob:disengage()
		local point = {math.random(-249,-230),60.9,math.random(-8,10)}
		mob:pathThrough(point, tpz.path.flag.RUN)
	end
end

function onMobRoam(mob)
	local terrorEndTime = mob:getLocalVar("EmptyTerror")
	if terrorEndTime == 0 then
		return
	elseif terrorEndTime < os.time() then
		mob:setLocalVar("EmptyTerror",0)
		mob:delRoamFlag(512)
		return
	end
	
	-- scripted run around
	mob:addRoamFlag(512) -- ignore attacking
	if not mob:isFollowingPath() then
		mob:disengage()
		local point = {math.random(-249,-230),60.9,math.random(-8,10)}
		mob:pathThrough(point, tpz.path.flag.RUN)
	end
	
end

function onMobDeath(mob, player, isKiller)
end
