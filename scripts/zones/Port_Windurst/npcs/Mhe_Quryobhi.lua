-----------------------------------
-- Area: Port Windurst
--  NPC: Mhe Quryobhi
-- Working 100%
-----------------------------------
require("scripts/globals/settings")
-----------------------------------

function onTrade(player, npc, trade)
end

function onTrigger(player, npc)
    if not player:isFishingEnabled() then
        return
    end
    player:startEvent(206)
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
end
