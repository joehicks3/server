-----------------------------------
-- Area: Lower Jeuno
--  NPC: Creepstix
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
        5023,   8160, -- Scroll of Goblin Gavotte
        4734,   7074, -- Scroll of Protectra II
        4738,   1700, -- Scroll of Shellra
        5089,  73740, -- Scroll of Gain-VIT
        5092,  77500, -- Scroll of Gain-MND
        5090,  85680, -- Scroll of Gain-AGI
        5093,  81900, -- Scroll of Gain-CHR
        5096,  73740, -- Scroll of Boost-VIT
        5099,  77500, -- Scroll of Boost-MND
        5097,  85680, -- Scroll of Boost-AGI
        5100,  81900, -- Scroll of Boost-CHR
        4849, 130378, -- Scroll of Addle
		1550,  10000, -- Ark Pentasphere(Divine Might)
		1692,   1000, -- Carmine Chip (CoP 3-5)
		5265,   1000, -- Mistmelt(CoP 4-2)
		1725,   1000, -- Snow Lilly(CoP 5-3)
		1684,   1000, -- Gold Key(CoP 5-3)
		5267,   1000, -- Shu'Meyo Salt(CoP 5-3)
		5268,   1000, -- CCB Polymer(CoP 6-4)
    }

    player:showText(npc, ID.text.JUNK_SHOP_DIALOG)
    xi.shop.general(player, stock)
end

entity.onEventUpdate = function(player, csid, option, npc)
end

entity.onEventFinish = function(player, csid, option, npc)
end

return entity