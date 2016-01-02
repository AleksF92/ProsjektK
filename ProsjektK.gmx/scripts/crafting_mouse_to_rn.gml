///crafting_mouse_to_rn(mouseX, mouseY);
var mx = argument[0];
var my = argument[1];
var rn = -1;

show_debug_message("Mouse: " + string(mx) + ", " + string(my));
show_debug_message("View: " + string(view_yview[0]));

if (my <= view_yview[0] + (view_hview[0] / 2)) {
    //Inside top half
    rn = 0;
}
else {
    //Inside bottom half
    rn = 1;
}

return rn;
