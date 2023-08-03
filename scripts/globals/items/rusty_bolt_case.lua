-----------------------------------
-- ID: 4197
-- rusty_bolt_case
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
    target:addItem(xi.items.RUSTY_BOLT, 99) -- 99x rusty_bolt
end

return itemObject
