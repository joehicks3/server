-----------------------------------
-- Area: Mhaura
--  NPC: Graine
-- Standard Merchant NPC
-----------------------------------
local ID = require("scripts/zones/Mhaura/IDs")
require("scripts/globals/shop")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    local stock =
    {
        12696,   374, -- Leather Gloves
        12704,   128, -- Bronze Mittens
        12705,  1255, -- Brass Mittens
        12824,   557, -- Leather Trousesrs
        12832,   191, -- Bronze Subligar
        12833,  1840, -- Brass Subligar
        12952,   349, -- Leather Highboots
        12960,   117, -- Bronze Leggings
        12961,  1140, -- Brass Leggings
		21519, 10000, -- Karambit
        21565, 10000, -- Tauret
        21621, 10000, -- Naegling
        21722, 10000, -- Dolichenus
        21674, 10000, -- Nandaka
        21883, 10000, -- Shining One
		25569, 10000, -- Flamma Head +2
		25570, 10000, -- Mummu Head +2
		25571, 10000, -- Mallquis Head +2
		25572, 10000, -- Ayanmo Head +2
		25573, 10000, -- Talia Head +2
		25574, 10000, -- Sul. Mask +2
		25575, 10000, -- Meghanada Head +2
		25576, 10000, -- Hizamaru Head +2
		25577, 10000, -- Inyanga Head +2
		25578, 10000, -- Jhakri Head +2
		25790, 10000, -- 
		25791, 10000, -- 
		25792, 10000, -- 
		25793, 10000, -- 
		25793, 10000, -- 
		25794, 10000, -- 
		25795, 10000, -- 
		25796, 10000, -- 
		25797, 10000, -- 
		25798, 10000, -- 
		25799, 10000, -- 
		25828, 10000, -- 
		25829, 10000, -- 
		25830, 10000, -- 
		25831, 10000, -- 
		25832, 10000, -- 
		25833, 10000, -- 
		25834, 10000, -- 
		25835, 10000, -- 
		25836, 10000, -- 
		25837, 10000, -- 
		25879, 10000, -- 
		25880, 10000, -- 
		25881, 10000, -- 
		25882, 10000, -- 
		25883, 10000, -- 
		25884, 10000, -- 
		25885, 10000, -- 
		25886, 10000, -- 
		25887, 10000, -- 
		25888, 10000, -- 
		25946, 10000, -- 
		25947, 10000, -- 
		25948, 10000, -- 
		25949, 10000, -- 
		25950, 10000, -- 
		25951, 10000, -- 
		25952, 10000, -- 
		25953, 10000, -- 
		25954, 10000, -- 
		25955, 10000, -- 
		26246, 10000, -- AMBUSCADE CAPES
		26247, 10000, -- 
		26248, 10000, -- 
		26249, 10000, -- 
		26250, 10000, -- 
		26251, 10000, -- 
		26252, 10000, -- 
		26253, 10000, -- 
		26254, 10000, -- 
		26255, 10000, -- 
		26256, 10000, -- 
		26257, 10000, -- 
		26258, 10000, -- 
		26259, 10000, -- 
		26260, 10000, -- 
		26261, 10000, -- 
		26262, 10000, -- 
		26263, 10000, -- 
		26264, 10000, -- 
		26265, 10000, -- 
		26266, 10000, -- 
		26267, 10000, -- 
	 	 9220,  1000, -- Thread
		 9221,  1000, -- Dust
		 9222,  1000, -- Dye
		 9223,  1000, -- Sap
		 9224,  1000, -- Resin
		 9225,  1000, -- Needle
		
    }

    player:showText(npc, ID.text.GRAINE_SHOP_DIALOG)
    xi.shop.general(player, stock)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity