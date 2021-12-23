---------------------------------------------------------------------------------------------------
-- func: help
-- desc: Prints the help menu
---------------------------------------------------------------------------------------------------

require("scripts/globals/settings")

cmdprops =
{
    permission = 0,
    parameters = ""
};

function error(player, msg)
    --player:PrintToPlayer(msg);
    --player:PrintToPlayer("!help");
end;

function onTrigger(player)
    
    player:PrintToPlayer("== SERVER HELP MENU ==", 29, "", -1)
    player:PrintToPlayer("!help", 29, "", -1)
    player:PrintToPlayer("  Displays this help message.", 29, "", -1)
    if player:isCustomizationEnabled(5) then
        player:PrintToPlayer("!influence", 29, "", -1)
        player:PrintToPlayer("  Displays your nation's current influence multiplier. Nations that", 29, "", -1)
        player:PrintToPlayer("  repeatably come in 2nd or 3rd in conquest will accumulate a bonus.", 29, "", -1)
    end
    if player:isCustomizationEnabled(2) then
        player:PrintToPlayer("!dw", 29, "", -1)
        player:PrintToPlayer("  Sends a packet to your client to show your subjob as NIN so that", 29, "", -1)
        player:PrintToPlayer("  your client will allow you to dual wield. This does not actually", 29, "", -1)
        player:PrintToPlayer("  change your jobs. Toggleable.", 29, "", -1)
    end
    if player:isCustomizationEnabled(1) then
        player:PrintToPlayer("!flip", 29, "", -1)
        player:PrintToPlayer("  Sends a packet to show your main and sub jobs as switched around", 29, "", -1)
        player:PrintToPlayer("  so that your client will allow you to equip items usable by your", 29, "", -1)
        player:PrintToPlayer("  subjob. This does not actually change your jobs. Toggleable.", 29, "", -1)
    end
    if player:isCustomizationEnabled(6) then
        player:PrintToPlayer("!aha", 29, "", -1)
        player:PrintToPlayer("  An AH tool to let you see past your first 7 listings. Type", 29, "", -1)
        player:PrintToPlayer("  '!aha help' for a list of commands and '!aha help [command]'", 29, "", -1)
        player:PrintToPlayer("  for more info.", 29, "", -1)
    end
    player:PrintToPlayer("!flist", 29, "", -1)
    player:PrintToPlayer("  The custom in-game friends list. Type !flist help for a list", 29, "", -1)
    --player:PrintToPlayer("  of commands and !flist help [command] for more info.", 29, "", -1)
    if player:isCustomizationEnabled(3) then
        player:PrintToPlayer("!duel", 29, "", -1)
        player:PrintToPlayer("  PVP function to join a team ('!duel blue' or '!duel green')", 29, "", -1)
    end
    player:PrintToPlayer("!unstuck", 29, "", -1)
    player:PrintToPlayer("  In case you are stuck under the map, this sends you.", 29, "", -1)
    player:PrintToPlayer("  back to your homepoint. To prevent abuse your character", 29, "", -1)
    player:PrintToPlayer("  will be frozen in place for 20 minutes before teleportation.", 29, "", -1)
    player:PrintToPlayer("  The use of this command is logged and monitored.", 29, "", -1)
    player:PrintToPlayer("!re", 29, "", -1)
    player:PrintToPlayer("  Reloads the party list in the case of it loading improperly.", 29, "", -1)
    if SERVER_LINKSHELL ~= nil and SERVER_LINKSHELL > 0 then
        player:PrintToPlayer("!addls", 29, "", -1)
        player:PrintToPlayer("  Gives you a pearl to the server linkshell.", 29, "", -1)
        player:PrintToPlayer("  Use this command to reobtain the pearl if accidentaly dropped.", 29, "", -1)
    end
    if ALL_MAPS ~= nil and ALL_MAPS > 0 then
        player:PrintToPlayer("!maps", 29, "", -1)
        player:PrintToPlayer("  Gives you the maps of all zones.", 29, "", -1)
        player:PrintToPlayer("  Players are generally given all maps on character creation.", 29, "", -1)
        player:PrintToPlayer("  Only use this command if you do not already have them.", 29, "", -1)
    end
    player:PrintToPlayer("!vercheck", 29, "", -1)
    player:PrintToPlayer("  Checks if you are running the correct client version.", 29, "", -1)
    player:PrintToPlayer("  Bug reports will not be accepted unless the correct client", 29, "", -1)
    player:PrintToPlayer("  version is used.", 29, "", -1)

end
