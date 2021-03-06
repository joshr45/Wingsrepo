-----------------------------------
--
-- Assault: Extermination
--
-----------------------------------
local ID = require("scripts/zones/Ilrusi_Atoll/IDs")
require("scripts/globals/instance")
-----------------------------------

function afterInstanceRegister(player)
    local instance = player:getInstance()

    player:messageSpecial(ID.text.ASSAULT_43_START, 43)
    player:messageSpecial(ID.text.TIME_TO_COMPLETE, instance:getTimeLimit())
end

function onInstanceCreated(instance)

    for i, v in pairs(ID.mob[43]) do
        SpawnMob(v, instance)
    end

    GetNPCByID(ID.npc.RUNE_OF_RELEASE, instance):setPos(290.857, -3.424, 132.339, 148)
    GetNPCByID(ID.npc.ANCIENT_LOCKBOX, instance):setPos(293.637, -3.376, 130.364, 148)
    GetNPCByID(ID.npc._jo, instance):setAnimation(8)
    GetNPCByID(ID.npc._jj3, instance):setAnimation(8)
    GetNPCByID(ID.npc._jj5, instance):setAnimation(8)
    GetNPCByID(ID.npc._jjc, instance):setAnimation(8)
end

function onInstanceTimeUpdate(instance, elapsed)
    updateInstanceTime(instance, elapsed, ID.text)
end

function onInstanceFailure(instance)

    local chars = instance:getChars()

    for i, v in pairs(chars) do
        v:messageSpecial(ID.text.MISSION_FAILED, 10, 10)
        v:startEvent(102)
    end
end

function onInstanceProgressUpdate(instance, progress)

    if progress == 20 then
        instance:complete()
    end
end

function onInstanceComplete(instance)

    local chars = instance:getChars()

    for i, v in pairs(chars) do
        v:messageSpecial(ID.text.RUNE_UNLOCKED_POS, 8, 8)
    end

    GetNPCByID(ID.npc.RUNE_OF_RELEASE, instance):setStatus(tpz.status.NORMAL)
    GetNPCByID(ID.npc.ANCIENT_LOCKBOX, instance):setStatus(tpz.status.NORMAL)

end

function onEventUpdate(player, csid, option)
end
