-----------------------------------
-- Area: Bastok Markets
--  NPC: Charging Chocobo
-- Standard Merchant NPC
-- !pos -301.531 -10.319 -157.237 235
-----------------------------------
local ID = require("scripts/zones/Bastok_Markets/IDs")
require("scripts/globals/shop")
-----------------------------------
local entity = {}

entity.onTrigger = function(player, npc)
    local stock =
    {
        12832,   191, 3,    -- Bronze Subligar
        12816,  1646, 3,    -- Scale Cuisses
        12817, 14131, 2,    -- Brass Cuisses
        12800, 34776, 2,    -- Cuisses
        12960,   117, 3,    -- Bronze Leggings
        12944,   998, 3,    -- Scale Greaves
        12945,  8419, 2,    -- Brass Greaves
        12928, 21859, 2,    -- Plate Leggings
        13080, 16891, 2,    -- Gorget
        13192,   382, 3,    -- Leather Belt
        13196, 10166, 3,    -- Silver Belt
        12801, 58738, 1,    -- Mythril Cuisses
        12929, 36735, 1,    -- Mythril Leggings
        13198, 20037, 1,    -- Swordbelt
		28474,  1000, 3,    -- Mendicants Earring
		28475,  1000, 3,    -- Infused Earring 
		28476,  1000, 3,    -- Calamitous Earring
		27554,  1000, 3,    -- Purity Ring
		22252,  1000, 3,    -- Sapience Orb
		28415,  1000, 3,    -- Eschan Stone
		27612,  1000, 3,    -- Sokolski Mantle
		28408,  1000, 3,    -- Grunfeld Rope
		28411,  1000, 3,    -- Yemaya Belt
		27535,  1000, 3,    -- Halasz Earring
		27537,  1000, 3,    -- Ishvara Earring
		27524,  1000, 3,    -- Noden's Gorget
		10772,  1000, 3,    -- Petrov Earring
		26160,  1000, 3,    -- Evanescence Ring
		21482,  1000, 3,    -- Compensator
		25706,  1000, 3,    -- Shango Robe
		27134,  1000, 3,    -- Kurys Gloves
		21083,  1000, 3,    -- Sucellus
		26321,  1000, 3,    -- Reiki Yotai
		25728,  1000, 3,    -- Zendik Robe
		27545,  1000, 3,    -- Telos Earring 
		27544,  1000, 3,    -- Dedition Earring
		25653,  1000, 3,    -- Halitus Helm
		26003,  1000, 3,    -- Baetyl Pendent
		25654,  1000, 3,    -- Welkin Crown
		28016,  1000, 3,    -- Incanter's Torque
		28015,  1000, 3,    -- Combatant's Torque
		26002,  1000, 3,    -- Loricate Torque +1
		25853,  1000, 3,    -- Querkening Brais
		25852,  1000, 3,    -- Darraigner's Brais
		26327,  1000, 3,    -- Asklepian Belt
		26323,  1000, 3,    -- Gishdubar Sash
		26326,  1000, 3,    -- Channelers's Stone
		26172,  1000, 3,    -- Begrudging Ring
		26173,  1000, 3,    -- Apate Ring
		26175,  1000, 3,    -- Hetairoi Ring
		27547,  1000, 3,    -- Dignitary's Ring
		26020,  1000, 3,    -- Ainia Collar
    }

    player:showText(npc, ID.text.CHARGINGCHOCOBO_SHOP_DIALOG)
    xi.shop.nation(player, stock, xi.nation.BASTOK)
end

return entity
