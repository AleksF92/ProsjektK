///inventory_item_remove(gx, gy, count)
var gx = argument[0];
var gy = argument[1];
var removeCount = argument[2];

var count = Inventory.iCount[# gx, gy];
if (count <= removeCount) {
    //Remove item
    Inventory.iId[# gx, gy] = -1;
}
Inventory.iCount[# gx, gy] = clamp(count - removeCount, 0, count);
