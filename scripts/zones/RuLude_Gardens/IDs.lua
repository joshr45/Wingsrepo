-----------------------------------
-- Area: RuLude_Gardens
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[tpz.zone.RULUDE_GARDENS] =
{
    text =
    {
        CONQUEST_BASE                    = 0, -- Tallying conquest results...
        ITEM_CANNOT_BE_OBTAINED          = 6522, -- You cannot obtain the <item>. Come back after sorting your inventory.
        FULL_INVENTORY_AFTER_TRADE       = 6526, -- You cannot obtain the <item>. Try trading again after sorting your inventory.
        ITEM_OBTAINED                    = 6528, -- Obtained: <item>.
        GIL_OBTAINED                     = 6529, -- Obtained <number> gil.
        KEYITEM_OBTAINED                 = 6531, -- Obtained key item: <keyitem>.
        KEYITEM_LOST                     = 6532, -- Lost key item: <keyitem>.
        NOT_HAVE_ENOUGH_GIL              = 6533, -- You do not have enough gil.
        ITEMS_OBTAINED                   = 6537, -- You obtain <number> <item>!
        NOTHING_OUT_OF_ORDINARY          = 6542, -- There is nothing out of the ordinary here.
        CARRIED_OVER_POINTS              = 6567, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY          = 6568, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!<space>
        LOGIN_NUMBER                     = 6569, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        YOUR_MAXIMUM_LEVEL               = 6584, -- Your maximum level has been raised to [50/55/60/65/70/75/80/85/90/95/99]!
        MOG_LOCKER_OFFSET                = 6692, -- Your Mog Locker lease is valid until <timestamp>, kupo.
        REGIME_CANCELED                  = 6856, -- Current training regime canceled.
        HUNT_ACCEPTED                    = 6874, -- Hunt accepted!
        USE_SCYLDS                       = 6875, -- You use <number> [scyld/scylds]. Scyld balance: <number>.
        HUNT_RECORDED                    = 6886, -- You record your hunt.
        OBTAIN_SCYLDS                    = 6888, -- You obtain <number> [scyld/scylds]! Current balance: <number> [scyld/scylds].
        HUNT_CANCELED                    = 6892, -- Hunt canceled.
        RESTRICTED                       = 10094, -- It reads, Restricted Area.
        SOVEREIGN_WITHOUT_AN_APPOINTMENT = 10167, -- Nobody sees the sovereign without an appointment!
        ITEM_DELIVERY_DIALOG             = 10258, -- Now offering quick and easy delivery of packages to homes everywhere!
        HOMEPOINT_SET                    = 10271, -- Home point set!
        MAAT_DIALOG                      = 10364, -- Heh. You've got no business talking to me. Why, you're just a pup.
        YOUR_LEVEL_LIMIT_IS_NOW_55       = 10375, -- Your level limit is now 55.
        YOUR_LEVEL_LIMIT_IS_NOW_60       = 10387, -- Your level limit is now 60.
        YOUR_LEVEL_LIMIT_IS_NOW_65       = 10396, -- Your level limit is now 65.
        YOUR_LEVEL_LIMIT_IS_NOW_70       = 10438, -- Your level limit is now 70.
        YOUR_LEVEL_LIMIT_IS_NOW_75       = 10497, -- Your level limit is now 75.
        CONQUEST                         = 10558, -- You've earned conquest points!
        DABIHJAJALIOH_SHOP_DIALOG        = 10895, -- Hello therrre. I worrrk for the M&P Market. I'm still new, so I don't know much about selling stuff...
        MACCHI_GAZLITAH_SHOP_DIALOG1     = 10901, -- Hello therrre. I work for the Buffalo Bonanza Ranch. I'm still new, so I don't know much about selling stuff...
        MACCHI_GAZLITAH_SHOP_DIALOG2     = 10902, -- Hello therrre, [handsome/cutie]! The Buffalo Bonanza Ranch has a lot of useful items, just for you!
        MACCHI_GAZLITAH_SHOP_DIALOG3     = 10903, -- Hello therrre, [sir/ma'am]! Business is booming! The Buffalo Bonanza Ranch even made me managerrr of this local shop!
        MACCHI_GAZLITAH_SHOP_DIALOG4     = 10904, -- My new shipment has finally come in. Talk to me, and I can show you what we have!
        CONNECTING_WITH_THE_SERVER       = 11214, -- Connecting with the server. Please wait.
        UNABLE_TO_CONNECT                = 11215, -- Unable to connect
        ANOTHER_GROUP                    = 11217, -- Another group of players is currently occupying [Dummy/San d'Oria/Bastok/Windurst/Jeuno/Beaucedine/Xarcabard/Valkurm/Buburimu/Qufim/Tavnazia].
        INFORMATION_RECORDED             = 11218,
        YOU_CANNOT_ENTER_DYNAMIS         = 11222, -- You cannot enter Dynamis - [Dummy/San d'Oria/Bastok/Windurst/Jeuno/Beaucedine/Xarcabard/Valkurm/Buburimu/Qufim/Tavnazia] for <number> [day/days] (Vana'diel time).
        PLAYERS_HAVE_NOT_REACHED_LEVEL   = 11224, -- Players who have not reached level <number> are prohibited from entering Dynamis.
        DYNA_NPC_DEFAULT_MESSAGE         = 11237, -- There is an unusual arrangement of leaves on the ground.
        YOUR_LEVEL_LIMIT_IS_NOW_80       = 12188, -- Your level limit is now 80!
        YOUR_LEVEL_LIMIT_IS_NOW_85       = 12236, -- Your level limit is now 85!
        YOUR_LEVEL_LIMIT_IS_NOW_90       = 12335, -- Your level limit is now 90!
        YOUR_LEVEL_LIMIT_IS_NOW_95       = 12436, -- Your level limit is now 95!
        WINDURST_EMBASSY                 = 12437, -- I have a letter for you here from none other than Atori-Tutori. It reads, ahem...
        YOUR_LEVEL_LIMIT_IS_NOW_99       = 12516, -- Your level limit is now 99!
        YOU_HAND_THE_THREE_SLIVERS       = 13740, -- You hand the three crystal slivers to Esha'ntarl.
        ITEM_NOT_WEAPON_MAGIAN           = 14495, -- As I advised you previously, my sole specialty is weapons. I have not the moogle magic at my disposal to augment items of this variety, kupo...
        RETURN_MAGIAN_ITEM               = 14515, -- The Magian Moogle returns your <item>.
        COMMON_SENSE_SURVIVAL            = 15682, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
        LS_CONCIERGE_LISTING_CANCEL      = 15713, -- It was my pleasure to meet with you this fine day. May you encounter many friendly faces throughout your travels.
        LS_CONCIERGE_SAME_DAY            = 15717, -- In the interest of fairness, I am unable to distribute multiple linkpearls to someone on the same day. Please come back tomorrow.
        LS_CONCIERGE_REGISTERED1         = 15765, -- Your registration is officially complete.
        LS_CONCIERGE_REGISTERED2         = 15766, -- May your journeys lead you to many as-yet-unmet friends, and may the bonds you forge last a lifetime.
        LS_CONCIERGE_ALREADY_LISTED      = 15767, -- Another member of that linkshell currently has an active registration. Please wait until that registration expires and try again.
        TEAR_IN_FABRIC_OF_SPACE          = 15942, -- There appears to be a tear in the fabric of space...
     },
    mob =
    {
    },
    npc =
    {
    },
}

return zones[tpz.zone.RULUDE_GARDENS]
