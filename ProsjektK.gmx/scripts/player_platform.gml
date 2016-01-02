///player_platform()
var w = sprite_width / 3;
var hw = sprite_width / 2.5;
var x1 = x - sprite_get_xoffset(sprite_index);
var x3 = x1 + (w * 2);
var yOff = y + 1;

var left = collision_line(x1, yOff, x1 + w, yOff, Platform, true, true);
var center = collision_line(x - hw, yOff, x + hw, yOff, Platform, true, true);
var right = collision_line(x3, yOff, x3 + w, yOff, Platform, true, true);
var ground = noone;

if (center) {
    if (center.image_index == PSIDE.LEFT) {
        if (left && left == center) {
            ground = center;
        }
    }
    else if (center.image_index == PSIDE.RIGHT) {
        if (right && right == center) {
            ground = center;
        }
    }
    else {
        ground = center;
    }
}

return ground;
