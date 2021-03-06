-----------------------------------
-- Area: Bastok_Mines
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[tpz.zone.BASTOK_MINES] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED        = 6382, -- You cannot obtain the <item>. Come back after sorting your inventory.
        FULL_INVENTORY_AFTER_TRADE     = 6386, -- You cannot obtain the <item>. Try trading again after sorting your inventory.
        ITEM_OBTAINED                  = 6388, -- Obtained: <item>.
        GIL_OBTAINED                   = 6389, -- Obtained <number> gil.
        KEYITEM_OBTAINED               = 6391, -- Obtained key item: <keyitem>.
        KEYITEM_LOST                   = 6392, -- Lost key item: <keyitem>.
        NOT_HAVE_ENOUGH_GIL            = 6393, -- You do not have enough gil.
        YOU_MUST_WAIT_ANOTHER_N_DAYS   = 6424, -- You must wait another ≺number≻ [day/days] to perform that action.
        CARRIED_OVER_POINTS            = 6427, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY        = 6428, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!<space>
        LOGIN_NUMBER                   = 6429, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        HOMEPOINT_SET                  = 6479, -- Home point set!
        YOU_ACCEPT_THE_MISSION         = 6508, -- You have accepted the mission.
        ORIGINAL_MISSION_OFFSET        = 6513, -- You can consult the Mission section of the main menu to review your objectives. Speed and efficiency are your priorities. Dismissed.
        CONQUEST_BASE                  = 6581, -- Tallying conquest results...
        MARIADOK_DIALOG                = 6740, -- Your fate rides on the changing winds of Vana'diel. I can give you insight on the local weather.
        MOG_LOCKER_OFFSET              = 6848, -- Your Mog Locker lease is valid until <timestamp>, kupo.
        ALCHEMY_SUPPORT                = 7053, -- Your [fishing/woodworking/smithing/goldsmithing/clothcraft/leatherworking/bonecraft/alchemy/cooking] skills went up [a little/ever so slightly/ever so slightly].
        HEMEWMEW_DIALOG                = 7060, -- Hello, [sir/ma'am]. I have been appointed by the Guildworkers' Union to manage the trading of manufactured crafts and the exchange of guild points.
        GUILD_TERMINATE_CONTRACT       = 7067, -- You have terminated your trading contract with the [Fishermen's/Carpenters'/Blacksmiths'/Goldsmiths'/Weavers'/Tanners'/Boneworkers'/Alchemists'/Culinarians'] Guild and formed a new one with the [Fishermen's/Carpenters'/Blacksmiths'/Goldsmiths'/Weavers'/Tanners'/Boneworkers'/Alchemists'/Culinarians'] Guild.
        GUILD_NEW_CONTRACT             = 7075, -- You have formed a new trading contract with the [Fishermen's/Carpenters'/Blacksmiths'/Goldsmiths'/Weavers'/Tanners'/Boneworkers'/Alchemists'/Culinarians'] Guild.
        NO_MORE_GP_ELIGIBLE            = 7082, -- You are not eligible to receive guild points at this time.
        GP_OBTAINED                    = 7087, -- Obtained: <number> guild points.
        NOT_HAVE_ENOUGH_GP             = 7088, -- You do not have enough guild points.
        RENOUNCE_CRAFTSMAN             = 7104, -- You have successfully renounced your status as a ≺Multiple Choice (Parameter 5)≻[craftsman/artisan/adept] of the ≺Multiple Choice (Parameter 1)≻[Carpenters'/Blacksmiths'/Goldsmiths'/Weavers'/Tanners'/Boneworkers'/Alchemists'/Culinarians'] Guild.
        REGIME_CANCELED                = 7269, -- Current training regime canceled.
        HUNT_ACCEPTED                  = 7287, -- Hunt accepted!
        USE_SCYLDS                     = 7288, -- You use <number> [scyld/scylds]. Scyld balance: <number>.
        HUNT_RECORDED                  = 7299, -- You record your hunt.
        OBTAIN_SCYLDS                  = 7301, -- You obtain <number> [scyld/scylds]! Current balance: <number> [scyld/scylds].
        HUNT_CANCELED                  = 7305, -- Hunt canceled.
        ITEM_DELIVERY_DIALOG           = 10435, -- Need something sent to a friend's house? Sending items to your own house? You've come to the right place!
        DETZO_RIVALS_DIALOG            = 10586, -- Can I borrow it for just a few seconds? I'll give it back, promise! I'll even give you a reward!
        FAUSTIN_CLOSED_DIALOG          = 10779, -- Sorry, I don't have anything to sell you. I'm trying to start a business selling goods from Ronfaure, but it's not easy getting stuff from areas that aren't under Bastokan control.
        RODELLIEUX_CLOSED_DIALOG       = 10780, -- Sorry, I don't have anything to sell you. I'm trying to start a business selling goods from Fauregandi, but it's not easy getting stuff from areas that aren't under Bastokan control.
        MILLE_CLOSED_DIALOG            = 10781, -- Sorry, I don't have anything to sell you. I'm trying to start a business selling goods from Norvallen, but it's not easy getting stuff from areas that aren't under Bastokan control.
        TIBELDA_CLOSED_DIALOG          = 10782, -- Sorry, I don't have anything to sell you. I'm trying to start a business selling goods from Valdeaunia, but it's not easy getting stuff from areas that aren't under Bastokan control.
        GALDEO_CLOSED_DIALOG           = 10783, -- Sorry, I don't have anything to sell you. I'm trying to start a business selling goods from Li'Telor, but it's not easy getting stuff from areas that aren't under Bastokan control.
        TAMI_MY_HUSBAND                = 10785, -- My husband's name is Zelman. You'll find him in the Zeruhn Mines. He's a miner. All right, then, off you go!
        FISHING_MESSAGE_OFFSET         = 10800, -- You can't fish here.
        DEEGIS_SHOP_DIALOG             = 10900, -- The only things an adventurer needs are courage and a good suit of armor! Welcome to Deegis's Armour!
        ZEMEDARS_SHOP_DIALOG           = 10901, -- Everything in our store is top-grade and Galka-made! What're you lookin' for?
        BOYTZ_SHOP_DIALOG              = 10902, -- Welcome to Boytz's Knickknacks.
        GELZERIO_SHOP_DIALOG           = 10903, -- ...Yes?
        GRISELDA_SHOP_DIALOG           = 10904, -- Good of you to drop by the Bat's Lair Inn! Why don't you try some of our specialty plates?
        NEIGEPANCE_SHOP_DIALOG         = 10905, -- Hello there. A well-fed chocobo is a happy chocobo!
        FAUSTIN_OPEN_DIALOG            = 10906, -- Hello there! Might I interest you specialty goods from Ronfaure?
        MILLE_OPEN_DIALOG              = 10907, -- Hello there! Might I interest you specialty goods from Norvallen?
        RODELLIEUX_OPEN_DIALOG         = 10908, -- Hello there! Might I interest you specialty goods from Fauregandi?
        TIBELDA_OPEN_DIALOG            = 10909, -- Goods of all varieties, imported directly from the northern land of Valdeaunia!
        MAYMUNAH_SHOP_DIALOG           = 10910, -- Welcome to the Alchemists' Guild! Looking for something specific?
        ODOBA_SHOP_DIALOG              = 10911, -- Welcome to the Alchemists' Guild. How may I help you?
        VIRNAGE_DIALOG_1               = 10982, -- They stayed in a citadel on the Sauromugue Champaign. The paint may be there still! I have heard people here say you are a great adventurer. Please, help the Goddess in Her hour of need!
        VIRNAGE_DIALOG_2               = 10988, -- Hand my letter to Eperdur in the San d'Oria Cathedral to claim your reward.
        CONQUEST                       = 11111, -- You've earned conquest points!
        FESTIVE_MOOGLE_DIALOG          = 14441, -- Welcome, kupo!
        GALDEO_OPEN_DIALOG             = 11471, -- Come! Take a look at all the wonderful goods from Li'Telor.
        AULAVIA_OPEN_DIALOG            = 11472, -- May I interest you in some specialty goods from Vollbow?
        AULAVIA_CLOSED_DIALOG          = 11473, -- I'm trying to start a business selling goods from Vollbow, but it's not easy getting stuff from areas that aren't under Bastokan control.
        EXTENDED_MISSION_OFFSET        = 11614, -- Go to Ore Street and talk to Medicine Eagle. He says he was there when the commotion started.
        PROUDBEARD_SHOP_DIALOG         = 11642, -- Would you be interested in a nice suit of adventurer-issue armor? Be careful when you buy, though. We offer no refunds.
        TRICK_OR_TREAT                 = 11686, -- Trick or treat...
        THANK_YOU_TREAT                = 11687, -- Thank you... And now for your treat...
        HERE_TAKE_THIS                 = 11688, -- Here, take this...
        IF_YOU_WEAR_THIS               = 11689, -- If you put this on and walk around, something...unexpected might happen...
        THANK_YOU                      = 11690, -- Thank you...
        GROUND_STRIKE_LEARNED          = 11712, -- You have learned the weapon skill Ground Strike!
        CONNECTING_WITH_THE_SERVER     = 11717, -- Connecting with the server. Please wait.
        UNABLE_TO_CONNECT              = 11718, -- Unable to connect
        ANOTHER_GROUP                  = 11720, -- Another group of players is currently occupying [Dummy/San d'Oria/Bastok/Windurst/Jeuno/Beaucedine/Xarcabard/Valkurm/Buburimu/Qufim/Tavnazia].
        INFORMATION_RECORDED           = 11721,
        YOU_CANNOT_ENTER_DYNAMIS       = 11725, -- You cannot enter Dynamis - [Dummy/San d'Oria/Bastok/Windurst/Jeuno/Beaucedine/Xarcabard/Valkurm/Buburimu/Qufim/Tavnazia] for <number> [day/days] (Vana'diel time).
        PLAYERS_HAVE_NOT_REACHED_LEVEL = 11727, -- Players who have not reached level <number> are prohibited from entering Dynamis.
        DYNA_NPC_DEFAULT_MESSAGE       = 11738, -- There is an unusual arrangement of pebbles here.
        THE_GATE_IS_LOCKED             = 12160, -- The gate is locked.
        EMALIVEULAUX_COP_NOT_COMPLETED = 12241, -- I'd like to start my own business someday, but I just haven't found anything that truly interests me.
        EMALIVEULAUX_OPEN_DIALOG       = 12242, -- Rare Tavnazian imports! Get them before they're gone!
        EMALIVEULAUX_CLOSED_DIALOG     = 12243, -- I'd love to sell you goods imported from the island of Tavnazia, but with the area under foreign control, I can't secure my trade routes...
        COMMON_SENSE_SURVIVAL          = 15996, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
        TEAR_IN_FABRIC_OF_SPACE        = 16593, -- There appears to be a tear in the fabric of space...
        -- Starlight Celebration Dialog -- 
        GIFT_THANK_YOU                 = 12248, -- Thank you! Thank you! Thank you!
        ONLY_TWO_HANDS                 = 12251, -- Another present? Sorry, but I only have two hands, (Player Gender)≻[Mr./Ms.] Adventurer!
        JOY_TO_CHILDREN                = 12255, -- You've brought joy to the children of Vana'diel!
        BARRELS_JOY_TO_CHILDREN        = 12256, -- You've brought barrelfuls of joy to the children of Vana'diel!
        STARLIGHT_CARD_1               = 12374, -- It's time once again for the Starlight Celebration!≺Prompt≻
        STARLIGHT_CARD_2               = 15550, -- Kupo ho ho! Merry Starlight! As with past celebrations, we've prepared a veritable mountain of presents for all adventurers, kupo.≺Prompt≻
        STARLIGHT_CARD_3               = 15591, -- We'd also appreciate your help in distributing cards, kupo. All you're required to do is deliver this card to the addressee. We're counting on you!≺Prompt≻
        STARLIGHT_CARD_4               = 15587, -- If you happen to forget who the card's recipient is, just show it to me, kupo.≺Prompt≻
        STARLIGHT_CARD_5               = 15586, -- You're truly a role model for all adventurers, kupo! Now then, we'd like you to take this card and give it to a ≺Multiple Choice (Parameter 0)≻[male Hume/female Hume/male Elvaan/female Elvaan/male Tarutaru/female Tarutaru/Mithra/Galka] adventurer.≺Prompt≻
        STARLIGHT_CARD_6               = 15571, -- Happy delivering, kupo!≺Prompt≻
        STARLIGHT_CARD_CHECK           = 15588, -- Let' see... This addressee of this card is a ≺Multiple Choice (Parameter 0)≻[male Hume/female Hume/male Elvaan/female Elvaan/male Tarutaru/female Tarutaru/Mithra/Galka] adventurer, kupo.≺Prompt≻
        STARLIGHT_CARD_RED             = 12381, -- Oh, I just remembered! I think that the cards are all addressed to people who are wearing red...≺Prompt≻
        STARLIGHT_CARD_WRONG           = 15589, -- Are you trying to pull a fast one, kupo!? This card isn't yours to give, nor is it addressed to you, so please take it back to where you found it.≺Prompt≻
        STARLIGHT_CARD_CONFIRM         = 15577, -- Here's a little something for your kindness.≺Prompt≻
        STARLIGHT_FAME_DIALOG          = 12398, -- ≺Multiple Choice (Parameter 1)≻[You haven't brought any happiness to the children!/You've done some good./You've done fairly well./You've made the children very happy!/You've brought lots of smiles!/You have the children bursting with glee!/The children love you!] ≺Multiple Choice (Parameter 1)≻[What a disappointment./You just need to give a little extra effort!/Keep it up!/You make a good smilebringer./Excellent work!/Stupendous job!/Even I think you're great!]≺Prompt≻
    },
    mob =
    {
    },
    npc =
    {
        HALLOWEEN_SKINS =
        {
            [17735742] = 365, -- Faustin | Hound
            [17735744] = 644, -- Mille | Quadav
            [17735747] = 368, -- Aulavia | Ghost
            [17735795] = 535, -- Proud Beard | Shade
            [17735818] = 564, -- Emaliveulaux | Skeleton
        },
        HALLOWEEN_DECORATIONS =
        {
            [17735939] = 17735939,  -- Halloween Decorations
            [17735940] = 17735940,  -- Halloween Decorations
            [17735941] = 17735941,  -- Halloween Decorations
            [17735962] = 17735962,  -- Event Moogle Stall
            [17735961] = 17735961,  -- Festive Moogle
        },
        STARLIGHT_DECORATIONS = 
        {
            [17735951] = 17735951,  -- Starlight Festival Planter
            [17735952] = 17735952,  -- Starlight Festival Planter
            [17735953] = 17735953,  -- Starlight Festival Planter
            [17735954] = 17735954,  -- Starlight Festival Planter
            [17735955] = 17735955,  -- Starlight Festival Planter
            [17735956] = 17735956,  -- Starlight Festival Planter
            [17735950] = 17735950,  -- Christina
            [17735777] = 17735777,  -- Event Moogle
        },
        EGG_HUNT_DECORATIONS = 
        {
            [17735921] = 17735921,  -- Egg Hunt Egg-stravaganza Pole
            [17735922] = 17735922,  -- Egg Hunt Egg-stravaganza Pole
            [17735923] = 17735923,  -- Egg Hunt Egg-stravaganza Pole
            [17735924] = 17735924,  -- Egg Hunt Egg-stravaganza Pole
        },
        SUNBREEZE_FESTIVAL_DECORATIONS = 
        {
            [17735938] = 17735938,  -- Sunbreeze Festival Fireworks
        },
        NEW_YEARS_DECORATIONS = 
        {
            [17735934] = 17735934,  -- New Years Standing Tree
            [17735935] = 17735935,  -- New Years Standing Tree
            [17735936] = 17735936,  -- New Years Standing Tree
            [17735937] = 17735937,  -- New Years Standing Tree
        },
        LELEROON_BLUE_DOOR = 17735847,
        EXPLORER_MOOGLE    = 17735856,
    },
}

return zones[tpz.zone.BASTOK_MINES]
