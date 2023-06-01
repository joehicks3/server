-----------------------------------
-- Area: Bastok Markets
--  NPC: Balthilda
-- Type: Merchant
-- !pos -300 -10 -161 235
-----------------------------------
local ID = require("scripts/zones/Bastok_Markets/IDs")
require("scripts/globals/shop")
-----------------------------------
local entity = {}

entity.onTrigger = function(player, npc)
    local stock =
    {
        12864,    860, 3,   -- Slacks
        12857,   2318, 3,   -- Linen Slops
        14813,    556, 3,   -- Solea
        12985,   1495, 3,   -- Holly Clogs
        13469,   1150, 3,   -- Leather Ring
		11009,   5000, 3,   -- Shaper's Shawl
        13632,  10000, 3,   -- Nomad's Mantle +1
        14674,  25000, 3,   -- Toreador's Ring
		13061,  10000, 3,   -- Spike Necklace
		15508,  25000, 3,   -- Justice
		15509,  25000, 3,   -- Hope
		15510,  25000, 3,   -- Prudence
		15511,  25000, 3,   -- Fortitude
		15512,  25000, 3,   -- Faith
		15513,  25000, 3,   -- Temperence	
        15514,  25000, 3,   -- Love
        13281,  25000, 3,   -- Sniper Rings +1
		26081, 100000, 3,   -- Mache Earring +1
		26035, 100000, 3,   -- Moonlight Nodowa
		26037, 100000, 3,   -- Moonlight Necklace
		26190, 100000, 3,   -- Moonlight Ring
		26269, 100000, 3,   -- Moonlight Cape
		26334, 100000, 3,   -- Ioskeha_belt +1
		26332, 100000, 3,   -- Tempus fugit +1
		26359, 100000, 3,   -- Orpheus's sash
		26182, 100000, 3,   -- Chirich Ring +1
		13915,  50000, 3,   -- Optical hat
		13231,   7500, 3,   -- Lifebelt
		13232,   5000, 3,   -- Swordbelt +1
		13189, 100000, 3,   -- Speedbelt
		13646,  15000, 3,   -- Amemet Mantle +1
		14739,  25000, 3,   -- Suppanomimi
		14740,  25000, 3,   -- Knight's Earring 
		14741,  25000, 3,   -- Abyssal Earring 
		14742,  25000, 3,   -- Beastly Earring
		14743,  25000, 3,   -- Bushinomimi
		13403,  25000, 3,   -- Assault Earring
		13369,   5000, 3,   -- Spike Earring
		15963,  25000, 3,   -- Magnetic Earring
		
		
		
		}

    player:showText(npc, ID.text.BALTHILDA_SHOP_DIALOG)
    xi.shop.nation(player, stock, xi.nation.BASTOK)
end

return entity
