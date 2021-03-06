-----------------------------------
-- Assault: Seagull Grounded
-- The Immortals have captured a member of the Seagull Phratrie, a rebel organization.
-- You are to escort the prisoner safely to a holding area.
-----------------------------------
local ID = require("scripts/zones/Periqia/IDs")
require("scripts/globals/instance")
require("scripts/globals/missions")
require("scripts/globals/assault")
require("scripts/globals/zone")
-----------------------------------

function onInstanceCreated(instance)
    instance:getEntity(bit.band(ID.npc.RUNE_OF_RELEASE, 0xFFF), tpz.objType.NPC):setPos(-495.000,-9.695,-72.000,0)
    instance:getEntity(bit.band(ID.npc.ANCIENT_LOCKBOX, 0xFFF), tpz.objType.NPC):setPos(-490.000,-9.900,-72.000,0)

    instance:getEntity(bit.band(ID.npc._1K6, 0xFFF), tpz.objType.NPC):setAnimation(8)
    instance:getEntity(bit.band(ID.npc._1KX, 0xFFF), tpz.objType.NPC):setAnimation(8)
    instance:getEntity(bit.band(ID.npc._1KZ, 0xFFF), tpz.objType.NPC):setAnimation(8)
    instance:getEntity(bit.band(ID.npc._JK1, 0xFFF), tpz.objType.NPC):setAnimation(8)
    instance:getEntity(bit.band(ID.npc._JK3, 0xFFF), tpz.objType.NPC):setAnimation(8)

    spawnMobInAssault(instance, ID.mob)
end

function  afterInstanceRegister(player)
    afterAssaultRegister(player, 5346, ID.text, ID.mob)
end

function onInstanceTimeUpdate(instance, elapsed)
    
    local npc = instance:getEntity(bit.band(ID.npc.EXCALIACE, 0xFFF), tpz.objType.NPC)
    if npc ~= nil then
        onTrack(npc)
    end
    updateInstanceTime(instance, elapsed, ID.text)
end

function onInstanceFailure(instance)
    onAssaultFailure(instance, 102, ID.text)
end

function onInstanceProgressUpdate(instance, progress)
    if (instance:getProgress() > 0) then
        instance:complete()
    end
end

function onInstanceComplete(instance)
    onAssaultComplete(instance, 5, 11, ID.text, ID.npc)
end

function onEventUpdate(player, csid, option)
end
