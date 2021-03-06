-----------------------------------
-- Area: Dynamis-Bastok
-----------------------------------
require("scripts/globals/keyitems")
require("scripts/globals/dynamis")
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[tpz.zone.DYNAMIS_BASTOK] =
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
        NO_LONGER_HAVE_CLEARANCE= 7053, -- You no longer have clearance to remain in Dynamis. You will be transported out in [x] second/seconds.
        CONQUEST_BASE           = 7155, -- Tallying conquest results...
        DYNAMIS_TIME_BEGIN      = 7314, -- The sands of the <item> have begun to fall. You have <number> minutes (Earth time) remaining in Dynamis.
        DYNAMIS_TIME_EXTEND     = 7315, -- our stay in Dynamis has been extended by <number> minute[/s].
        DYNAMIS_TIME_UPDATE_1   = 7316, -- ou will be expelled from Dynamis in <number> [second/minute] (Earth time).
        DYNAMIS_TIME_UPDATE_2   = 7317, -- ou will be expelled from Dynamis in <number> [seconds/minutes] (Earth time).
        DYNAMIS_TIME_EXPIRED    = 7319, -- The sands of the hourglass have emptied...
        OMINOUS_PRESENCE        = 7330, -- You feel an ominous presence, as if something might happen if you possessed <item>.
    },
    npc =
    {
        QM =
        {
            [17539322] =
            {
                param = {3354, 3409, 3410, 3411, 3412, 3413},
                trade =
                {
                    {item = 3354,                           mob = 17539073}, -- Gu'Dha Effigy
                    {item = {3409, 3410, 3411, 3412, 3413}, mob = 17539312}, -- Arch Gu'Dha Effigy
                }
            },
            [17539323] = {trade = {{item = 3384, mob = 17539307}}}, -- Zo'Pha Forgesoul
            [17539324] = {trade = {{item = 3385, mob = 17539308}}}, -- Ra'Gho Darkfount
            [17539325] = {trade = {{item = 3386, mob = 17539310}}}, -- Va'Zhe Pummelsong
            [17539326] = {trade = {{item = 3387, mob = 17539311}}}, -- Bu'Bho Truesteel
        },
    },
}

return zones[tpz.zone.DYNAMIS_BASTOK]
