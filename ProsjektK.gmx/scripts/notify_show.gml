///notify_show(text, duration, tag, repeat, abort);
var text = argument[0];
var dur = argument[1];
var tag = argument[2];
var rep = false;
var abort = false;
if (argument_count > 3) { rep = argument[3]; abort = argument[4]; }
var success = false;

//Try to show
if (!Notification.visible) {
    if (!tag_completed(tag, rep)) {
        //Prepare new notification
        var w = string_width(text);
        var h = string_height(text);
        Notification.visible = true;
        Notification.text = text;
        Notification.dur = dur;
        Notification.w = w;
        Notification.h = h;
        Notification.x = (display_get_gui_width() / 2) - (w / 2);
        Notification.y = -h;
        
        success = true;
    }
}

//Try to abort
if (!tag_completed(tag, true)) {
    if (abort && !rep) {
        //Abort
        Notification.alarm[0] = 1;
    }
}

return success;
