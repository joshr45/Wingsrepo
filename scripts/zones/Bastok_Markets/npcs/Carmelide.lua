-----------------------------------
-- Area: Bastok Markets
--  NPC: Carmelide
-- Standard Merchant NPC
-- !pos -151.693 -4.819 -69.635 235
-----------------------------------
local ID = require("scripts/zones/Bastok_Markets/IDs")
require("scripts/globals/shop")

function onTrigger(player,npc)
    local stock =
    {
        806, 1676, 2,    -- Tourmaline
        807, 1676, 2,    -- Sardonyx
        800, 1676, 2,    -- Amethyst
        814, 1676, 2,    -- Amber
        795, 1676, 2,    -- Lapis Lazuli
        809, 1676, 2,    -- Clear Topaz
        799, 1676, 2,    -- Onyx
        796, 1676, 2,    -- Light Opal
        13454, 69, 3,    -- Copper Ring
    }

    player:showText(npc, ID.text.CARMELIDE_SHOP_DIALOG)
    tpz.shop.nation(player, stock, tpz.nation.BASTOK)
end
