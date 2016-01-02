///player_state_jump()

//Check for input
var charging = keyboard_check(vk_space);
var dirX = keyboard_check(ord("D")) - keyboard_check(ord("A"));
if (dirX == 0) {
    dirX = keyboard_check(vk_right) - keyboard_check(vk_left);
}

if (charging) {
    //Charge jump
    velX = dirX * -(velY / 3);
    velY -= JUMP_FORCE;
    if (velY < -MAX_JUMP) { velY = -MAX_JUMP; }
    image_index = 1;
}
else {
    //Take off
    velX = dirX * -(velY / 3);
    x += velX;
    y += velY;
    image_index = 2;
    state = player_state_fall;
    
    audio_play_sound(snd_Splat_Jump, 1, false);
}
