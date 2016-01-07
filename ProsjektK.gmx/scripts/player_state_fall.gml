///player_state_fall()

//Check for input
var hw = sprite_width / 4;
var OFF = 20;
var ground = player_platform();
var wall = player_wall(velX);
var roof = player_roof();

if (wall) {
    velX = 0;
}
if (ground && velY > 0) {
    //Land
    sprite_index = spr_Player_Idle;
    image_index = 0;
    image_speed = 0;
    y = ground.y + OFF;
    velX = 0;
    velY = 0;
    state = player_state_idle;
    
    audio_play_sound(snd_Splat_Jump, 1, false);
}
else {
    if (roof && velY < 0) {
        //Hit head in roof
        velY = 0;
    }

    //Falling
    velY += 1;
    if (velY > 0) { image_index = 3; }
    x += velX;
    y += velY;
}
