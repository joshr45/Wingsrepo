-----------------------------------------
-- ID: ...
-- New Years Gift
-- 
-----------------------------------------

require("scripts/globals/npc_util")
require("scripts/globals/status")

function onItemCheck(target)
    local result = 0
    if (target:getFreeSlotsCount() == 0) then
        result = 308
    end
    return result
end

function rollMaterial(target)
	local itemid = 0
	local quantity = 0
	local roll = math.random(1,395)
	local subroll = 0
	--local crystalroll = math.random(1,12)
	local crystalroll = 2
	local ID = zones[target:getZoneID()]
	
	if crystalroll == 1 then
		roll = 0
		subroll = math.random(1,4)
		quantity = 12
		if subroll == 1 then
			itemid = 4102 -- light crystal
		elseif subroll == 2 then
			itemid = 4103 -- dark crystal
		elseif subroll == 3 then
			itemid = 4097 -- ice crystal
		else
			itemid = 4096 -- fire crystal
		end
	end
	
	-- !! SMITHING !! --
	
	if roll == 1 then
		itemid = 655 -- adaman ingot
		quantity = math.random(3,7)
	elseif roll == 2 then
		itemid = 646 -- adaman ore
		quantity = 12
	elseif roll == 3 or roll == 94 then
		itemid = 649 -- bronze ingot
		quantity = 12
	elseif roll == 4 then
		itemid = 660 -- bronze sheet
		quantity = 12
	elseif roll == 5 then
		itemid = 648 -- copper ingot
		quantity = 12
	elseif roll == 6 then
		itemid = 640 -- copper ore
		quantity = 12
	elseif roll == 7 then
		itemid = 757 -- durium ingot
		quantity = 12
	elseif roll == 8 or roll == 95 or roll == 96 or roll == 97 then
		itemid = 654 -- darksteel ingot
		quantity = 12
	elseif roll == 9 then
		itemid = 664 -- darksteel sheet
		quantity = 12
	elseif roll == 10 or roll == 98 then
		itemid = 645 -- darksteel ore
		quantity = 12
	elseif roll == 11 then
		itemid = 1654 -- igneous rock, lul
		quantity = 12
	elseif roll == 12 or (roll >= 99 and roll <= 106) then
		itemid = 651 -- iron ingot
		quantity = 12
	elseif roll == 13 or roll == 107 or roll == 108 then
		itemid = 643 -- iron ore
		quantity = 12
	elseif roll == 14 then
		itemid = 662 -- iron sheet
		quantity = 12
	elseif roll == 15 then
		itemid = 674 -- iron scales
		quantity = 12
	elseif roll == 16 or roll == 109 then
		itemid = 680 -- iron chain
		quantity = 12
	elseif roll == 17 or roll == 110 then
		itemid = 1155 -- iron sand
		quantity = 12
	elseif roll == 18 then
		itemid = 1711 -- molyb ingot
		quantity = math.random(2,5)
	elseif roll == 19 then
		itemid = 1635 -- paktong ingot
		quantity = math.random(2,6)
	elseif roll == 20 or (roll >= 111 and roll <= 118)then
		itemid = 652 -- steel ingot
		quantity = 12
	elseif roll == 21 then
		itemid = 666 -- steel sheet
		quantity = 12
	elseif roll == 22 or roll == 119 or roll == 120 then
		itemid = 657 -- tama-hagane
		quantity = 12
	elseif roll == 23 then
		itemid = 659 -- tin ingot
		quantity = 12
	elseif roll == 24 then
		itemid = 641 -- tin ore
		quantity = 12
		
	-- !! GOLDSMITHING !! --
		
	elseif roll == 25 then
		itemid = 2418 -- AU Brass Ingot
		quantity = 12
	elseif roll == 26 then
		itemid = 679 -- aluminum ingot
		quantity = 12
	elseif roll == 27 then
		itemid = 684 -- aluminum chain
		quantity = 12
	elseif roll == 28 then
		itemid = 678 -- alum ore
		quantity = 12
	elseif roll == 29 then
		itemid = 814 -- amber
		quantity = 12
	elseif roll == 30 then
		itemid = 800 -- amethyst
		quantity = 12
	elseif roll == 31 then
		itemid = 815 -- sphene
		quantity = math.random(3,6)
	elseif roll == 32 then
		itemid = 801 -- chrysoberyl
		quantity = math.random(3,6)
	elseif roll == 33 then
		itemid = 789 -- topaz
		quantity = math.random(3,6)
	elseif roll == 34 then
		itemid = 811 -- ametrine
		quantity = math.random(3,6)
	elseif roll == 35 then
		itemid = 810 -- fluorite
		quantity = math.random(3,6)
	elseif roll == 36 then
		itemid = 804 -- spinel
		quantity = math.random(3,6)
	elseif roll == 37 then
		itemid = 796 -- light opal
		quantity = 12
	elseif roll == 38 then
		itemid = 802 -- moonstone
		quantity = math.random(3,6)
	elseif roll == 39 then
		itemid = 813 -- angelstone
		quantity = math.random(3,6)
	elseif roll == 40 then
		itemid = 795 -- lapis
		quantity = 12
	elseif roll == 41 then
		itemid = 798 -- turqoise
		quantity = math.random(3,6)
	elseif roll == 42 then
		itemid = 791 -- aquamarine
		quantity = math.random(3,6)
	elseif roll == 43 then
		itemid = 794 -- sapphire
		quantity = math.random(3,6)
	elseif roll == 44 then
		itemid = 8922 -- garutear $$$
		quantity = math.random(6,12)
	elseif roll == 45 then
		itemid = 793 -- black pearl
		quantity = math.random(3,8)
	elseif roll == 46 then
		itemid = 775 -- black rock
		quantity = 12
	elseif roll == 47 then
		itemid = 776 -- white rock
		quantity = 12
	elseif roll == 48 or (roll >= 121 and roll <= 128) then
		itemid = 650 -- brass ingot
		quantity = 12
	elseif roll == 49 then
		itemid = 661 -- brass sheet
		quantity = 12
	elseif roll == 50 then
		itemid = 809 -- clear topaz
		quantity = 12
	elseif roll == 51 then
		itemid = 808 -- goshenite
		quantity = math.random(3,6)
	elseif roll == 52 then
		itemid = 805 -- zircon
		quantity = math.random(3,6)
	elseif roll == 53 then
		itemid = 787 -- diamond
		quantity = math.random(3,6)
	elseif roll == 54 then
		itemid = 799 -- onyx
		quantity = 12
	elseif roll == 55 then
		itemid = 797 -- painite
		quantity = math.random(3,6)
	elseif roll == 56 then
		itemid = 812 -- deathstone
		quantity = math.random(3,6)
	elseif roll == 57 then
		--bead
		subroll = math.random(1,8)
		itemid = 1298 + subroll
		quantity = 3
	elseif roll == 58 then
		itemid = 2536 -- electrum ingot
		quantity = 12
	elseif roll == 59 then
		itemid = 807 -- sardonyx
		quantity = 12
	elseif roll == 60 then
		itemid = 790 -- garnet
		quantity = math.random(3,6)
	elseif roll == 61 then
		itemid = 803 -- sunstone
		quantity = math.random(3,6)
	elseif roll == 62 then
		itemid = 786
		quantity = math.random(3,6)
	elseif roll == 63 or (roll >= 129 and roll <= 134) then
		itemid = 745 -- gold ingot
		quantity = 12
	elseif roll == 64 or roll == 135 then
		itemid = 737 -- gold ore
		quantity = 12
	elseif roll == 65 then
		itemid = 806 -- tourmaline
		quantity = 12
	elseif roll == 66 then
		itemid = 788 -- peridot
		quantity = math.random(3,6)
	elseif roll == 67 then
		itemid = 784 -- jadeite
		quantity = math.random(3,6)
	elseif roll == 68 then
		itemid = 785 -- emerald
		quantity = math.random(3,6)
	elseif roll == 69 or (roll >= 136 and roll <= 144) then
		itemid = 653 -- mythril ingot
		quantity = 12
	elseif roll == 70 or roll == 145 or roll == 146 then
		itemid = 644 -- mythril ore
		quantity = 12
	elseif roll == 71 or roll == 147 then
		itemid = 746 -- platinum ingot
		quantity = 12
	elseif roll == 72 then
		itemid = 738 -- platinum ore
		quantity = 12
	elseif roll == 73 or roll == 148 then
		itemid = 736 -- silver ore
		quantity = 12
	elseif roll == 74 or (roll >= 149 and roll <= 155) then
		itemid = 744 -- silver ingot
		quantity = 12
	elseif roll == 75 then
		itemid = 671 -- silver sheet
		quantity = 12
	elseif roll == 76 or roll == 156 or roll == 157 then
		itemid = 642 -- zinc ore
		quantity = 12
		
	-- !! CLOTHCRAFT !! --
	
	elseif roll == 77 then
		itemid = 1270 -- arachne web
		quantity = math.random(3,6)
	elseif roll == 78 or roll == 158 or roll == 159 then
		itemid = 818 -- cotton thread
		quantity = 12
	elseif roll == 79 or roll == 160 or roll == 161 then
		itemid = 825 -- cotton cloth
		quantity = 12
	elseif roll == 80 or roll == 162 or roll == 163 then
		itemid = 835 -- flax flower
		quantity = 12
	elseif roll == 81 or roll == 164 or roll == 165 then
		itemid = 823 -- gold thread
		quantity = 12
	elseif roll == 82 or roll == 166 or roll == 167 then
		itemid = 819 -- linen thread
		quantity = 12
	elseif roll == 83 or roll == 168 or roll == 169 then
		itemid = 826 -- linen cloth
		quantity = 12
	elseif roll == 84 or roll == 170 then
		itemid = 1651 -- moblin thread
		quantity = 12
	elseif roll == 85 then
		itemid = 821 -- rainbow thread
		quantity = 12
	elseif roll == 86 then
		itemid = 834 -- saruta cotton
		quantity = 12
	elseif roll == 87 or (roll >= 171 and roll <= 180) then
		itemid = 832 -- sheep wool
		quantity = 12
	elseif roll == 88 or (roll >= 181 and roll <= 190) then
		itemid = 816 -- silk thread
		quantity = 12
	elseif roll == 87 or roll == 191 or roll == 192 then
		itemid = 829 -- silk cloth
		quantity = 12
	elseif roll == 88 then
		itemid = 822 -- silver thread
		quantity = 12
	elseif roll == 89 then
		itemid = 838 -- ??
		quantity = 12
	elseif roll == 90 or roll == 193 or roll == 194 then
		itemid = 828 -- velvet cloth
		quantity = math.random(5,8)
	elseif roll == 91 then
		itemid = 2011 -- wolf fur
		quantity = 12
	elseif roll == 92 or (roll >= 195 and roll <= 200) then
		itemid = 827 -- wool cloth
		quantity = 12
	elseif roll == 93 or (roll >= 201 and roll <= 205) then -- 93rd item
		itemid = 820 -- wool thread
		quantity = 12
	
	-- !! LEATHERCRAFT !! --
	
	elseif roll == 206 then
		itemid = 1628 -- buffalo hide
		quantity = 12
	elseif roll == 207 or roll == 227 then
		itemid = 1637 -- bugard leather
		quantity = math.random(2,5)
	elseif roll == 208 or roll == 228 then
		itemid = 1640 -- bugard skin
		quantity = 12
	elseif roll == 209 then
		itemid = 2123 -- catoblepas hide
		quantity = 12
	elseif roll == 210 or roll == 229 then
		itemid = 854 -- cock skin
		quantity = 12
	elseif roll == 211 or roll == 230 then
		itemid = 863 -- coeurl hide
		quantity = 12
	elseif roll == 212 or roll == 231 then
		itemid = 506 -- coeurl leather
		quantity = 12
	elseif roll == 213 then
		itemid = 857 -- dhalmel hide
		quantity = 12
	elseif roll == 214 then
		itemid = 848 -- dhalmel leather
		quantity = 12
	elseif roll == 215 then
		itemid = 878 -- karakul skin
		quantity = 12
	elseif roll == 216 or (roll >= 232 and roll <= 245) then
		itemid = 852 -- lizard skin
		quantity = 12
	elseif roll == 217 then
		itemid = 1116 -- manticore hide
		quantity = 12
	elseif roll == 218 or roll == 246 or roll == 247 then
		itemid = 856 -- rabit hide
		quantity = 12
	elseif roll == 219 or roll == 248 or roll == 249 then
		itemid = 859 -- ram skin
		quantity = 12
	elseif roll == 220 or roll == 250 or roll == 251 then
		itemid = 851 -- ram leather
		quantity = 12
	elseif roll == 221 or roll == 252 then
		itemid = 853 -- raptor skin
		quantity = 12
	elseif roll == 222 or (roll >= 253 and roll <= 258) then
		itemid = 505 -- sheepskin
		quantity = 12
	elseif roll == 223 or (roll >= 259 and roll <= 279) then
		itemid = 850 -- sheep leather
		quantity = 12
	elseif roll == 224 or roll == 280 then
		itemid = 861 -- tiger hide
		quantity = 12
	elseif roll == 225 or roll == 281 then
		itemid = 855 -- tiger leather
		quantity = 12
	elseif roll == 226 then -- 112th item
		itemid = 858 -- wolf hide
		quantity = 12
		
	-- !! BONECRAFT !! --
		
	elseif roll == 282 or roll == 297 then
		itemid = 891 -- bat fang
		quantity = 12
	elseif roll == 283 or roll == 298 then
		itemid = 894 -- beetle jaw
		quantity = 12
	elseif roll == 284 or roll == 299 then
		itemid = 889 -- beetle shell
		quantity = 12
	elseif roll == 285 then
		itemid = 884 -- tiger fang
		quantity = 12
	elseif roll == 286 or roll == 300 or roll == 301 or roll == 302 then
		itemid = 887 -- coral fragment
		quantity = 12
	elseif roll == 287 then
		itemid = 881 -- crab shell
		quantity = 12
	elseif roll == 288 or roll == 303 then
		itemid = 902 -- demon horn
		quantity = 12
	elseif roll == 289 then
		itemid = 886 -- demon skull
		quantity = math.random(2,4)
	elseif roll == 290 or (roll >= 304 and roll <= 309) then
		itemid = 893 -- giant femur
		quantity = 12
	elseif roll == 291 then
		itemid = 2147 -- marid tusk
		quantity = 12
	elseif roll == 292 or roll == 312 or roll == 313 then
		itemid = 895 -- ram horn
		quantity = 12
	elseif roll == 293 or roll == 314 then
		itemid = 896 -- scorp shell
		quantity = 12
	elseif roll == 294 or (roll <= 314 and roll >= 320) then
		itemid = 897 -- scorp claw
		quantity = 12
	elseif roll == 295 then -- 126th item
		itemid = 882 -- sheep tooth
		quantity = 12
		
	-- !! WOODWORKING !! --
		
	elseif roll == 296 then
		itemid = 1243 -- acid bolt heads
		quantity = math.random(25,99)
	elseif roll == 297 then
		itemid = 698 -- ash log
		quantity = 12
	elseif roll == 298 then
		itemid = 715 -- ash lumber
		quantity = 12
	elseif roll == 299 or roll == 310 or roll == 311 then
		itemid = 1134 -- bast parchment
		quantity = 12
	elseif roll == 300 then
		itemid = 1248 -- beetle arrowheads
		quantity = math.random(25,99)
	elseif roll == 301 then
		itemid = 1223 -- bird fletchings
		quantity = math.random(45,99)
	elseif roll == 302 or roll == 321 or roll == 322 then
		itemid = 1246 -- bloody bolt heads
		quantity = math.random(25,99)
	elseif roll == 303 then
		itemid = 1254 -- black choco fletchings
		quantity = math.random(45,99)
	elseif roll == 304 then
		itemid = 1221 -- choco fletchings
		quantity = math.random(45,99)
	elseif roll == 305 then
		itemid = 1242 -- blind bolt heads
		quantity = math.random(25,99)
	elseif roll == 306 then
		itemid = 1215 -- bone arrowheads
		quantity = math.random(25,99)
	elseif roll == 307 then
		itemid = 694 -- chestnut log
		quantity = 12
	elseif roll == 308 then
		itemid = 710 -- chestnut lumber
		quantity = 12
	elseif roll == 309 then
		itemid = 1251 -- demon arrowheads
		quantity = math.random(20,99)
	elseif roll == 310 then
		itemid = 727 -- dogwood log
		quantity = 12
	elseif roll == 311 then
		itemid = 728 -- dogwood lumber
		quantity = 12
	elseif roll == 312 then
		itemid = 702 -- ebony log
		quantity = 12
	elseif roll == 313 then
		itemid = 719 -- ebony lumber
		quantity = 12
	elseif roll == 314 then
		itemid = 690 -- elm log
		quantity = 12
	elseif roll == 315 then
		itemid = 707 -- elm lumber
		quantity = 12
	elseif roll == 316 or roll == 344 then
		itemid = 1515 -- fang arrowheads
		quantity = math.random(45,99)
	elseif roll == 317 then
		itemid = 697 -- holly log
		quantity = 12
	elseif roll == 318 then
		itemid = 714 -- holly lumber
		quantity = 12
	elseif roll == 319 then
		itemid = 1244 -- holy boltheads
		quantity = math.random(25,99)
	elseif roll == 320 or roll == 326 or roll == 327 then
		itemid = 1249 -- horn arrowheads
		quantity = math.random(45,99)
	elseif roll == 321 or roll == 343 then
		itemid = 1224 -- insect fletchings
		quantity = math.random(55,99)
	elseif roll == 322 then
		itemid = 1216 -- iron arrowheads
		quantity = math.random(35,99)
	elseif roll == 323 then
		itemid = 689 -- lauan log
		quantity = 12
	elseif roll == 324 then
		itemid = 706 -- lauan lumber
		quanttiy = 12
	elseif roll == 325 then
		itemid = 700 -- mahogany log
		quantity = 12
	elseif roll == 326 then
		itemid = 717 -- mahogany lumber
		quantity = 12
	elseif roll == 327 then
		itemid = 691 -- maple log
		quantity = 12
	elseif roll == 328 then
		itemid = 708 -- maple lumber
		quantity = 12
	elseif roll == 329 then
		itemid = 1212 -- mythril bolt heads
		quantity = math.random(35,99)
	elseif roll == 330 then
		itemid = 699 -- oak log
		quantity = 12
	elseif roll == 331 then
		itemid = 716 -- oak lumber
		quantity = 12
	elseif roll == 332 then
		itemid = 701 -- rosewood log
		quantity = 12
	elseif roll == 333 then
		itemid = 718 -- rosewood lumber
		quantity = 12
	elseif roll == 334 or roll == 323 or roll == 324 then
		itemid = 1250 -- scorpion arrowheads
		quantity = math.random(45,99)
	elseif roll == 335 or roll == 325 then
		itemid = 1247 -- sleep bolt heads
		quantity = math.random(30,99)
	elseif roll == 336 then
		itemid = 693 -- walnut log
		quantity = 12
	elseif roll == 337 then
		itemid = 711 -- walnut lumber
		quantity = 12
	elseif roll == 338 then
		itemid = 695 -- willow log
		quantity = 12
	elseif roll == 339 then
		itemid = 712 -- willow lumber
		quantity = 12
	elseif roll == 340 then
		itemid = 696 -- yew log
		quantity = 12
	elseif roll == 341 then
		itemid = 713 -- yew lumber
		quantity = 12
	elseif roll == 342 then
		itemid = 1222 -- yag fletchings
		quantity = math.random(65,99)
	
	-- !! ALCHEMY !! --
	
	elseif roll == 345 or (roll >= 378 and roll <= 390) then
		itemid = 937 -- animal glue
		quantity = 12
	elseif roll == 346 or roll == 377 then
		itemid = 912 -- beehive chip
		quantity = 12
	elseif roll == 347 or roll == 376 then
		itemid = 913 -- beeswax
		quantity = 12
	elseif roll == 348 or (roll >= 391 and roll <= 395) then
		itemid = 929 -- black ink
		quantity = 12
	elseif roll == 349 then
		itemid = 928 -- bomb ash
		quantity = 12
	elseif roll == 350 then
		itemid = 932 -- carbon fiber
		quantity = 12
	elseif roll == 351 then
		itemid = 931 -- cermet chunk
		quantity = 12
	elseif roll == 352 then
		itemid = 927 -- coeurl whisker
		quantity = 12
	elseif roll == 353 then
		itemid = 947 -- firesand
		quantity = 12
	elseif roll == 354 or (roll >= 372 and roll <= 375) then
		itemid = 925 -- giant stinger
		quantity = 12
	elseif roll == 355 then
		itemid = 954 -- pot shard
		quantity = 12
	elseif roll == 356 or (roll >= 361 and roll <= 371) then
		itemid = 914 -- mercury
		quantity = 12
	elseif roll == 357 or roll == 359 or roll == 360 then
		itemid = 637 -- slime oil
		quantity = 12
	elseif roll == 358 then
		itemid = 1108 -- sulfur
		quantity = 12
	end
	
	
	
	
	
	target:addItem(itemid,quantity)
	target:messageSpecial(ID.text.ITEM_OBTAINED, itemid)
