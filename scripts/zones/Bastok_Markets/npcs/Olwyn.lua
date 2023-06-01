-----------------------------------
-- Area: Bastok Markets
--  NPC: Olwyn
-- Standard Merchant NPC
-- !pos -322.123 -10.319 -169.418 235
-----------------------------------
require("scripts/globals/events/harvest_festivals")
local ID = require("scripts/zones/Bastok_Markets/IDs")
require("scripts/globals/shop")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
    onHalloweenTrade(player, trade, npc)
end

entity.onTrigger = function(player, npc)
    local stock =
    {
        25785, 50000, 3,    -- Dagon
        25786, 50000, 3,    -- Ashera
		25787, 50000, 3,    -- Shamash
		25788, 50000, 3,    -- Udug		
		25789, 50000, 3,    -- Nisroch
		26082, 50000, 3,    -- Lugalbanda Earring 
		26083, 50000, 3,    -- Enmerker Earring 
		26084, 50000, 3,    -- Sherida Earring 
		26419, 50000, 3,    -- Ammurapi Shield 
		26420, 50000, 3,    -- Adapa Shield 
		26421, 50000, 3,    -- Nusku Shield
		26188, 50000, 3,    -- Kishar Ring
		26187, 50000, 3,    -- Dingir Ring 
		26185, 50000, 3,    -- Niqmaddu Ring 
		26186, 50000, 3,    -- Ilabrat Ring 
		26026, 50000, 3,    -- Shulmanu Collar
		26027, 50000, 3,    -- Iskur
		26028, 50000, 3,    -- Adad
		26029, 50000, 3,    -- Anu
		22212, 50000, 3,    -- Utu
		22213, 50000, 3,    -- Enki
		22280, 50000, 3,    -- Yamarang
		26085, 50000, 3,    -- Regal Earring
		26342, 50000, 3,    -- Regal Belt
		26191, 50000, 3,    -- Regal Ring
		25824, 50000, 3,    -- Regal Gauntlets
		25825, 50000, 3,    -- Regal Captains Gloves
		25826, 50000, 3,    -- Regal Gloves
		25827, 50000, 3,    -- Regal Cuffs
		26038, 50000, 3,    -- Regal Necklace
		21396, 50000, 3,    -- Regal Gem
		26030, 50000, 3,    -- Erra Pendant
		22281, 50000, 3,    -- Knob
    }

    player:showText(npc, ID.text.OLWYN_SHOP_DIALOG)
    xi.shop.nation(player, stock, xi.nation.BASTOK)
end

return entity
