---------------------------------------------------------------------------------------------------
-- func: influence
-- desc: Prints the current influence multiplier
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function error(player, msg)
    --player:PrintToPlayer(msg);
    --player:PrintToPlayer("!influence");
end;

function onTrigger(player)
    
    if player:isCustomizationEnabled(5) == false then
        player:PrintToPlayer("Influence boost is not enabled on this server.")
        return
    end
    
    local influence = player:getInfluenceMult()
    line string.format("You are earning %i%% influence for your nation this conquest cycle.", influence * 100);
    player:PrintToPlayer(line)
    
end;
