-----------------------------------
-- Area: Al'Taieu
--  NPC: ??? (Jailer of Prudence Spawn)
-- Allows players to spawn the Jailer of Prudence by trading the Third Virtue, Deed of Sensibility, and High-Quality Hpemde Organ to a ???.
-- !pos 706 -1 22
-----------------------------------
local ID = require("scripts/zones/AlTaieu/IDs")
require("scripts/globals/npc_util")
-----------------------------------

function onTrade(player, npc, trade)
    if npcUtil.tradeHas(trade, {1856, 1870, 1871}) and npcUtil.popFromQM(player, npc, {ID.mob.JAILER_OF_PRUDENCE_1, ID.mob.JAILER_OF_PRUDENCE_2}, {radius = 1}) then
        player:confirmTrade()
    end
end

function onTrigger(player, npc)
    player:startEvent(202)
end

function onEventUpdate(player, csid, option)
    -- printf("onUpdate CSID: %u", csid)
    -- printf("onUpdate RESULT: %u", option)
end

function onEventFinish(player, csid, option)
    -- printf("onFinish CSID: %u", csid)
    -- printf("onFinish RESULT: %u", option)
end
