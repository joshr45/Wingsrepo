-----------------------------------------
-- ID: 4
-- Item: Mahogany Bed
-- Note: Mog Safe expansion quest item 
-----------------------------------------
require("scripts/globals/common")
require("scripts/globals/quests")
-----------------------------------------

function onFurniturePlaced(player)
    if player:getQuestStatus(OTHER_AREAS_LOG, tpz.quest.id.otherAreas.THE_MOOGLE_PICNIC) == QUEST_AVAILABLE then
        player:setCharVar("[MS2]BedPlaced", getConquestTally())
    end
end

function onFurnitureRemoved(player)
    player:setCharVar("[MS2]BedPlaced", 0)
end
