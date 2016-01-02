///inventory_item_gx(itemId, skipCount)
var itemId = argument[0];
var skipCount = argument[1];
var gx = -1;

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
                gx = xx;
                break;
            }
        }
    }
    
    //If done
    if (gx != -1) {
        break;
    }
}

return gx;
