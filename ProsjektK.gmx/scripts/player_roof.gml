///player_roof()
var SW = sprite_width * phySize;
var SXO = sprite_get_xoffset(sprite_index) * phySize;
var PW = (sprite_get_width(spr_Platform_Cave) / 3) * (2 - phySize);
var leftX = x - PW;
var rightX = x + PW;
var yOff = y - (sprite_get_yoffset(sprite_index) * phySize);

//Look for normal platforms
var left = collision_point(leftX, yOff, Roof, false, true);
var center = collision_point(x, yOff, Roof, false, true);
var right = collision_point(rightX, yOff, Roof, false, true);

var roof = noone;

if (center) {
    if (center.image_index == PSIDE.LEFT) {
        if (left && left == center) {
            roof = center;
        }
    }
    else if (center.image_index == PSIDE.RIGHT) {
        if (right && right == center) {
            roof = center;
        }
    }
    else {
        roof = center;
    }
}

return roof;
