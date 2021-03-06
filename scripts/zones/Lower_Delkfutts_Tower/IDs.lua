-----------------------------------
-- Area: Lower_Delkfutts_Tower
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[tpz.zone.LOWER_DELKFUTTS_TOWER] =
{
    text =
    {
        CONQUEST_BASE                    = 0,     -- Tallying conquest results...
        THE_DOOR_IS_FIRMLY_SHUT_OPEN_KEY = 159,   -- The door is firmly shut. You might be able to open it if you had the key.
        DOOR_FIRMLY_SHUT                 = 160,   -- The door is firmly shut.
        ITEM_CANNOT_BE_OBTAINED          = 6571,  -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                    = 6577,  -- Obtained: <item>.
        GIL_OBTAINED                     = 6578,  -- Obtained <number> gil.
        KEYITEM_OBTAINED                 = 6580,  -- Obtained key item: <keyitem>.
        FELLOW_MESSAGE_OFFSET            = 6606,  -- I'm ready. I suppose.
        CARRIED_OVER_POINTS              = 7188,  -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY          = 7189,  -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!<space>
        LOGIN_NUMBER                     = 7190,  -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        CANNOT_ENTER_LEVEL_RESTRICTED    = 7210, -- Your party is unable to participate because certain members' levels are restricted.
        FISHING_MESSAGE_OFFSET           = 7238,  -- You can't fish here.
        CRYSTAL_PULSATES                 = 7737,  -- The crystal pulsates with an otherworldly energy...
        CRYSTAL_VACUUM                   = 7738,  -- As you approach, the overwhelming force of a vacuum threatens to suck you inside the crystal...
        LIGHT_ENVELOP                    = 7740,  -- A shaft of light surges from the crystal and envolops your body!
        CRYSTAL_BECKONS                  = 7741,  -- The will of the crystal beckons you...
        LIGHT_DISSIPATE                  = 7743,  -- The crystalline light surrounding your body dissipates and vanishes!
        STONE_GLITTERS                   = 7744,  -- A stone glitters before you...
        STONE_ILLUSION                   = 7745,  -- Your hand passes through the stone as if it were but an illusion...
        PLAYER_OBTAINS_ITEM              = 8621,  -- <name> obtains <item>!
        UNABLE_TO_OBTAIN_ITEM            = 8622,  -- You were unable to obtain the item.
        PLAYER_OBTAINS_TEMP_ITEM         = 8623,  -- <name> obtains the temporary item: <item>!
        ALREADY_POSSESS_TEMP             = 8624,  -- You already possess that temporary item.
        NO_COMBINATION                   = 8629,  -- You were unable to enter a combination.
        REGIME_REGISTERED                = 10707, -- New training regime registered!
        COMMON_SENSE_SURVIVAL            = 11764, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },
    mob =
    {
        HIPPOLYTOS_PH =
        {
            [17531000] = 17530999, -- 337.079 -16.1 17.386
            [17531002] = 17530999, -- 346.244 -16.126 10.373
        },
        EPIALTES_PH   =
        {
            [17530882] = 17530881, -- 432.952 -0.350 -3.719
            [17530887] = 17530881, -- 484.735 0.046 23.048
        },
        EURYMEDON_PH  =
        {
            [17531118] = 17531114, -- 397.252 -32.128 -32.807
        },
        DISASTER_IDOL = 17531121,
    },
    npc =
    {
        CASKET_BASE = 17531134,
    },
}

return zones[tpz.zone.LOWER_DELKFUTTS_TOWER]