end

function rollEquipment(target)
	local itemid = 0
	local roll = math.random(1,245)
	local ID = zones[target:getZoneID()]
	
	-- !! DAGGER !! --
	
	if roll == 1 then
		itemid = 16495 -- silence dagger
	elseif roll == 2 then
		itemid = 16455 -- baselard
	elseif roll == 3 then
		itemid = 16458 -- poison baselard
	elseif roll == 4 then
		itemid = 16472 -- poison knife
	elseif roll == 5 then
		itemid = 17605 -- acid dagger
	elseif roll == 6 then
		itemid = 16478 -- poison kukri
	elseif roll == 7 then
		itemid = 16460 -- kris
	elseif roll == 8 then
		itemid = 16497 -- sleep dagger
	elseif roll == 9 then
		itemid = 19105 -- thug's jambiya
	elseif roll == 10 then
		itemid = 16501 -- acid knife
	elseif roll == 11 then
		itemid = 16479 -- acid kukri
	elseif roll == 12 then
		itemid = 16459 -- acid baselard
	elseif roll == 13 then
		itemid = 16484 -- burglar's dagger
	elseif roll == 14 then
		itemid = 17610 -- bone knife
	elseif roll == 15 then
		itemid = 16502 -- venom knife
	elseif roll == 16 then
		itemid = 17612 -- beetle knife
	elseif roll == 17 then
		itemid = 16499 -- venom kris
		if math.random(1,3) == 1 then
			itemid = 16455
		end
	elseif roll == 18 then
		itemid = 16469 -- cermet knife
		if math.random(1,3) == 1 then
			itemid = 17605
		end
	elseif roll == 19 then
		itemid = 16507 -- venom baselard
		if math.random(1,3) == 1 then
			itemid = 16478
		end
	elseif roll == 20 then
		itemid = 16505 -- venom kukri
		if math.random(1,3) == 1 then
			itemid = 16497
		end
	elseif roll == 21 then
		itemid = 16506 -- stun kukri
		if math.random(1,3) == 1 then
			itemid = 17610
		end
	elseif roll == 22 then
		itemid = 16460 -- adaman kris
		if math.random(1,3) == 1 then
			itemid = 16455
		end
	elseif roll == 23 then
		itemid = 16470 -- gully
		if math.random(1,2) == 1 then
			itemid = 16484
		end
	elseif roll == 24 then
		itemid = 19107 -- azoth
		if math.random(1,4) ~= 1 then
			itemid = 16484
		end
		
	-- !! SWORD !! --
	
	elseif roll == 25 then
		itemid = 16572 -- bee spatha
	elseif roll == 26 then
		itemid = 16552 -- scimitar
	elseif roll == 27 then
		itemid = 16566 -- longsword
	elseif roll == 28 then
		itemid = 16629 -- small sword
	elseif roll == 29 then
		itemid = 16532 -- gladius
	elseif roll == 30 then
		itemid = 16524 -- fleuret
	elseif roll == 31 then
		itemid = 17739 -- steel kilij
	elseif roll == 32 then
		itemid = 16576 -- hunting sword
	elseif roll == 33 then
		itemid = 16581 -- holy sword
	elseif roll == 34 then
		itemid = 17701 -- shotel
	elseif roll == 35 then
		itemid = 16558 -- falchion
	elseif roll == 36 then
		itemid = 16564 -- flame blade
	elseif roll == 37 then
		itemid = 16538 -- darksteel sword
	elseif roll == 38 then
		itemid = 16559 -- darksteel falchion
	elseif roll == 39 then
		itemid = 17660 -- kilij
	elseif roll == 40 then
		itemid = 16554 -- hanger
	elseif roll == 41 then
		itemid = 16539 -- cermet sword
	elseif roll == 42 then
		itemid = 16831 -- greed scimitar
		if math.random(1,3) == 1 then
			itemid = 17660
		end
	elseif roll == 43 then
		itemid = 16560 -- cutlass
		if math.random(1,3) == 1 then
			itemid = 16558
		end
	elseif roll == 44 then
		itemid = 16541 -- jagdplaute
		if math.random(1,3) == 1 then
			itemid = 16581
		end
	elseif roll == 45 then
		itemid = 17724 -- darksteel kilij
		if math.random(1,3) == 1 then
			itemid = 17739
		end
	elseif roll == 46 then
		itemid = 16526 -- schwert
		if math.random(1,3) == 1 then
			itemid = 16532
		end
	elseif roll == 47 then
		itemid = 16578 -- espadon
		if math.random(1,3) == 1 then
			itemid = 16576
		end
	elseif roll == 48 then
		itemid = 16579 -- kaskara
		if math.random(1,2) == 1 then
			itemid = 16576
		end
	elseif roll == 49 then
		itemid = 17735 -- demon slayer
		if math.random(1,2) == 1 then
			itemid = 16576
		end
		
	-- !! GREATSWORD !! --
		
	elseif roll == 50 then
		itemid = 16583 -- claymore
	elseif roll == 51 then
		itemid = 16589 -- two-handed sword
	elseif roll == 52 then
		itemid = 16594 -- inferno sword
	elseif roll == 53 then
		itemid = 18375 -- falx
	elseif roll == 54 then
		itemid = 16584 -- mythril claymore
	elseif roll == 55 then
		itemid = 16590 -- greatsword
	elseif roll == 56 then
		itemid = 16957 -- faussar
	elseif roll == 57 then
		itemid = 16585 -- darksteel claymore
	elseif roll == 58 then
		itemid = 18382 -- darksteel falx
	elseif roll == 59 then
		itemid = 16595 -- ram-dao
		if math.random(1,3) == 1 then
			itemid = 18375
		end
	elseif roll == 60 then
		itemid = 16591 -- zweihander
		if math.random(1,3) == 1 then
			itemid = 16584
		end
	elseif roll == 61 then
		itemid = 16596 -- flamberge
		if math.random(1,3) == 1 then
			itemid = 16590
		end
	elseif roll == 62 then
		itemid = 16586 -- adaman claymore
		if math.random(1,2) == 1 then
			itemid = 16957
		end
	elseif roll == 63 then
		itemid = 16597 -- nagan
		if math.random(1,2) == 1 then
			itemid = 16585
		end
		
	-- !! AXE !! --
		
	elseif roll == 64 then
		itemid = 16642 -- bone axe
	elseif roll == 65 then
		itemid = 16643 -- battleaxe
	elseif roll == 66 then
		itemid = 17942 -- tomahawk
	elseif roll == 67 then
		itemid = 17955 -- plain pick
	elseif roll == 68 then
		itemid = 16644 -- mythril axe
	elseif roll == 69 then
		itemid = 16657 -- tabar
	elseif roll == 70 then
		itemid = 16651 -- mythril pick
	elseif roll == 71 then
		itemid = 16645 -- darksteel axe
	elseif roll == 72 then
		itemid = 16652 -- darksteel pick
	elseif roll == 73 then
		itemid = 16658 -- darksteel tabar
	elseif roll == 74 then
		itemid = 16659 -- tabarzin
		if math.random(1,2) == 1 then
			itemid = 16651
		end
	elseif roll == 75 then
		itemid = 17966 -- erlking's tabar
		if math.random(1,2) == 1 then
			itemid = 17942
		end
	
	-- !! GREATAXE !! --
	
	elseif roll == 76 then
		itemid = 16705 -- greataxe
	elseif roll == 77 then
		itemid = 18209 -- platoon cutter
	elseif roll == 78 then
		itemid = 18214 -- voulge
	elseif roll == 79 then
		itemid = 16706 -- heavy axe
	elseif roll == 80 then
		itemid = 18207 -- kheten
	elseif roll == 81 then
		itemid = 18226 -- darksteel voulge
	elseif roll == 82 then
		itemid = 16724 -- heavy darksteel axe
	elseif roll == 83 then
		itemid = 18500 -- sparth
		if math.random(1,2) == 1 then
			itemid = 18207
		end
	elseif roll == 84 then
		itemid = 16707 -- bhuj
		if math.random(1,2) == 1 then
			itemid = 18226
		end
	elseif roll == 85 then
		itemid = 18223 -- toporok
		if math.random(1,2) == 1 then
			itemid = 16724
		end
	
	-- !! SCYTHE !! --
	
	elseif roll == 86 then
		itemid = 16769 -- brass zaghnal
	elseif roll == 87 then
		itemid = 18956 -- serpette
	elseif roll == 88 then
		itemid = 16774 -- scythe
	elseif roll == 89 then
		itemid = 16770 -- zaghnal
	elseif roll == 90 then
		itemid = 16775 -- mythril scythe
	elseif roll == 91 then
		itemid = 16796 -- mythril zaghnal
	elseif roll == 92 then
		itemid = 18050 -- mandibular sickle
	elseif roll == 93 then
		itemid = 16794 -- bone scythe
	elseif roll == 94 then
		itemid = 18054 -- ivory sickle
	elseif roll == 95 then
		itemid = 16789 -- darksteel scythe
	elseif roll == 96 then
		itemid = 18048 -- king maker
		if math.random(1,2) == 1 then
			itemid = 16774
		end
	elseif roll == 97 then
		itemid = 18052 -- tredecim scythe
		if math.random(1,2) == 1 then
			itemid = 16770
		end
	elseif roll == 98 then
		itemid = 18954 -- ogre sickle
		if math.random(1,2) == 1 then
			itemid = 16775
		end
	
	-- !! POLEARM !! --
	
	elseif roll == 99 then
		itemid = 16834 -- brass spear
	elseif roll == 100 then
		itemid = 16852 -- royal spearman's spear
	elseif roll == 101 then
		itemid = 16835 -- spear
	elseif roll == 102 then
		itemid = 16844 -- royal squire's halberd
	elseif roll == 103 then
		itemid = 16845 -- lance
	elseif roll == 104 then
		itemid = 16836 -- halberd
	elseif roll == 105 then
		itemid = 16868 -- heavy halberd
	elseif roll == 106 then
		itemid = 16871 -- kamayari
	elseif roll == 107 then
		itemid = 16888 -- battle fork
	elseif roll == 108 then
		itemid = 16839 -- partisan
	elseif roll == 109 then
		itemid = 18093 -- couse
	elseif roll == 110 then
		itemid = 16842 -- golden spear
	elseif roll == 111 then
		itemid = 18082 -- barchha
		if math.random(1,3) == 1 then
			itemid = 16835
		end
	elseif roll == 112 then
		itemid = 16850 -- mercurial spear
		if math.random(1,3) == 1 then
			itemid = 16844
		end
	elseif roll == 113 then
		itemid = 18089 -- schiltron spear
		if math.random(1,3) == 1 then
			itemid = 16845
		end
	elseif roll == 114 then
		itemid = 16840 -- ox tongue
		if math.random(1,2) == 1 then
			itemid = 16836
		end
	elseif roll == 115 then
		itemid = 19303 -- fay lance
		if math.random(1,2) == 1 then
			itemid = 16868
		end
	
	-- !! KATANA !! --
	
	elseif roll == 116 then
		itemid = 16919 -- shinobi-gatana
	elseif roll == 117 then
		itemid = 16906 -- mokuto
	elseif roll == 118 then
		itemid = 16917 -- suzume
	elseif roll == 119 then
		itemid = 17776 -- hibari
	elseif roll == 120 then
		itemid = 16907 -- busuto
	elseif roll == 121 then
		itemid = 16901 -- kodachi
	elseif roll == 122 then
		itemid = 19276 -- midare
	elseif roll == 123 then
		itemid = 16905 -- bokuto
	elseif roll == 124 then
		itemid = 16915 -- hien
	elseif roll == 125 then
		itemid = 17778 -- muketsu
	elseif roll == 126 then
		itemid = 16924 -- hocho
	elseif roll == 127 then
		itemid = 16903 -- kabutowari
	elseif roll == 128 then
		itemid = 16909 -- kororito
		if math.random(1,3) == 1 then
			itemid = 16907
		end
	elseif roll == 129 then
		itemid = 16904 -- fudo
		if math.random(1,2) == 1 then
			itemid = 16901
		end
	elseif roll == 130 then
		itemid = 18418 -- otori
		if math.random(1,2) == 1 then
			itemid = 19276
		end
	
	-- !! GREAT KATANA !! --
	
	elseif roll == 131 then
		itemid = 16960 -- uchigatana
	elseif roll == 132 then
		itemid = 16982 -- nodachi
	elseif roll == 133 then
		itemid = 17820 -- gunromaru
	elseif roll == 134 then
		itemid = 16987 -- okanehira
	elseif roll == 135 then
		itemid = 16975 -- kanesada
	elseif roll == 136 then
		itemid = 16962 -- ashura
	elseif roll == 137 then
		itemid = 16967 -- mikazuki
	elseif roll == 138 then
		itemid = 16991 -- odenta
	elseif roll == 139 then
		itemid = 16974 -- dotanuki
	elseif roll == 140 then
		itemid = 17807 -- G.M. Uchigatana
	elseif roll == 141 then
		itemid = 17818 -- kanesada + 1
		if math.random(1,3) == 1 then
			itemid = 17820
		end
	elseif roll == 142 then
		itemid = 16972 -- kazaridachi
		if math.random(1,2) == 1 then
			itemid = 16987
		end
	elseif roll == 143 then
		itemid = 18439 -- shirogatana
		if math.random(1,2) == 1 then
			itemid = 16975
		end
	elseif roll == 144 then
		itemid = 18431 -- butachi
		if math.random(1,2) == 1 then
			itemid = 16962
		end
		
	-- !! CLUB !! --	
		
	elseif roll == 145 then
		itemid = 17044 -- warhammer
	elseif roll == 146 then
		itemid = 17045 -- maul
	elseif roll == 147 then
		itemid = 17080 -- holy maul
	elseif roll == 148 then
		itemid = 17083 -- time hammer
	elseif roll == 149 then
		itemid = 17054 -- ebony wand
	elseif roll == 150 then
		itemid = 17046 -- darksteel maul
	elseif roll == 151 then
		itemid = 17432 -- darksteel maul +1
	elseif roll == 152 then
		itemid = 18870 -- dweomer maul
		if math.random(1,3) == 1 then
			itemid = 17054
		end
	
	-- !! STAFF !! --
	
	elseif roll == 153 then
		itemid = 17581 -- mighty pole
	elseif roll == 154 then
		itemid = 17569 -- iron splitter
	elseif roll == 155 then
		itemid = 17099 -- mahogany pole
	elseif roll == 156 then
		itemid = 17543 + (math.random(1,8) * 2) -- ele staff
		if math.random(1,2) == 1 then
			itemid = 17099
		end
	elseif roll == 157 then
		itemid = 17098 -- oak pole
	
	-- !! RANGED !! --
	
	elseif roll == 158 then
		itemid = 17161 -- power bow
	elseif roll == 159 then
		itemid = 17265 -- tanegashima
	elseif roll == 160 then
		itemid = 17218 -- zamburak
	elseif roll == 161 then
		itemid = 17162 -- great bow
	elseif roll == 162 then
		itemid = 18704 -- darksteel hexagun
	elseif roll == 163 then
		itemid = 17224 -- killer crossbow
	elseif roll == 164 then
		itemid = 17267 -- negoroshiki
	elseif roll == 165 then
		itemid = 17163 -- battle bow
	elseif roll == 166 then
		itemid = 17274 -- deluxe carbine
	elseif roll == 167 then
		itemid = 17164 -- war bow
	elseif roll == 168 then
		itemid = 17236 -- leo crossbow
	elseif roll == 169 then
		itemid = 17240 -- lightning bow
	elseif roll == 170 then
		itemid = 17250 -- matchlock gun
	elseif roll == 171 then
		itemid = 17190 -- sarnga
	elseif roll == 172 then
		itemid = 19226 -- blunderbuss
	elseif roll == 173 then
		itemid = 17220 -- heavy crossbow
	elseif roll == 174 then
		itemid = 17222 -- hexagun
	elseif roll == 175 then
		itemid = 17234 -- flagellant's crossbow
	elseif roll == 176 then
		itemid = 18142 -- shigeto bow
		if math.random(1,3) == 1 then
			itemid = 17274
		end
	elseif roll == 177 then
		itemid = 17252 -- culverin
		if math.random(1,2) == 1 then
			itemid = 17163
		end
	elseif roll == 178 then
		itemid = 17166 -- lamian kaman
		if math.random(1,3) == 1 then
			itemid = 18704
		end
	elseif roll == 179 then
		itemid = 18695 -- cerberus bow
		if math.random(1,2) == 1 then
			itemid = 17240
		end
	elseif roll == 180 then
		itemid = 17262 -- corsair's gun
		if math.random(1,2) == 1 then
			itemid = 17274
		end
	
	-- !! INSTRUMENTS !! --
	
	elseif roll == 181 then
		itemid = 17348 -- traversiere
	elseif roll == 182 then
		itemid = 17841 -- nursemaids harp
	elseif roll == 183 then
		itemid = 17852 -- requiem flute
		
	-- !! H2H !! --
	
	elseif roll == 184 then
		itemid = 16386 -- lizard cesti
	elseif roll == 185 then
		itemid = 16701 -- strike baghnaks
	elseif roll == 186 then
		itemid = 16429 -- silence baghnaks
	elseif roll == 187 then
		itemid = 16392 -- metal knuckles
	elseif roll == 188 then
		itemid = 16406 -- baghnaks
	elseif roll == 189 then
		itemid = 16411 -- claws
	elseif roll == 190 then
		itemid = 18766 -- tyro katars
	elseif roll == 191 then
		itemid = 16399 -- katars
	elseif roll == 192 then
		itemid = 16417 -- poison claws
	elseif roll == 193 then
		itemid = 16403 -- poison katars
	elseif roll == 194 then
		itemid = 16430 -- acid claws
	elseif roll == 195 then
		itemid = 18353 -- adargas
	elseif roll == 196 then
		itemid = 18354 -- adargas +1
	elseif roll == 197 then
		itemid = 16419 -- patas
	elseif roll == 198 then
		itemid = 16413 -- darksteel claws
	elseif roll == 199 then
		itemid = 16418 -- venom claws
	elseif roll == 200 then
		itemid = 16400 -- darksteel katars
	elseif roll == 201 then
		itemid = 17475 -- darksteel katars +1
	elseif roll == 202 then
		itemid = 18750 -- black adargas
	elseif roll == 203 then
		itemid = 18750 -- black adargas +1
		if math.random(1,3) == 1 then
			itemid = 16419
		end
	elseif roll == 204 then
		itemid = 18769 -- severus claws
		if math.random(1,3) == 1 then
			itemid = 18353
		end
	elseif roll == 205 then
		itemid = 16416 -- dragon claws
		if math.random(1,2) == 1 then
			itemid = 16430
		end
	elseif roll == 206 then
		itemid = 17485 -- dragon claws +1
		if math.random(1,2) == 1 then
			itemid = 16403
		end
	elseif roll == 207 then
		itemid = 18356 -- martial knuckles
		if math.random(1,2) == 1 then
			itemid = 16417
		end
	elseif roll == 208 then
		itemid = 16396 -- koenigs knuckles
		if math.random(1,2) == 1 then
			itemid = 18766
		end
	
	-- !! SHIELD !! --
	
	elseif roll == 209 then
		itemid = 12291 -- elm shield
	elseif roll == 210 then
		itemid = 12292 -- mahogany shield
	elseif roll == 211 then
		itemid = 12337 -- decurions shield
	elseif roll == 212 then
		itemid = 12414 -- turtle shield
	elseif roll == 213 then
		itemid = 12306 -- kite shield
	elseif roll == 214 then
		itemid = 12393 -- warlocks shield
	elseif roll == 215 then
		itemid = 12300 -- targe
	elseif roll == 216 then
		itemid = 12293 -- oak shield
	elseif roll == 217 then
		itemid = 12405 -- jennet shield
	elseif roll == 218 then
		itemid = 12307 -- heater shield
	elseif roll == 219 then
		itemid = 12328 -- heater shield +1
	elseif roll == 220 then
		itemid = 12301 -- buckler
	elseif roll == 221 then
		itemid = 12378 -- hard shield
	elseif roll == 222 then
		itemid = 12313 -- TKA Shield
	elseif roll == 223 then
		itemid = 12376 -- TKA Shield +1
	elseif roll == 224 then
		itemid = 12312 -- RKA Shield
		if math.random(1,2) == 1 then
			itemid = 12307
		end
	elseif roll == 225 then
		itemid = 12368 -- RKA Shield +1
		if math.random(1,2) == 1 then
			itemid = 12307
		end
	elseif roll == 226 then
		itemid = 12323 -- scutum
		if math.random(1,2) == 1 then
			itemid = 12293
		end
	elseif roll == 227 then
		itemid = 12339 -- scutum +1
		if math.random(1,2) == 1 then
			itemid = 12293
		end
	elseif roll == 228 then
		itemid = 12321 -- royal guard's shield
		if math.random(1,2) == 1 then
			itemid = 12306
		end
	elseif roll == 229 then
		itemid = 16170 -- wivre shield
		if math.random(1,2) == 1 then
			itemid = 12306
		end
	elseif roll == 230 then
		itemid = 12302 -- darksteel buckler
		if math.random(1,2) == 1 then
			itemid = 12337
		end
	elseif roll == 231 or roll == 232 or roll == 233 or roll == 234 or roll == 235 then
		itemid = 16172 -- iron ram shield
		if math.random(1,2) == 1 then
			itemid = 12307
		end
	elseif roll == 236 then
		itemid = 12295 -- round shield
	elseif roll == 237 then
		itemid = 12324 -- tower shield
		if math.random(1,2) == 1 then
			itemid = 12337
		end
	elseif roll == 238 then
		itemid = 12310 -- diamond shield
		if math.random(1,2) == 1 then
			itemid = 12292
		end
	elseif roll == 239 then
		itemid = 12310 -- diamond shield +1
		if math.random(1,2) == 1 then
			itemid = 12292
		end
	elseif roll == 240 then
		itemid = 12383 -- general's shield
		if math.random(1,2) == 1 then
			itemid = 12292
		end
	elseif roll == 241 then
		itemid = 12362 -- highlander's targe
		if math.random(1,2) == 1 then
			itemid = 12292
		end
	elseif roll == 242 then
		itemid = 12309 -- ritter shield
		if math.random(1,2) == 1 then
			itemid = 12306
		end
	elseif roll == 243 then
		itemid = 12358 -- ritter shield +1
		if math.random(1,2) == 1 then
			itemid = 12306
		end
	elseif roll == 244 then
		itemid = 12305 -- ice shield
		if math.random(1,2) == 1 then
			itemid = 12292
		end
	elseif roll == 245 then
		itemid = 16162 -- tariqah
		if math.random(1,2) == 1 then
			itemid = 12292
		end
	end

	
	target:addItem(itemid,quantity)
	target:messageSpecial(ID.text.ITEM_OBTAINED, itemid)
end

function onItemUse(target)

	local roll = math.random(1,100)
	
	if roll < 43 then
		rollEquipment(target)
	else
		rollMaterial(target)
	end
	
end