///inventory_free_gx()
var gx = -1;

for (var yy = 0; yy < Inventory.HEIGHT; yy++) {
    for (var xx = 0; xx < Inventory.WIDTH; xx++) {
        //Check for item in slot
        if (Inventory.iId[# xx, yy] == -1) {
            gx = xx;
            break;
        }
    }
    
    //If done
    if (gx != -1) {
        break;
    }
}

return gx;
