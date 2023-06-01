-----------------------------------
-- Area: Lower Jeuno
--  NPC: Stinknix
-- Standard Merchant NPC
-----------------------------------
local ID = require("scripts/zones/Lower_Jeuno/IDs")
require("scripts/globals/shop")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    local stock =
    {
        646,   1000, -- Adaman Ore (Bastok Mission 6-2)
        597,   1000, -- Mine Gravel (Windurst Mission 2-3)
        3319,  2000, -- Soil Gem (Loadstone Quest)
        1142,  2000, -- Judgement Key (Windurst Mission 6-2)
        1181,  2000, -- Goobue humus (Windurst Mission 9-1)
        1136,  2000, -- Uggalepih Key (Windurst Mission 9-2)
        1112,  1000, -- Orcish Mail Scales (San D'Oria Mission 1-2)
	   12298,  1000, -- Parana Shield      (San D'Oria Mission 2-3)
	    4528,  1000, -- Crystal bass       (San D'Oria Mission 3-2)
		1137,  1000, -- Prelate Key        (San D'Oria Mission 8-2)		
		2307,  1000, -- Jody's Acid
	    4094,  1000, -- Goblin Stew 880
		2488,   500, -- Alexandrite
		21746,  500, -- R/E TEST ITEM
		13593, 1000, -- Raptor Mantle(Mog Safe)
        12474, 1000, -- Wool Hat(Mog Safe)
		    4,  750, -- Mahogony Bed(Mog Safe)
		    5,  500, -- Bronze bed(Mog Safe)
		    6, 1000, -- Noble's Bed(Mog Safe)
	    17402, 1000, -- Shrimp Lure	(Mog Safe)
        13457, 1000, -- Beetle Ring(Mog Safe)
		  498,   20, -- Yagudo Bead Necklace(Norg Fame)
		17344,  200, -- Cornette(Windurst Fame)
		  919,  600, -- Boyhada Moss(Selbina Fame)
		}

    player:showText(npc, ID.text.JUNK_SHOP_DIALOG)
    xi.shop.general(player, stock)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
