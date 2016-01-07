///dummy_state_fall()

var hw = sprite_width / 4;
var OFF = 20;
var ground = player_platform();
var wall = player_wall(velX);

if (wall) {
    velX = 0;
}
if (ground && velY > 0) {
    //Land
    y = ground.y + OFF;
    velX = 0;
    velY = 0;
    state = dummy_state_idle;
    
    audio_play_sound(snd_Splat_Jump, 1, false);
}
else {
    //Falling
    velY += 1;
    x += velX;
    y += velY;
}
