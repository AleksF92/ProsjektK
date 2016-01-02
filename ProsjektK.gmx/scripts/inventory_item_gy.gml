///inventory_item_gy(itemId, skipCount)
var itemId = argument[0];
var skipCount = argument[1];
var gy = -1;

for (var yy = 0; yy < Inventory.HEIGHT; yy++) {
    for (var xx = 0; xx < Inventory.WIDTH; xx++) {
        //Check for item in slot
        if (Inventory.iId[# xx, yy] == itemId) {
            if (skipCount > 0) {
                //Skip this
                skipCount--;
            }
            else {
                //Found item
                gy = yy;
                break;
            }
        }
    }
    
    //If done
    if (gy != -1) {
        break;
    }
}

return gy;
