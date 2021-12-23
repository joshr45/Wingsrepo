-----------------------------------
-- Area: Port Windurst
--  NPC: Laughing Lizard
-- Standard Info NPC (fishing)
-----------------------------------

function onTrade(player, npc, trade)
end

function onTrigger(player, npc)
    if not player:isFishingEnabled() then
        return
    end
    player:startEvent(618)
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
end
