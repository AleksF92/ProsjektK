///textdisplay_show(textId);
var textId = argument[0];

//Find correct text
switch (textId) {
    case "Objective": {
        TextDisplay.fullText =
        "Objective"
        + "##You are controlling a slime. An experiment gone bad!"
        + "#You broke loose and are seeking to escape the underground labs."
        + "#You have the ability to split/clone yourself to solve puzzles.";
        break;
    }
    case "Controls": {
        TextDisplay.fullText =
        "Controls"
        + "##[A] :: Move left"
        + "#[D] :: Move right"
        + "#[SPACE] :: Hold to charge jump"
        + "#[W] :: Split into more slimes."
        + "#[S] :: Merge with slime(s)."
        + "#[TAB] :: Swap controlled slime."
        + "#[LEFT MOUSE] :: Interact with objects."
        + "#[DOWN] :: Look down with the camera."
        + "##[Escape] :: Return to main menu";
        break;
    }
    case "Change Log": {
        TextDisplay.fullText =
        "Change Log (Alpha v0.4)"
        + "##Added camera zoom event for better view."
        + "#Added camera control to look down."
        + "#Added level finish requirement."
        + "#Alot of bug fixes."
        + "#Added tutorial signs."
        + "#Added new level."
        
        + "<PAGE>"
        + "Change Log (Alpha v0.3)"
        + "##Added new obstacles."
        + "#Added new level."
        
        + "<PAGE>"
        + "Change Log (Alpha v0.2)"
        + "##Added game title."
        + "#Added bridge ability for big slime."
        + "#Added new textures."
        + "#Added triggers and doors."
        + "#Built start of showcase level."
        
        + "<PAGE>"
        + "Change Log (Alpha v0.1)"
        + "##No changes yet...";
        break;
    }
    case "Credits": {
        TextDisplay.fullText =
        "Credits: Game Design"
        + "##Aleksander Fimreite"
        + "#Petter Andreas Kvalsvik";
        break;
    }
}

//Load first page
TextDisplay.pages = string_count("<PAGE>", TextDisplay.fullText) + 1;
TextDisplay.page = 0;
textdisplay_page(TextDisplay.page);

//Enable text display
TextDisplay.alarm[0] = 1;
TextDisplay.visible = true;
//show_debug_message("Enable text display for " + textId);
