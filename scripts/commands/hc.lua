---------------------------------------------------------------------------------------------------
-- func: hc
-- desc: Enables hardcode mode.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function error(player, msg)
    --player:PrintToPlayer(msg);
    --player:PrintToPlayer("!addkeyitem <key item ID> {player}");
end;

function onTrigger(player)
    
    if player:isCustomizationEnabled(5) == false then
        player:PrintToPlayer("Experience gain boost is not enabled on this server.")
        return
    end
    
    local isHardcore = player:getCharVar("HardcoreMode")
    if (isHardcore == 0) then
        isHardcore = 1
    else
        isHardcore = 0
    end
    targ:setCharVar("HardcoreMode", isHardcore)
    if (isHardcore == 0) then
        player:PrintToPlayer("Hardcore mode has been toggled OFF. You will now receive 2x/1.5x EXP bonuses under level 30/40.", 29)
    else
        player:PrintToPlayer("Hardcore mode has been toggled ON. You will no longer receive 2x/1.5x EXP bonuses under level 30/40.", 29)
    end
    
end;
