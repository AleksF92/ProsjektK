///player_state_move()

//Check for input
var dirX = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var charge = keyboard_check(vk_space);
var ground = player_platform();
var wall = player_wall(dirX);

if (!ground) {
    if (size == MAX_SIZE) {
        //Bridge
        state = player_state_bridge;
    }
    else {
        //Fall
        state = player_state_fall;
    }
}
else if (charge) {
    //Start jumping
    sprite_index = spr_Player_Jumping;
    image_index = 0;
    image_speed = 0;
    state = player_state_jump;
}
else if (dirX != 0 && !wall) {
    //Apply movement
    velX = dirX * mSpeed;
    x += velX;
    
    //Play sounds
    if (image_index == 0) {
        //Jumping
        audio_play_sound(snd_Splat_Jump, 1, false);
    }
    else if (image_index == 3) {
        //Landing
        //audio_play_sound(snd_Splat_Ground, 1, false);
    }
}
else {
    //Stopped
    sprite_index = spr_Player_Idle;
    image_index = 0;
    image_speed = 0;
    velX = 0;
    state = player_state_idle;
}
