///inventory_item_info(itemId)
var itemId = argument[0];
var iInfo = Inventory.iInfo;

//Reset info
ds_list_clear(iInfo);

//Find new info
switch(itemId) {
    case ITEM.SWORD: {
        ds_list_add(iInfo, "Sword"); //Name
        ds_list_add(iInfo, 1); //Max stack
        break;
    }
    case ITEM.POTION: {
        ds_list_add(iInfo, "Potion"); //Name
        ds_list_add(iInfo, 8); //Max stack
        break;
    }
    case ITEM.ORE_COPPER: {
        ds_list_add(iInfo, "Copper Ore"); //Name
        ds_list_add(iInfo, 16); //Max stack
        break;
    }
    case ITEM.ORE_MITHRIL: {
        ds_list_add(iInfo, "Mithril Ore"); //Name
        ds_list_add(iInfo, 16); //Max stack
        break;
    }
    case ITEM.TOME_FIRE: {
        ds_list_add(iInfo, "Tome of Fire"); //Name
        ds_list_add(iInfo, 8); //Max stack
        break;
    }
    case ITEM.TOME_WATER: {
        ds_list_add(iInfo, "Tome of Water"); //Name
        ds_list_add(iInfo, 8); //Max stack
        break;
    }
    case ITEM.TOME_EARTH: {
        ds_list_add(iInfo, "Tome of Earth"); //Name
        ds_list_add(iInfo, 8); //Max stack
        break;
    }
    case ITEM.TOME_AIR: {
        ds_list_add(iInfo, "Tome of Air"); //Name
        ds_list_add(iInfo, 8); //Max stack
        break;
    }
    case ITEM.STICK: {
        ds_list_add(iInfo, "Stick"); //Name
        ds_list_add(iInfo, 16); //Max stack
        break;
    }
}
