-----------------------------------
-- Area: Sealion's Den
-- Name: One to be Feared
-----------------------------------
require("scripts/globals/battlefield")
require("scripts/globals/missions")
-----------------------------------

function onBattlefieldTick(battlefield, tick)

    if battlefield:getLocalVar("event1") == 1 then

        for _, player in ipairs(battlefield:getPlayers()) do
            local inst = battlefield:getArea()
            if inst == 1 then
                player:setPos(-779, -103, -80)
            elseif inst == 2 then
                player:setPos(-140, -23, -440)
            elseif inst == 3 then
                player:setPos(499, 56, -802)
            end
        end

        battlefield:setLocalVar("event1", 0)
    end

    tpz.battlefield.onBattlefieldTick(battlefield, tick)
end

function onBattlefieldInitialise(battlefield)
    battlefield:setLocalVar("phaseChange", 1)
end

function onBattlefieldRegister(player, battlefield)
end

function onBattlefieldEnter(player, battlefield)
end

function onBattlefieldLeave(player, battlefield, leavecode)
    if leavecode == tpz.battlefield.leaveCode.WON then
        local name, clearTime, partySize = battlefield:getRecord()
        local arg8 = (player:getCurrentMission(COP) ~= tpz.mission.id.cop.ONE_TO_BE_FEARED or player:getCharVar("PromathiaStatus") ~= 2) and 1 or 0
        player:startEvent(32001, battlefield:getArea(), clearTime, partySize, battlefield:getTimeInside(), 1, battlefield:getLocalVar("[cs]bit"), arg8)
    elseif leavecode == tpz.battlefield.leaveCode.LOST then
        player:startEvent(32002)
    end
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
    if csid == 32001 then
        if player:getCurrentMission(COP) == tpz.mission.id.cop.ONE_TO_BE_FEARED and player:getCharVar("PromathiaStatus") == 2 then
            player:completeMission(COP, tpz.mission.id.cop.ONE_TO_BE_FEARED)
            player:addMission(COP, tpz.mission.id.cop.CHAINS_AND_BONDS)
            player:setCharVar("PromathiaStatus", 0)
        end
        player:addExp(1500)
        player:setPos(438, 0, -18, 11, 24) -- Lufaise
    end
end