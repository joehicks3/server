-----------------------------------
-- Area: Bhaflau Thickets
--  NPC: Harvesting Point
-----------------------------------
require("scripts/globals/helm")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
    xi.helm.onTrade(player, npc, trade, xi.helm.type.HARVESTING, 503)
end

entity.onTrigger = function(player, npc)
    xi.helm.onTrigger(player, xi.helm.type.HARVESTING)
end

entity.onEventUpdate = function(player, csid, option, npc)
end

entity.onEventFinish = function(player, csid, option, npc)
end

return entity
