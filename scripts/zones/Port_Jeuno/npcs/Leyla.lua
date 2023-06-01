-----------------------------------
-- Area: Port Jeuno
--  NPC: Leyla
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
        17308,    55,    -- Hawkeye
        17320,     7,    -- Iron Arrow
        17336,     5,    -- Crossbow Bolt
         4509,    10,    -- Distilled Water
         5038,  1000,    -- Enchanting Etude
         5037,  1265,    -- Spirited Etude
         5036,  1567,    -- Learned Etude
         5035,  1913,    -- Quick Etude
         5034,  2208,    -- Vivacious Etude
         5033,  2815,    -- Dextrous Etude
         5032,  3146,    -- Sinewy Etude
		25550, 25000,    -- Oshosi Mask+1
		25890, 25000,    -- Osh. Trousers +1
		25977, 25000,    -- Oshosi Gloves +1
		25957, 25000,    -- Oshosi Leggings +1
		26526, 25000,    -- Oshosi Vest +1
        25552, 25000,    -- Ken. Jinpachi +1
		26528, 25000,    -- Ken. Samue +1
		25979, 25000,    -- Ken. Tekko +1
		25892, 25000,    -- Ken. Hakama +1
		25959, 25000,    -- Ken. Sune-ate +1
		25558, 25000,    -- Arke Zuchetto +1
		26534, 25000,    -- Arke Corazza +1
		25985, 25000,    -- Arke Manpolas +1
		25898, 25000,    -- Arke Cosciales +1
		25965, 25000,    -- Arke Gambieras +1
    }

    player:showText(npc, ID.text.DUTY_FREE_SHOP_DIALOG)
    xi.shop.general(player, stock)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity