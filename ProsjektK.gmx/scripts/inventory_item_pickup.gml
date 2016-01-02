///inventory_item_pickup(itemId, itemCount)
var itemId = argument[0];
var itemCount = argument[1];

//Get item info
inventory_item_info(itemId);

//Fill stacks or til inventory full
var skipCount = 0;
while (itemCount > 0) {
    var gx = inventory_item_gx(itemId, skipCount);
    var gy = inventory_item_gy(itemId, skipCount);
    var full = inventory_is_full();
    if (gx >= 0 && gy >= 0) {
        //Found item
        var stackSpace = Inventory.iInfo[| INFO.MAX_STACK] - Inventory.iCount[# gx, gy];
        if (stackSpace > 0) {
            //Item has room for more
            var addCount = min(itemCount, stackSpace);
            Inventory.iCount[# gx, gy] += addCount;
            stackSpace -= addCount;
            itemCount -= addCount;
        }
        
        //Check if stack is full
        if (stackSpace <= 0) {
            //Skip this stack next time
            skipCount++;
        }
    }
    else if (!full) {
        //Create new stack
        var firstX = inventory_free_gx();
        var firstY = inventory_free_gy();
        var addCount = min(itemCount, Inventory.iInfo[| INFO.MAX_STACK]);
        Inventory.iId[# firstX, firstY] = itemId;
        Inventory.iCount[# firstX, firstY] = addCount;
        itemCount -= addCount;
        
        if (addCount >= Inventory.iInfo[| INFO.MAX_STACK]) {
            skipCount++;
        }
    }
    else {
        break;
    }
}

return itemCount;
