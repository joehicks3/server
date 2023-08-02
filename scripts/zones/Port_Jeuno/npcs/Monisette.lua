-----------------------------------
-- Area: Port Jeuno
--  NPC: Monisette
-- !pos -3 0.1 -9 246
-----------------------------------
local ID = require("scripts/zones/Port_Jeuno/IDs")
require("scripts/globals/keyitems")
require("scripts/globals/npc_util")
require("scripts/globals/settings")
require("scripts/globals/quests")
require("scripts/globals/utils")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
    if
        npcUtil.tradeHasExactly(trade, { xi.items.EARTH_CRYSTAL, xi.items.EARTH_CRYSTAL, xi.items.FIRE_CRYSTAL })
    then
        npcUtil.giveItem(player, xi.items.ASSASSINS_ARMLETS)
		player:confirmTrade()
    end
end

return entity
