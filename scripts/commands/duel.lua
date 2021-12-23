---------------------------------------------------------------------------------------------------
-- func: duel
-- desc: Starts a PvP fight between players
---------------------------------------------------------------------------------------------------

require("scripts/globals/status");

cmdprops =
{
    permission = 0,
    parameters = "si"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!duel");
end;

function onTrigger(player,team,sync)
    
    if player:isCustomizationEnabled(3) == false then
        player:PrintToPlayer("PvP is not enabled on this server.")
        return
    end
    
    -- Default is player (disable PvP)
    local teamno = 1
    
    if team == "green" then
        teamno = 6
    elseif team == "blue" then
        teamno = 5
    elseif team == "ffa" then
        teamno = 8 -- ffa
    end
    
    if sync == nil then
        sync = 0
    end
    
    player:setPVP(teamno,sync)
    
end
