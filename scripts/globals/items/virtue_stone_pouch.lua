-----------------------------------
-- ID: 5410
-- virtue_stone_pouch.lua
-- When used, you will obtain one stack of virtue stone
-----------------------------------
local itemObject = {}

itemObject.onItemCheck = function(target)
    local result = 0
    if target:getFreeSlotsCount() == 0 then
        result = xi.msg.basic.ITEM_NO_USE_INVENTORY
    end

    return result
end

itemObject.onItemUse = function(target)
    target:addItem(xi.items.VIRTUE_STONE, 99)
end

return itemObject
