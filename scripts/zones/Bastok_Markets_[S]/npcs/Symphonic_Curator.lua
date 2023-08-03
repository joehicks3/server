-----------------------------------
-- Area: Windurst Woods: Moghouse
--  NPC: Symphonic Curator
-----------------------------------
require("scripts/globals/symphonic_curator")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    xi.symphonic_curator.onTrigger(player, npc)
end

entity.onEventUpdate = function(player, csid, option, npc)
    xi.symphonic_curator.onEventUpdate(player, csid, option, npc)
end

entity.onEventFinish = function(player, csid, option, npc)
    xi.symphonic_curator.onEventFinish(player, csid, option, npc)
end

return entity
