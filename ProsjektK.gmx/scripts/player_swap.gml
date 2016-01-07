///player_swap()
if (instance_exists(PlayerDummy)) {
    var dummy = instance_find(PlayerDummy, 0);
    
    //Swap player
    var swapX = Player.x;
    var swapY = Player.y;
    var swapSize = Player.size;
    var swapVelX = Player.velX;
    var swapVelY = Player.velY;
    var swapSprite = Player.sprite_index;
    var swapBridge = Player.bridge;
    
    //Move player
    with (Player) {
        x = dummy.x;
        y = dummy.y;
        velX = dummy.velX;
        velY = dummy.velY;
        player_resize(dummy.size);
        
        if (Player.state == player_state_bridge) {
            Player.state = player_state_fall;
        }
        
        Player.bridge = -1;
        if (dummy.sprite_index == spr_Dummy_Bridge) {
            //Bridge
            sprite_index = spr_Player_Bridge;
            image_index = sprite_get_number(sprite_index) - 1;
            state = player_state_bridge;
            bridge = dummy.bridge;
        }
    }
    
    //Create new dummy (last instance in list)
    var newDummy = instance_create(swapX, swapY, PlayerDummy);
    with (newDummy) {
        velX = swapVelX;
        velY = swapVelY;
        dummy_resize(swapSize);
        
        if (swapSprite == spr_Player_Bridge) {
            //Bridge dummy
            sprite_index = spr_Dummy_Bridge;
            state = dummy_state_idle;
            bridge = swapBridge;
        }
    }
    
    //Check if held items need target change
    with (HeavyItem) {
        if (target == dummy) {
            //Swap to player
            target = Player;
        }
        else if (target == Player) {
            //Swap to new dummy
            target = newDummy;
        }
    }
    
    //Remove old dummy
    with (dummy) { instance_destroy(); }
}
