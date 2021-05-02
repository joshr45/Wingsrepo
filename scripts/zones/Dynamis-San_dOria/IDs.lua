-----------------------------------
-- Area: Dynamis-San_dOria
-----------------------------------
require("scripts/globals/keyitems")
require("scripts/globals/dynamis")
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[tpz.zone.DYNAMIS_SAN_DORIA] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED = 6382, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED           = 6388, -- Obtained: <item>.
        GIL_OBTAINED            = 6389, -- Obtained <number> gil.
        KEYITEM_OBTAINED        = 6391, -- Obtained key item: <keyitem>.
        NOTHING_OUT_OF_ORDINARY = 6402, -- There is nothing out of the ordinary here.
        CARRIED_OVER_POINTS     = 6999, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY = 7000, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!<space>
        LOGIN_NUMBER            = 7001, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        CONQUEST_BASE           = 7055, -- Tallying conquest results...
        DYNAMIS_TIME_BEGIN      = 7214, -- The sands of the <item> have begun to fall. You have <number> minutes (Earth time) remaining in Dynamis.
        DYNAMIS_TIME_EXTEND     = 7215, -- our stay in Dynamis has been extended by <number> minute[/s].
        DYNAMIS_TIME_UPDATE_1   = 7216, -- ou will be expelled from Dynamis in <number> [second/minute] (Earth time).
        DYNAMIS_TIME_UPDATE_2   = 7217, -- ou will be expelled from Dynamis in <number> [seconds/minutes] (Earth time).
        DYNAMIS_TIME_EXPIRED    = 7219, -- The sands of the hourglass have emptied...
        OMINOUS_PRESENCE        = 7230, -- You feel an ominous presence, as if something might happen if you possessed <item>.
    },
    npc =
    {
        QM =
        {
            [17535223] =
            {
                param = {3353, 3404, 3405, 3406, 3407, 3408},
                trade =
                {
                    {item = 3353,                           mob = 17534977}, -- Overlord's Tombstone
                    {item = {3404, 3405, 3406, 3407, 3408}, mob = 17535213}, -- Arch Overlord Tombstone
                }
            },
            [17535224] = {trade = {{item = 3380, mob = 17535207}}}, -- Bladeburner Rokgevok
            [17535225] = {trade = {{item = 3381, mob = 17535208}}}, -- Steelshank Kratzvatz
            [17535226] = {trade = {{item = 3382, mob = 17535210}}}, -- Bloodfist Voshgrosh
            [17535227] = {trade = {{item = 3383, mob = 17535211}}}, -- Spellspear Djokvukk
        },
    },
}

return zones[tpz.zone.DYNAMIS_SAN_DORIA]
