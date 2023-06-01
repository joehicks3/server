-----------------------------------
-- Area: Bastok Markets
--  NPC: Brunhilde
-- Standard Merchant NPC
-- !pos -305.775 -10.319 -152.173 235
-----------------------------------
local ID = require("scripts/zones/Bastok_Markets/IDs")
require("scripts/globals/shop")
-----------------------------------
local entity = {}

entity.onTrigger = function(player, npc)
    local stock =
    {
        12448,   154, 3,    -- Bronze Cap
        12432,  1334, 3,    -- Faceguard
        12433, 11776, 2,    -- Brass Mask
        12416, 29311, 2,    -- Sallet
        12576,   235, 3,    -- Bronze Harness
        12560,  2051, 3,    -- Scale Mail
        12561, 17928, 2,    -- Brass Scale Mail
        12704,   128, 3,    -- Bronze Mittens
        12688,  1094, 3,    -- Scale Finger Gauntlets
        12689,  9479, 2,    -- Brass Finger Gauntlets
        12417, 52289, 1,    -- Mythril Sallet
        12544, 45208, 1,    -- Breastplate
        12672, 23846, 1,    -- Gauntlets
		13735, 50000, 3,    -- Haubergeon +1
		13734, 50000, 3,    -- Scorpion Harness +1
		1319, 100000, 3,    -- EAH
		1320, 100000, 3,    -- EAB
		1321, 100000, 3,    -- EAHA  
		1322, 100000, 3,    -- EAL
		1323, 100000, 3,    -- EAF
		1355, 100000, 3,    -- CAH
		1357, 100000, 3,    -- CAB
		1359, 100000, 3,    -- CAHA
		1361, 100000, 3,    -- CAL
		1363, 100000, 3,    -- CAF
		23375, 200000, 3, -- pummelersmask+3
	    23442, 200000, 3, -- pumm.lorica+3
	    23509, 200000, 3, -- pumm.mufflers+3
	    23576, 200000, 3, -- pumm.cuisses+3
	    23643, 200000, 3, -- pumm.calligae+3
		23398, 200000, 3, -- agogemask+3
	    23465, 200000, 3, -- agogelorica+3
	    23532, 200000, 3, -- agogemufflers+3
	    23599, 200000, 3, -- agogecuisses+3
	    23666, 200000, 3, -- agogecalligae+3
		
    }

    player:showText(npc, ID.text.BRUNHILDE_SHOP_DIALOG)
    xi.shop.nation(player, stock, xi.nation.BASTOK)
end

return entity
