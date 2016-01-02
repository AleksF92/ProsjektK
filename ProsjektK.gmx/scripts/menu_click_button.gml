///menu_click_button(text);
var text = argument[0];

if (!TextDisplay.visible) {
    if (room == rom_Main) {
        switch(text) {
            case "Start game": {
                room_goto(rom_Level1);
                break;
            }
            case "Objective": {
                textdisplay_show("Objective");
                break;
            }
            case "Controls": {
                textdisplay_show("Controls");
                break;
            }
            case "Change Log": {
                textdisplay_show("Change Log");
                break;
            }
            case "Credits": {
                textdisplay_show("Credits");
                break;
            }
            case "Exit game": {
                game_end();
                break;
            }
        }
    }
}
