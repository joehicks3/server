-----------------------------------
-- Area: Bastok Markets
--  NPC: Zhikkom
-- Standard Merchant NPC
-- !pos -288.669 -10.319 -135.064 235
-----------------------------------
local ID = require("scripts/zones/Bastok_Markets/IDs")
require("scripts/globals/shop")
-----------------------------------
local entity = {}

entity.onTrigger = function(player, npc)
    local stock =
    {	
		17977,   1000, 3, -- Federation Knife
		17631,  10000, 3, -- Hawkers Knife +1
		18020, 500000, 3, -- Merc. Kris
		18004,  25000, 3, -- Trailer's Kukri
		22132,     50, 3, -- Artemis's Bow +1
		17161,   1000, 3, -- Power Bow
		17178,   5000, 3, -- Power Bow +1
		17189,  10000, 3, -- Greatbow +1
		17173,  20000, 3, -- War Bow +1
		17187, 100000, 3, -- Eurytos' Bow
		17218,   1000, 3, -- Zamburak
		17215,   5000, 3, -- Thug's Zamburak
		17226,   7500, 3, -- Arbalest +1
		17227,  10000, 3, -- Heavy Crossbow +1
		17243,  15000, 3, -- Velocity Bow +1
		17251,  30000, 3, -- Hellfire +1
		17930,   1000, 3, -- Republic Axe
		16676,   5000, 3, -- Viking Axe
		17928,  50000, 3, -- Juggernaut
		17939,  50000, 3, -- Kriegsbeil
		17946,  50000, 3, -- Maneater
        22279, 100000, 3, -- Staunch Tathlum +1
        22280, 200000, 3, -- Yamarang
        22298, 400000, 3, -- Aurgelmir Orb +1
        16951,  60000, 3, -- Mythril Heart +1
        16788,  80000, 3, -- Vassago's Scythe
        16552,   4163, 2, -- Scimitar
        16535,    246, 3, -- Bronze Sword
        16517,   9406, 3, -- Degen
        16551,    713, 3, -- Sapara
        16530,    618, 3, -- Xiphos
        16565,   1711, 3, -- Spatha
        16512,   3215, 3, -- Bilbo
    }

    player:showText(npc, ID.text.ZHIKKOM_SHOP_DIALOG)
    xi.shop.nation(player, stock, xi.nation.BASTOK)
end

return entity
