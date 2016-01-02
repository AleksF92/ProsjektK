///inventory_item_count(itemId)
var itemId = argument[0];
var count = 0;

for (var yy = 0; yy < Inventory.HEIGHT; yy++) {
    for (var xx = 0; xx < Inventory.WIDTH; xx++) {
        //Check for item in slot
        if (Inventory.iId[# xx, yy] == itemId) {
            count += Inventory.iCount[# xx, yy];
        }
    }
}

return count;
