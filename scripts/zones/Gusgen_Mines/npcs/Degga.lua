-----------------------------------
-- Area: Gusgen Mines
--  NPC: Degga
-- Type: Quest NPC
-- !pos 40 -68 -259
-----------------------------------
require("scripts/globals/keyitems")
require("scripts/globals/quests")
require("scripts/globals/status")
require("scripts/globals/bcnm")
-----------------------------------

function onTrade(player, npc, trade)
end

function onTrigger(player, npc)
    if player:getCharVar("EcoStatus") == 101 then
        if player:hasStatusEffect(tpz.effect.LEVEL_SYNC) then
            local sync_error = BCNMGetLevelSyncError(player)
            if sync_error ~= nil then
                player:messageSpecial(sync_error, 0, 0)
            end
            return
        end
        if not player:hasStatusEffect(tpz.effect.LEVEL_RESTRICTION) then
            player:startEvent(13) -- Apply ointment option
        else
            player:startEvent(15) -- Remove ointment option
        end
    elseif player:hasKeyItem(tpz.ki.INDIGESTED_ORE) then
        player:startEvent(16) -- After receiving KI, Degga sends the player to Raifa     
    else
        player:startEvent(12) -- Default dialogue
    end
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
    if csid == 13 and option == 1 then
        player:addStatusEffect(tpz.effect.LEVEL_RESTRICTION, 20, 0, 0)
    elseif csid == 16 then
        player:delStatusEffect(tpz.effect.LEVEL_RESTRICTION)
        player:setCharVar("EcoStatus", 103)
    elseif csid == 15 and option == 0 then
        player:delStatusEffect(tpz.effect.LEVEL_RESTRICTION)
    end
end
