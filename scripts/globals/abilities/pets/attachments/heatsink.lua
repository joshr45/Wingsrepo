-----------------------------------
-- Attachment: Heatsink
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEquip(pet)
    pet:addMod(tpz.mod.FIRE_BURDEN_DECAY, 6)
end

function onUnequip(pet)
    pet:delMod(tpz.mod.FIRE_BURDEN_DECAY, 6)
end

function onManeuverGain(pet, maneuvers)
    --[[
    if maneuvers == 1 then
        pet:addMod(tpz.mod.FIRE_BURDEN_DECAY, 2)
    elseif maneuvers == 2 then
        pet:addMod(tpz.mod.FIRE_BURDEN_DECAY, 1)
    elseif maneuvers == 3 then
        pet:addMod(tpz.mod.FIRE_BURDEN_DECAY, 1)
    end
    ]]
end

function onManeuverLose(pet, maneuvers)
    --[[
    if maneuvers == 1 then
        pet:delMod(tpz.mod.FIRE_BURDEN_DECAY, 2)
    elseif maneuvers == 2 then
        pet:delMod(tpz.mod.FIRE_BURDEN_DECAY, 1)
    elseif maneuvers == 3 then
        pet:delMod(tpz.mod.FIRE_BURDEN_DECAY, 1)
    end
    ]]
end
