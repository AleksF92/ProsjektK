///inventory_empty()
var empty = true;

for (var yy = 0; yy < Inventory.HEIGHT; yy++) {
    for (var xx = 0; xx < Inventory.WIDTH; xx++) {
        //Check for item in slot
        if (Inventory.iId[# xx, yy] > -1) {
            empty = false;
            break;
        }
    }
    if (!empty) { break; }
}

return empty;
