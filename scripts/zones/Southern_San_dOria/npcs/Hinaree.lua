-----------------------------------
-- Area: Southern San d'Oria
--   NPC: Hinaree
-- Type: Standard NPC
-- !pos -301.535 -10.199 97.698 230
--
-- Auto-Script: Requires Verification (Verified by Brawndo)
-----------------------------------
require("scripts/globals/missions")
local ID = require("scripts/zones/Southern_San_dOria/IDs")
require("scripts/globals/settings")
-----------------------------------

function onTrade(player, npc, trade)
    if player:getCharVar("AnnyEvent2020") == 6 and Anniversary_Event_2021 == 1 then
        if trade:hasItemQty(4150, 1) and player:getFreeSlotsCount() > 0 and trade:getItemCount() == 1 then
            player:tradeComplete()
            player:setCharVar("AnnyEvent2020", 7)
            player:addItem(4376)
            player:PrintToPlayer("Hinaree : Well.. Well.. Took you long enough to get here!", 0xD)
            player:PrintToPlayer("Hinaree : Take this to a guard of a faraway point...", 0xD)
            player:messageSpecial((ID.text.ITEM_OBTAINED), 4376)
        else
            player:messageSpecial(ID.text.ITEM_CANNOT_BE_OBTAINED, 4376)
            player:PrintToPlayer("Hinaree : Come back after cleaning up that mess of an inventory...", 0xD)
        end
    end
end

function onTrigger(player, npc)
    local currentday = tonumber(os.date("%j"))
    if (player:getCurrentMission(COP) == tpz.mission.id.cop.THE_ROAD_FORKS and player:getCharVar("EMERALD_WATERS_Status")==6 ) then
        player:startEvent(23)
    elseif (player:getCurrentMission(COP) == tpz.mission.id.cop.THREE_PATHS and player:getCharVar("COP_Ulmia_s_Path")== 0 ) then
        player:startEvent(22)
    elseif (player:getCurrentMission(COP) == tpz.mission.id.cop.DAWN and player:getCharVar("PromathiaStatus")==3 and player:getCharVar("Promathia_kill_day") ~= currentday and player:getCharVar("COP_louverance_story")== 0 ) then
        player:startEvent(757)
    else
        player:startEvent(580)
    end
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
    if (csid == 23) then
        player:setCharVar("EMERALD_WATERS_Status", 7)  --end 3-3A: San d'Oria Route: "Emerald Waters"
    elseif (csid == 22) then
        player:setCharVar("COP_Ulmia_s_Path", 1)
    elseif (csid == 757) then
        player:setCharVar("COP_louverance_story", 1)
    end
end
