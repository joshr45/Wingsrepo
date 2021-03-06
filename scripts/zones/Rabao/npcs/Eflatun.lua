-----------------------------------
-- Area: Rabao
--  NPC: Eflatun
-- Standard Info NPC
-----------------------------------
require("scripts/globals/pathfind")
-----------------------------------
local flags = tpz.path.flag.NONE
local path =
{
    -27.722, 2.087, -40.146,
    -27.722, 2.087, -40.146,
    -27.722, 2.087, -40.146,
    -27.722, 2.087, -40.146,
    -27.722, 2.087, -40.146,
    -27.722, 2.087, -40.146,
    -27.722, 2.087, -40.146,
    -27.722, 2.087, -40.146,
    -27.722, 2.087, -40.146,
    -31.931, 0.772, -40.160,
    -31.931, 0.772, -40.160,
    -31.931, 0.772, -40.160,
    -31.931, 0.772, -40.160,
    -31.931, 0.772, -40.160,
    -31.931, 0.772, -40.160,
    -31.931, 0.772, -40.160,
    -31.931, 0.772, -40.160,
    -31.931, 0.772, -40.160,
    -32.677, 0.623, -43.978,
    -32.677, 0.623, -43.978,
    -32.677, 0.623, -43.978,
    -32.677, 0.623, -43.978,
    -36.593, 0.000, -46.357,
    -36.593, 0.000, -46.357,
    -36.593, 0.000, -46.357,
    -36.593, 0.000, -46.357,
    -36.593, 0.000, -46.357,
    -30.784, 0.714, -50.402,
    -30.784, 0.714, -50.402,
    -30.784, 0.714, -50.402,
    -24.458, 3.035, -45.556,
    -24.458, 3.035, -45.556,
    -24.458, 3.035, -45.556,
    -24.458, 3.035, -45.556,
    -24.458, 3.035, -45.556,
}

function onSpawn(npc)
    npc:initNpcAi()
    npc:setPos(tpz.path.first(path))
    onPath(npc)
end

function onPath(npc)
    tpz.path.patrolsimple(npc, path, flags)
end

function onTrade(player, npc, trade)
end

function onTrigger(player, npc)
    player:startEvent(55)
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
end
