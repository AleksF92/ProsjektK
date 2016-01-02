///crafting_recipe_craft(recipe)
var recipe = argument[0];
var hasItems = true;
var ingredients = recipe[| RECIPE.INGREDIENTS];

//Check if has items
for (var i = 0; i < ds_list_size(ingredients); i++) {
    //Get ingredient data
    var ingredient = ingredients[| i];
    var item = ingredient[| INGREDIENT.ITEM];
    var amount = ingredient[| INGREDIENT.AMOUNT];

    //Find item in inventory
    var count = inventory_item_count(item);
    if (count < amount) {
        hasItems = false;
        inventory_item_info(item);
        var iName = Inventory.iInfo[| INFO.NAME];
        show_debug_message("Missing item: " + iName + " x" + string(amount - count));
        //break;
    }
}

//Remove items, craft recipe
if (hasItems) {
    for (var i = 0; i < ds_list_size(ingredients); i++) {
        //Get ingredient data
        var ingredient = ingredients[| i];
        var item = ingredient[| INGREDIENT.ITEM];
        var amount = ingredient[| INGREDIENT.AMOUNT];
    
        //Remove items
        while (amount > 0) {
            //Locate item
            var gx = inventory_item_gx(item, 0);
            var gy = inventory_item_gy(item, 0);
            var count = min(Inventory.iCount[# gx, gy], amount);
                
            //Remove item
            inventory_item_remove(gx, gy, count);
            amount -= count;
        }
    }
    
    var recipeId = recipe[| RECIPE.NAME];
    switch(recipeId) {
        case "Heater": {
            HeavyItem.held = false;
            HeavyItem.phy_active = true;
            
            var craft = instance_create(Player.phy_position_x, Player.phy_position_y, Heater);
            craft.held = true;
            craft.phy_active = false;
            break;
        }
        case "Cooler": {
            HeavyItem.held = false;
            HeavyItem.phy_active = true;
            
            var craft = instance_create(Player.phy_position_x, Player.phy_position_y, Cooler);
            craft.held = true;
            craft.phy_active = false;
            break;
        }
    }
    
    show_debug_message("Crated item: " + recipeId);
}
