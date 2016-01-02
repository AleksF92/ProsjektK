///crafting_recipe_add(recipeId)
var recipeId = argument[0];
var recipe = ds_list_create();
var ingredients = ds_list_create();
var name = "";
var desc = "";

while (name == "") {
    //Find item number
    var n = ds_list_size(ingredients);

    //Find next ingredient & amount
    var item = -1;
    var amount = 0;
    
    switch (recipeId) {
        case "HEATER": {
            if (n == 0) { item = ITEM.ORE_COPPER; amount = 5; break; }
            if (n == 1) { item = ITEM.TOME_EARTH; amount = 1; break; }
            name = "Heater";
            desc = "A very warm object!";
            break;
        }
        case "COOLER": {
            if (n == 0) { item = ITEM.ORE_MITHRIL; amount = 8; break; }
            if (n == 1) { item = ITEM.TOME_AIR; amount = 2; break; }
            name = "Cooler";
            desc = "A very cold object!";
            break;
        }
    }
    
    
    if (name != "") {
        //Create recipe
        ds_list_add(recipe, name);
        ds_list_add(recipe, desc);
        ds_list_add(recipe, ingredients);
        
        //Add recipe to list
        ds_list_add(Crafting.recipes, recipe);
    }
    else {
        //Add ingredient to ingredients
        var ingredient = ds_list_create();
        ds_list_add(ingredient, item);
        ds_list_add(ingredient, amount);
        
        ds_list_add(ingredients, ingredient);
    }
}

show_debug_message("Added recipe: " + name + " (" + string(ds_list_size(ingredients)) + " ingredients)");
