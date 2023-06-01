-----------------------------------
-- Area: Port Jeuno
--  NPC: Gekko
-- Standard Merchant NPC
-----------------------------------
local ID = require("scripts/zones/Port_Jeuno/IDs")
require("scripts/globals/shop")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    local stock =
    {
        4150,  2387,    -- Eye Drops
        4148,   290,    -- Antidote
        4151,   367,    -- Echo Drops
        4112,   837,    -- Potion
        4128,  4445,    -- Ether
        4365,   120,    -- Rolanberry
        189,  36000,    -- Autumn's End
        188,  31224,    -- Acolyte's Grief
        5085, 50400,    -- Scroll of Regen IV
		1127,   500,    -- Kindred Seals
		2955,   500,    -- Kindred Crests
		2956,   500,    -- High Kindred Crests
		2957,   500,    -- Sacred Kindred Crests
		3541,   500,    -- Seasoning Stone
		1450, 10000,    -- Lungo Jadeshell
		1451, 10000,    -- Rimalia Stripeshell
		1453, 10000,    -- Montiont Silverpiece
		1454, 10000,    -- Ranperre Goldpiece
		1456, 10000,    -- 100 Byne Bill
		1457, 10000,    -- 10,000 Byne Bill
    }

    player:showText(npc, ID.text.DUTY_FREE_SHOP_DIALOG)
    xi.shop.general(player, stock)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity