///player_split()

if (Player.size >= 2) {
    //Add split force
    var FORCE = 2;
    //Player.y -= FORCE;
    var pForce = choose(FORCE, -FORCE);
    var dForce = -pForce;

    //Create clone
    var newDummy = instance_create(Player.x, Player.y, PlayerDummy);
    with (newDummy) {
        //Set velocity
        velX = Player.velX + dForce;
        velY = Player.velY - FORCE;
    
        //Find correct size
        var dSize = 1;
        var pSize = 1;
        switch (Player.size) {
            case 3: { dSize = 1; pSize = 2; break; }
            case 4: { dSize = 2; pSize = 2; break; }
        }
        dummy_resize(dSize);
        
        //Subtract size from player
        with (Player) {
            velX += pForce;
            velY -= FORCE;
            player_resize(pSize);
            state = player_state_fall;
        }
    }
}
