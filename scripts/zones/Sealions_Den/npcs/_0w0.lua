-----------------------------------
-- Area: Sealion's Den
-- NPC:  Iron Gate
-- !pos 612 132 774 32
-----------------------------------
require("scripts/globals/teleports")
require("scripts/globals/missions")
require("scripts/globals/titles")
require("scripts/globals/bcnm")
-----------------------------------

function onTrade(player, npc, trade)
    TradeBCNM(player, npc, trade)
end

function onTrigger(player, npc)
    if player:getCurrentMission(COP) == tpz.mission.id.cop.SLANDEROUS_UTTERINGS and player:getCharVar("PromathiaStatus") == 1 then
        player:startEvent(13)
    elseif player:getCurrentMission(COP) == tpz.mission.id.cop.ONE_TO_BE_FEARED and player:getCharVar("PromathiaStatus") == 1 then
        player:startEvent(31)
    elseif player:getCurrentMission(COP) == tpz.mission.id.cop.ONE_TO_BE_FEARED and player:getCharVar("PromathiaStatus") == 2 then
        EventTriggerBCNM(player, npc)
    elseif player:getCurrentMission(COP) == tpz.mission.id.cop.THE_WARRIOR_S_PATH and player:getCharVar("PromathiaStatus") == 0 then
        player:startEvent(32)
    elseif player:getCurrentMission(COP) == tpz.mission.id.cop.THE_WARRIOR_S_PATH and player:getCharVar("PromathiaStatus") == 1 then
        EventTriggerBCNM(player, npc)
    elseif player:hasStatusEffect(tpz.effect.BATTLEFIELD) then
        EventTriggerBCNM(player, npc)
    elseif player:getCurrentMission(COP) > tpz.mission.id.cop.THE_WARRIOR_S_PATH then
        player:startEvent(12)
    end
end

function onEventUpdate(player, csid, option, extras)
    EventUpdateBCNM(player, csid, option, extras)
end

function onEventFinish(player, csid, option)
    -- printf("onFinish CSID: %u", csid)
    -- printf("onFinish RESULT: %u", option)

    if (EventFinishBCNM(player, csid, option)) then
        return
    end
    if csid == 12 and option == 1 then
        player:setPos(-31.8, 0, -618.7, 190, 33)
    elseif csid == 31 then
        player:setCharVar("PromathiaStatus", 2)
    elseif csid == 13 then
        player:setCharVar("PromathiaStatus", 0)
        player:completeMission(COP, tpz.mission.id.cop.SLANDEROUS_UTTERINGS)
        player:addMission(COP, tpz.mission.id.cop.THE_ENDURING_TUMULT_OF_WAR)
        player:addTitle(tpz.title.THE_LOST_ONE)
    elseif csid == 32 then
        player:setCharVar("PromathiaStatus", 1)
    end
end
