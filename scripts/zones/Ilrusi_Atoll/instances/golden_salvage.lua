-----------------------------------
--
-- Assault: Golden Salvage
--
-----------------------------------
local ID = require("scripts/zones/Ilrusi_Atoll/IDs")
require("scripts/globals/instance")
require("scripts/globals/missions")
require("scripts/globals/assault")
require("scripts/globals/zone")
-----------------------------------

function onInstanceCreated(instance)
    instance:setProgress(math.random(ID.mob[GOLDEN_SALVAGE].ILRUSI_CURSED_CHEST_OFFSET, ID.mob[GOLDEN_SALVAGE].ILRUSI_CURSED_CHEST_OFFSET + 11))
    local figureheadChest = instance:getProgress()
    local spawnPoints =
        {
            [1]  = {590,-15, 109,127},
            [2]  = {346, -2, 113, 49},
            [3]  = {351,-15, -14,134},
            [4]  = {288,-15,-105,248},
            [5]  = {331,-15,-181,202},
            [6]  = {330, -3, -34,163},
            [7]  = {221, -1, -32,226},
            [8]  = {546, -7, 161,156},
            [9]  = {334,-15,-145,132},
            [10] = {370,-16,-131, 75},
            [11] = {305, -2,  73, 54},
            [12] = {273, -2,  30, 99},
            [13] = {380, -2, 149, 78},
            [14] = {473, -2, 133,131},
            [15] = {462, -2, 181,130},
            [16] = {546, -8, 258, 81},
        }
    
    for i = ID.mob[GOLDEN_SALVAGE].ILRUSI_CURSED_CHEST_OFFSET, ID.mob[GOLDEN_SALVAGE].ILRUSI_CURSED_CHEST_OFFSET + 7 do
        local sPoint = math.random(1,#spawnPoints) -- Randoms the 1st 8 points for chests, last 4 are static on boats
        instance:getEntity(bit.band(i, 0xFFF), tpz.objType.NPC):setPos(spawnPoints[sPoint])
        instance:getEntity(bit.band(i, 0xFFF), tpz.objType.NPC):setStatus(tpz.status.NORMAL)
        table.remove(spawnPoints,sPoint)
    end

    instance:getEntity(bit.band(ID.npc.RUNE_OF_RELEASE, 0xFFF), tpz.objType.NPC):setPos(380.000,-7.894,64.999,0)
    instance:getEntity(bit.band(ID.npc.ANCIENT_LOCKBOX, 0xFFF), tpz.objType.NPC):setPos(380.000,-7.756,61.999,0)

    spawnMobInAssault(instance, ID.mob)
end

function afterInstanceRegister(player)
    afterAssaultRegister(player, 5347, ID.text, ID.mob)
end

function onInstanceTimeUpdate(instance, elapsed)
    updateInstanceTime(instance, elapsed, ID.text)
end

function onInstanceFailure(instance)
    onAssaultFailure(instance, 102, ID.text)
end

function onInstanceProgressUpdate(instance, progress)
    if progress == 1 then
        instance:complete()
    end
end

function onInstanceComplete(instance)
    onAssaultComplete(instance, 7, 7, ID.text, ID.npc)
end

function onEventUpdate(player, csid, option)
end
