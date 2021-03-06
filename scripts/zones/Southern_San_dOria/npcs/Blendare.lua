-----------------------------------
-- Area: Southern San d'Oria
--  NPC: Blendare
-- Type: Standard NPC
-- !pos 33.033 0.999 -30.119 230
-----------------------------------
local ID = require("scripts/zones/Southern_San_dOria/IDs")
require("scripts/quests/flyers_for_regine")
require("scripts/globals/events/starlight_festivals")
-----------------------------------

function onTrade(player, npc, trade)
    onStarlightSmilebringersTrade(player, trade, npc)
    quests.ffr.onTrade(player, npc, trade, 10) -- FLYERS FOR REGINE
end

function onTrigger(player, npc)
    player:startEvent(606)  -- my brother always takes my sweets
--    player:startEvent(598)   --did nothing no speech or text
--    player:startEvent(945)    --black screen and hang
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
    if (csid == 606) then
        player:setCharVar("BrothersCS", 1)
    end
end
