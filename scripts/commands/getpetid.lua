---------------------------------------------------------------------------------------------------
-- func: getpetid
-- desc: Prints the ID of the target's pet
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = ""
};

function onTrigger(player)
    local targ = player:getPet();
	local petid = targ:getPetID();

    if (targ ~= nil and petid ~= nil) then
        player:PrintToPlayer(string.format("%s's ID is: %u ", targ:getName(),petid));
    end
	
	if (targ ~= nil and petid == nil) then
		player:PrintToPlayer(string.format("%s's pet ID is nil", targ:getName()));
	end
	
end;
