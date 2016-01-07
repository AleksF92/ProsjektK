///player_absorb()
if (instance_exists(PlayerDummy)) {
    with (PlayerDummy) {
        var newSize = Player.size + size;
        if (newSize <= MAX_SIZE) {
            //Room for slime
            var w = phySize * 16;
            var touch = collision_line(x - w, y, x + w, y, Player, false, true);
            if (touch) {
                //Merge
                with (Player) { player_resize(newSize); }
                instance_destroy();
            }
        }
    }
}
