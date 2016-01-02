///player_split()

if (Player.size >= 3) {
    //Create clone
    var newDummy = instance_create(Player.x, Player.y, PlayerDummy);
    with (newDummy) {
        //Set velocity
        velX = Player.velX;
        velY = Player.velY;
    
        //Find correct size
        var dSize = 1;
        var pSize = 1;
        switch (Player.size) {
            case 4: { dSize = 1; pSize = 2; break; }
            case 5: { dSize = 2; pSize = 2; break; }
        }
        dummy_resize(dSize);
        
        //Subtract size from player
        with (Player) {
            player_resize(pSize);
        }
    }
}
