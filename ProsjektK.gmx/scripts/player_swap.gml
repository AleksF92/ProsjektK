///player_swap()
if (instance_exists(PlayerDummy)) {
    var dummy = instance_find(PlayerDummy, 0);
    
    //Swap player
    var swapX = Player.x;
    var swapY = Player.y;
    var swapSize = Player.size;
    var swapVelX = Player.velX;
    var swapVelY = Player.velY;
    
    //Move player
    with (Player) {
        x = dummy.x;
        y = dummy.y;
        velX = dummy.velX;
        velY = dummy.velY;
        player_resize(dummy.size);
    }
    
    with (dummy) { instance_destroy(); }
    var newDummy = instance_create(swapX, swapY, PlayerDummy);
    with (newDummy) {
        velX = swapVelX;
        velY = swapVelY;
        dummy_resize(swapSize);
    }
}
