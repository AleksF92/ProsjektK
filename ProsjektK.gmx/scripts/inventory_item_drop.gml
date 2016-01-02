///inventory_item_drop(gx, gy)
var gx = argument[0];
var gy = argument[1];

var dropCount = Inventory.iCount[# gx, gy];
Inventory.iId[# gx, gy] = -1;
Inventory.iCount[# gx, gy] = 0;

return dropCount;
