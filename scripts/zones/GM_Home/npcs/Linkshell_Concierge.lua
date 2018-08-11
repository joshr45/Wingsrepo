-----------------------------------
-- Area: GM_Home
-- NPC:  Linkshell_Concierge
-----------------------------------
local ID = require("scripts/zones/GM_Home/IDs")
require("scripts/globals/settings")
require("scripts/globals/concierge")
-----------------------------------

function onTrade(player, npc, trade)
end

function onTrigger(player, npc)
    -- Has 3 NPCs, as there's no way of knowing how they behave on retail
    -- we'll just have all list everything.
    LinkShellConciergeEventTrigger(player, npc, 0, tpz.lsconciergetype.EVERYTHING)
end

function onEventUpdate(player,csid,option)
    LinkShellConciergeEventUpdate(player, csid, option)
end

function onEventUpdate(player, csid, option)
    local lsCmd = option % 0x00000008
    local res = LinkShellConciergeEventUpdate(player, csid, option)
    if ((lsCmd == 5) and (res == 98)) then -- dummy value for error
        player:messageSpecial(ID.text.ITEM_CANNOT_BE_OBTAINED, 0x203) 
        player:release() -- probably not the best way to do this
    end
end

function onEventFinish(player,csid,option)
    
    local res = LinkShellConciergeEventFinish(player,csid,option)
    
    if (res == 0) then
        -- Do nothing
    elseif (res == 1) then
        -- Listed Pearls
        player:messageText(player:getEventTarget(), ID.text.LS_CONCIERGE_REGISTERED1)
        player:messageText(player:getEventTarget(), ID.text.LS_CONCIERGE_REGISTERED2)
    elseif (res == 99) then -- dummy value we use for errors
        player:messageText(player:getEventTarget(), ID.text.LS_CONCIERGE_ALREADY_LISTED)
    elseif (res == 2) then
        -- Aquired Pearl
        player:messageSpecial(ID.text.ITEM_OBTAINED, 0x0203) -- Linkpearl
    elseif (res == 3) then
        -- Cancelled Pearl
        player:messageText(player:getEventTarget(),ID.text.LS_CONCIERGE_LISTING_CANCEL)
    else
        -- player:PrintToPlayer(string.format("LSConFinish: Unexpected result for -- Result: %u -- CSID: %u -- option: %u", res, csid, option))
    end

end
