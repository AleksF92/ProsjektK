///inventory_free_gy()
var gy = -1;

for (var yy = 0; yy < Inventory.HEIGHT; yy++) {
    for (var xx = 0; xx < Inventory.WIDTH; xx++) {
        //Check for item in slot
        if (Inventory.iId[# xx, yy] == -1) {
            gy = yy;
            break;
        }
    }
    
    //If done
    if (gy != -1) {
        break;
    }
}

return gy;
