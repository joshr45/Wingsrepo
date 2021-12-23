--------------------------------------------------------
-- (C) 2010 Wings Project.                            --
-- Hook system.                                       --
-- Create a file called hook-<name> and set <name>    --
-- in settings and it'll be included when including   --
-- this file.                                         --
--------------------------------------------------------

require("scripts/globals/settings")

if HOOK_FILE_NAME ~= nil and HOOK_FILE_NAME ~= "" then
    require("scripts/globals/hook-" .. HOOK_FILE_NAME)
end

--[[

Documentation of current hooks:
function hookOnCharCreate(player)
Called after the character creation script ends.

function hookOnLoadTeleports()
Called when the teleports global is loaded

]]
