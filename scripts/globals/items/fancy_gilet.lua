-----------------------------------
-- ID: 25774
-- Fancy Gilet
-- Dispenses Persikos Snow Cone
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
    target:addItem(xi.items.PERSIKOS_SNOW_CONE)
end

return itemObject
