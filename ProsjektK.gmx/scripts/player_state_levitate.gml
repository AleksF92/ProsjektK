///player_state_levitate()

//Check for input
var dirX = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var wall = player_wall(velX);
var roof = player_roof();

velX = dirX * mSpeed;

if (wall) {
    velX = 0;
}
if (roof && velY < 0) {
    //Hit head in roof
    velY = 0;
}

//Falling
velY += 1;
if (velY > 0) { image_index = 3; }
x += velX;
y += velY;

sprite_index = spr_Player_Jumping;
image_index = 2;

state = player_state_fall;
