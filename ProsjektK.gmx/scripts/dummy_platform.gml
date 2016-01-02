///dummy_platform()
var SW = sprite_width * phySize;
var SXO = sprite_get_xoffset(sprite_index) * phySize;
var PW = (sprite_get_width(spr_Platform_Cave) / 3) * (2 - phySize);
var leftX = x - PW;
var rightX = x + PW;
var yOff = y + 1;

var left = collision_point(leftX, yOff, Platform, false, true);
var center = collision_point(x, yOff, Platform, false, true);
var right = collision_point(rightX, yOff, Platform, false, true);

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
