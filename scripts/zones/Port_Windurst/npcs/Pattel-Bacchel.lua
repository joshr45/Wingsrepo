-----------------------------------
-- Area: Port Windurst
--  NPC: Pattel_Bacchel
-- Standard Info NPC
-----------------------------------

function onTrade(player, npc, trade)
end

function onTrigger(player, npc)
    if not player:isFishingEnabled() then
        return
    end
    player:startEvent(876)
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
end
