///dummy_wall(dir)
var dir = sign(argument[0]);

var SW = sprite_width * phySize;
var SH = sprite_height * phySize;
var ground = dummy_platform();

var hw = SW / 2;
var hh = SH / 2;
var SOY = sprite_get_yoffset(sprite_index) * phySize;
var x1 = x + (hw * dir) + (dir * 1);
var y1 = y - SOY + (hh / 2);
var y2 = y1 + hh;
if (ground) {
    y2 = min(y2, ground.y);
}

var wall = collision_line(x1, y1, x1, y2, Wall, false, true);
if (wall) {
    var leftX = wall.x;
    var rightX = wall.x + wall.sprite_width;
    if (dir < 0) {
        //Player is moving left
        x = rightX + hw;
    }
    else if (dir > 0) {
        //Player is moving right
        x = leftX - hw;
    }
}

return wall;
