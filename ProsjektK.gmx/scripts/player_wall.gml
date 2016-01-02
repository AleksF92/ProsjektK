///player_wall(dir)
var dir = sign(argument[0]);
show_debug_message("Dir: " + string(dir));

var hw = sprite_width / 2;
var x1 = x + (hw * dir) + (dir * 1);
var y1 = y - sprite_get_yoffset(sprite_index);
var y2 = y1 + sprite_height;

var wall = collision_line(x1, y1, x1, y2, Wall, true, true);
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
