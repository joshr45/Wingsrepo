-----------------------------------
--
-- Zone: Gustav Tunnel (212)
--
-----------------------------------
local ID = require("scripts/zones/Gustav_Tunnel/IDs")
require("scripts/globals/conquest")
-----------------------------------

function onInitialize(zone)
    UpdateNMSpawnPoint(ID.mob.BUNE)
	local bunere = GetServerVariable("BuneRespawn")
	if os.time() < bunere then
		GetMobByID(ID.mob.BUNE):setRespawnTime(bunere - os.time())
	else
		SpawnMob(ID.mob.BUNE)
	end
end

function onConquestUpdate(zone, updatetype)
    tpz.conq.onConquestUpdate(zone, updatetype)
end

function onZoneIn(player, prevZone)
    local cs = -1
    if (player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0) then
        player:setPos(-260.013, -21.802, -276.352, 205)
    end
    return cs
end

function onRegionEnter(player, region)
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
end
