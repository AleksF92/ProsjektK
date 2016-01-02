///player_state_idle()

//Check for input
var dirX = keyboard_check(ord("D")) - keyboard_check(ord("A"));
if (dirX == 0) {
    dirX = keyboard_check(vk_right) - keyboard_check(vk_left);
}
var charge = keyboard_check(vk_space);
var wall = player_wall(dirX);

if (charge) {
    //Start jumping
    sprite_index = spr_Player_Jumping;
    image_index = 0;
    image_speed = 0;
    state = player_state_jump;
}
else if (dirX != 0 && !wall) {
    //Start moving
    sprite_index = spr_Player_Jumping;
    image_index = 1;
    image_speed = ANIMATION_SPEED;
    state = player_state_move;
}
else {
    //Stay still
    if (image_speed > 0) {
        //Animation running
        if (image_index == 0) {
            //Looking loop done
            image_speed = 0;
        }
        
        //Play sound
        if (sprite_index == spr_Player_Idle) {
            if (image_index == 1) {
                audio_play_sound(snd_Splat_Jump, 1, false);
            }
        }
        else if (sprite_index == spr_Player_Idle2) {
            if ((image_index == 3 || image_index == 7) || (image_index == 10 || image_index == 13)) {
                audio_play_sound(snd_Splat_Jump, 1, false);
            }
        }
    }
    else {
        if (!alarm[0]) {
            //Start random look timer
            var sec = room_speed;
            alarm[0] = irandom_range(sec, sec * 5);
        }
    }
}
