///object_fall()
var hw = sprite_width / 4;
var OFF = 20;
var ground = dummy_platform();
var wall = dummy_wall(velX);

if (wall) {
    velX = 0;
}
if (ground && velY > 0) {
    //Land
    y = ground.y + OFF;
    velX = 0;
    velY = 0;
}
else {
    //Falling
    velY += 1;
    x += velX;
    y += velY;
}
