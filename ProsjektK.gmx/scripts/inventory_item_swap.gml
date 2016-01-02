///inventory_item_swap(x1, y1, x2, y2)
var x1 = argument[0];
var y1 = argument[1];
var x2 = argument[2];
var y2 = argument[3];

//Check if has items
if (Inventory.iId[# x1, y1] > -1 || Inventory.iId[# x2, y2] > -1) {
    //Check if able to stack (same item)
    if (Inventory.iId[# x1, y1] == Inventory.iId[# x2, y2]) {
        inventory_item_info(Inventory.iId[# x2, y2]);
        var canAdd = Inventory.iInfo[| INFO.MAX_STACK] - Inventory.iCount[# x2, y2];
        var addCount = min(Inventory.iCount[# x1, y1], canAdd);
        Inventory.iCount[# x2, y2] += addCount;
        Inventory.iCount[# x1, y1] -= addCount;
        
        if (Inventory.iCount[# x1, y1] <= 0) {
            //Stack empty
            Inventory.iId[# x1, y1] = -1;
            Inventory.iCount[# x1, y1] = 0;
        }
        
        //Don't swap if stacked
        if (canAdd > 0) {
            exit;
        }
    }
    
    //Temporary copy
    var tId = Inventory.iId[# x2, y2];
    var tCount = Inventory.iCount[# x2, y2];
    
    //Copy item to new spot
    Inventory.iId[# x2, y2] = Inventory.iId[# x1, y1];
    Inventory.iCount[# x2, y2] = Inventory.iCount[# x1, y1];
    
    //Overwrite old spot
    Inventory.iId[# x1, y1] = tId;
    Inventory.iCount[# x1, y1] = tCount;
}
