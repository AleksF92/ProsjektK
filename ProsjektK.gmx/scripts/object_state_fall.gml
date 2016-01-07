///object_state_fall()
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
    state = object_state_idle;
}
else {
    //Falling
    velY += 1;
    x += velX;
    y += velY;
}
