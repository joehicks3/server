-----------------------------------
-- ID: 5312
-- Toolbag Hira
-- When used, you will obtain one stack of hiraishin
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
    target:addItem(xi.items.HIRAISHIN, 99)
end

return itemObject
