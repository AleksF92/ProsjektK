///player_state_eat(objectId)
if (argument_count) {
    //WARNING: LAUNCHED FROM OBJECT, NOT PLAYER
    var objectId = argument[0];
    
    if (objectId != Player.eat) {
        //Start eating
        Player.eat = objectId;
        Player.state = player_state_eat;
        
        Player.sprite_index = spr_Player_Eat;
        Player.image_index = 1;
        Player.image_speed = Player.ANIMATION_SPEED;
        
        //Set eat time
        var s = room_speed;
        var iName = object_get_name(object_index);
        if (iName == "RockMining") {
            switch (ore) {
                case "Copper": { Player.eatTime = irandom_range(s * 2, s * 5); break; }
                case "Mithril": { Player.eatTime = irandom_range(s * 5, s * 10); break; }
            }
        }
    }
}
else {
    //Eating
    if (eatTime > 0) {
        eatTime--;
    }
    else {
        //Done eating
        sprite_index = spr_Player_Idle;
        image_index = 0;
        image_speed = 0;
        state = player_state_idle;
        
        //Recieve item
        var s = room_speed;
        var iName = object_get_name(eat.object_index);
        if (iName == "RockMining") {
            switch(eat.ore) {
                case "Copper": {
                    //Primary collect
                    inventory_item_pickup(ITEM.ORE_COPPER, irandom_range(1, 3));
                    
                    //Secondary collect
                    var roll = irandom_range(1, 4);
                    if (roll <= 1) {
                        inventory_item_pickup(ITEM.TOME_EARTH, 1);
                    }
                    
                    //Set cooldown
                    eat.alarm[0] = irandom_range(s * 2, s * 6);
                    break;
                }
                case "Mithril": {
                    //Primary collect
                    inventory_item_pickup(ITEM.ORE_MITHRIL, irandom_range(1, 3));
                                        
                    //Secondary collect
                    var roll = irandom_range(1, 4);
                    if (roll <= 1) {
                        inventory_item_pickup(ITEM.TOME_AIR, 1);
                    }
                    
                    //Set cooldown
                    eat.alarm[0] = irandom_range(s * 10, s * 20);
                    break;
                }
            }
        }
        
        //Cleanup
        eat = noone;
        eatTime = 0;
    }
}
