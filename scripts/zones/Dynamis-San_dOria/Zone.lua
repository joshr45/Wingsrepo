-----------------------------------
--
-- Zone: Dynamis-San_dOria
--
-----------------------------------
local ID = require("scripts/zones/Dynamis-San_dOria/IDs")
require("scripts/globals/conquest")
require("scripts/globals/dynamis")
-----------------------------------

function onInitialize(zone)
    dynamis.zoneOnInitialize(zone)
end

function onConquestUpdate(zone, updatetype)
    tpz.conq.onConquestUpdate(zone, updatetype)
end

function onZoneIn(player, prevZone)
    return dynamis.zoneOnZoneIn(player, prevZone)
end

function onRegionEnter(player, region)
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
end
