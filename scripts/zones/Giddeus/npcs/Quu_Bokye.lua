-----------------------------------
-- Area: Giddeus
--  NPC: Quu Bokye
-- Involved in Quest: Dark Legacy
-- Involved in Quest: The Lost Book
-- !pos -159 16 181 145
-----------------------------------
local ID = require("scripts/zones/Giddeus/IDs")
-----------------------------------

function onTrade(player, npc, trade)

    if (player:getCharVar("darkLegacyCS") == 3 and trade:hasItemQty(4445, 1) and trade:getItemCount() == 1) then -- Trade Yagudo Cherries
        player:startEvent(62)

    elseif (player:getCharVar("EARLY_BIRD_TRACK_BOOK") == 1 and trade:hasItemQty(750, 1) and trade:getItemCount() == 1) then
        player:startEvent(58)

    elseif (player:getCharVar("TheLostBookProgress") == 1 and trade:hasItemQty(749, 1) and trade:getItemCount() == 1) then
        player:startEvent(65)

    end

end

function onTrigger(player, npc)

    if (player:getCharVar("darkLegacyCS") == 3) then
        player:startEvent(61)

    elseif (player:getCharVar("EARLY_BIRD_TRACK_BOOK") == 1) then
        player:startEvent(57)

    elseif (player:getCharVar("EARLY_BIRD_TRACK_BOOK") == 2) then
        player:startEvent(59)

    elseif(player:getCharVar("TheLostBookProgress") == 1) then -- this CS can be blocked by other quests but quest progress can not as the quest progresses on trade
        player:startEvent(64) -- Gives player the LEATHERBOUND_BOOK

    else
        player:startEvent(56)
    end

end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)

    if (csid == 62) then
        player:tradeComplete()
        player:setCharVar("darkLegacyCS", 4)

    elseif (csid == 58) then
        player:tradeComplete()
        player:setCharVar("EARLY_BIRD_TRACK_BOOK", 2)
        player:addKeyItem(tpz.ki.ART_FOR_EVERYONE)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.ART_FOR_EVERYONE)
    elseif (csid == 65) then
        player:tradeComplete()
        player:setCharVar("TheLostBookProgress", 2)
        player:addKeyItem(tpz.ki.LEATHERBOUND_BOOK)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.LEATHERBOUND_BOOK)
    end

end
