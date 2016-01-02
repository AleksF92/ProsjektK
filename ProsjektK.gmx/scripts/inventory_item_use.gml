///inventory_item_use(gx, gy)
var gx = argument[0];
var gy = argument[1];
var itemId = Inventory.iId[# gx, gy];

switch(itemId) {
    case ITEM.SWORD: {
        break;
    }
    case ITEM.POTION: {
        Inventory.iCount[# gx, gy]--;
        break;
    }
}

//Check if empty stack
if (Inventory.iCount[# gx, gy] <= 0) {
    Inventory.iId[#gx, gy] = -1;
    Inventory.iCount[# gx, gy] = 0;
}
