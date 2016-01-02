///tag_completed(tag, repeat);
var tag = argument[0];
var rep = false;
if (argument_count > 1) { rep = argument[1]; }
var found = false;

if (Main.tags[? tag]) {
    //Found tag
    found = true;
}
else {
    //Did not find tag
    if (!rep) {
        Main.tags[? tag] = true;
    }  
}

return found;
