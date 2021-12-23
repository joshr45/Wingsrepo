--------------------------------------------------------
-- (C) 2010 Wings Project.                            --
-- Tonberry server customizations.                    --
-- Set HOOK_FILE_NAME = "tonberry" in settings.lua    --
-- to enable.                                         --
--------------------------------------------------------

function hookOnCharCreate(player)
    -- The CreateChar routine has already added a
    -- weapon according to the job selection but we
    -- need to add one more for dual-wielding
    if not player:hasItem(16534) then
        player:addItem(16534) -- onion sword
    end
    player:addItem(16534) -- onion sword
    if not player:hasItem(16483) then
        player:addItem(16483) -- onion knife
    end
    player:addItem(16483) -- onion knife
    if not player:hasItem(17068) then
        player:addItem(17068) -- onion rod
    end
    player:addItem(17068) -- onion rod
    if not player:hasItem(17104) then
        player:addItem(17104) -- onion staff
    end
    if not player:hasItem(12289) then
        player:addItem(12289) -- luaun shield
    end
    if not player:hasItem(13184) then
        player:addItem(13184) -- white belt
    end
    if not player:hasItem(4608) then
        player:addItem(4608) -- cure
    end
    if not player:hasItem(4607) then
        player:addItem(4607) -- stone
    end
    if not player:hasItem(4606) then
        player:addItem(4606) -- dia
    end
    
    -- All races get the starting ring
    local nation = player:getNation()
    local nationInfo = startingNationInfo[nation]
    if not player:hasItem(nationInfo.ring) then
        player:addItem(nationInfo.ring)
    end
    
    -- Echad ring
    if not player:hasItem(27556) then
        player:addItem(27556)
    end
    
    -- Player already begins with a subjob
    
    if SUBJOB_QUEST_LEVEL ~= 0 then
        -- Force unlock
        -- If SUBJOB_QUEST_LEVEL == 0 they were already unlocked
        -- by the main script.
        player:unlockJob(0)
    end
    
    if (player:getMainJob() == 1) then -- WAR
        player:changesJob(2) -- MNK
    end
    
    if (player:getMainJob() == 2) then -- MNK
        player:changesJob(1) -- WAR
    end
    
    if (player:getMainJob() == 3) then -- WHM
        player:changesJob(5) -- RDM
    end
    
    if (player:getMainJob() == 4) then -- BLM
        player:changesJob(5) -- RDM
    end
    
    if (player:getMainJob() == 5) then -- RDM
        player:changesJob(4) -- BLM
    end
    
    if (player:getMainJob() == 6) then -- THF
        player:changesJob(1) -- WAR
    end
    
    player:setsLevel(1);


function hookOnLoadTeleports()
    -- Only allow explorer moogles if weekend event is active
    if tpz.teleport.origExplorerMoogleOnTrigger == nil then
        tpz.teleport.origExplorerMoogleOnTrigger = tpz.teleport.explorerMoogleOnTrigger
        tpz.teleport.explorerMoogleOnTrigger = function(player, event)
            if player:checkWeekendEvent() then
                return tpz.teleport.origExplorerMoogleOnTrigger(player, event)
            else
                player:PrintToPlayer("Explorer Moogles are only available during Weekend events")
            end
        end
    end
end

end
