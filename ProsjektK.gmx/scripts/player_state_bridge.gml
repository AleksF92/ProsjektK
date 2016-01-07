///player_state_bridge()

var xDiff = sprite_get_xoffset(spr_Player_Idle) - sprite_get_xoffset(spr_Player_Bridge);
if (image_speed > 0) {
    //Creating bridge
    
    if (sprite_index != spr_Player_Bridge) {
        //Start creating bridge
        sprite_index = spr_Player_Bridge;
        image_index = 0;
        
        //Pop any held items
        with (HeavyItem) {
            if (held && target == Player) {
                //Pop
                held = false;
                target = noone;
                state = object_state_fall;
                
                velX = 4 * sign(Player.velX);
                velY = -16;
            }
        }
        
        //Move to bridge offset
        var offX = (max(xDiff, -xDiff) * phySize) * sign(velX);
        x += offX;
        
        //Create plaforms
        bridge = ds_list_create();
        
        var px = (((x - offX - 16) div 32) * 32) - 10;
        var py = (((y - 16) div 32) * 32) - 24;
        var pw = sprite_get_width(spr_Platform_Cave);
        
        for (var i = 0; i < 6; i++) {
            var p = instance_create(px + (pw * i), py, obj_Platform_Dummy);
            ds_list_add(bridge, p);
        }
    }
    
    notify_show(
        "Great job! Now try swap to the remaining slime#"
        + "and see if you can get somewhere...",
    Main.NOTIFY_TIME, "FIRST_BRIDGE", false, true);
    
    if (image_index == sprite_get_number(sprite_index) - 1) {
        //Done creating
        image_speed = 0;
    }
}
else if (image_speed < 0) {
    //Removing bridge
    
    if (image_index == 0) {
        //Done removing
        image_speed = 0;
        sprite_index = spr_Player_Idle;
        state = player_state_fall;
        
        //Move to normal offset
        x -= (max(xDiff, -xDiff) * phySize) * sign(-velX);
    }
}
else {
    //Bridge still
    
    //Check for input
    var dirX = keyboard_check(ord("D")) - keyboard_check(ord("A"));
    if (dirX == 0) {
        dirX = keyboard_check(vk_right) - keyboard_check(vk_left);
    }
    
    if (dirX != 0) {
        //Remove bridge
        image_speed = -ANIMATION_SPEED;
        
        //Apply movement
        velX = dirX * mSpeed;
        x += velX;
        
        //Clean up bridge
        for (var i = 0; i < ds_list_size(bridge); i++) {
            with (bridge[| i]) {
                instance_destroy();
            }
        }
        ds_list_destroy(bridge);
        bridge = -1;
        
        //Update other physics
        with (PlayerDummy) { state = dummy_state_fall; }
        with (HeavyItem) { state = object_state_fall; }
    }
}
