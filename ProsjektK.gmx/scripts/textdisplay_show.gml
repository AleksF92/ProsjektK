///textdisplay_show(textId);
var textId = argument[0];

//Find correct text
switch (textId) {
    case "Objective": {
        TextDisplay.fullText =
        "Objective"
        + "##My plan is to create a puzzle rpg."
        + "#Where you gather materials, craft items and solve puzzles.";
        break;
    }
    case "Controls": {
        TextDisplay.fullText =
        "Controls"
        + "##[ASDW] :: Movement"
        + "#[I] :: Toggle inventory"
        + "#[C] :: Toggle crafting list"
        + "#[Left Mouse] :: Interact with objects"
        + "##[Escape] :: Return to main menu";
        break;
    }
    case "Change Log": {
        TextDisplay.fullText =
        "Change Log (Alpha v0.3)"
        + "##Added new textures."
        + "#Added new sounds."
        + "#Added crafting system for puzzle pieces."
        + "#Added notification tutorial."
        + "#Added new items."
        + "#Fixed some minor code bugs."
        
        + "<PAGE>"
        + "Change Log (Alpha v0.2)"
        + "##Added new textures."
        + "#Added new sounds."
        + "#Added new items."
        + "#Changed font."
        + "#Created a proper starting area."
        
        + "<PAGE>"
        + "Change Log (Alpha v0.1)"
        + "##No changes yet...";
        break;
    }
    case "Credits": {
        TextDisplay.fullText =
        "Credits: Game Design"
        + "##Aleksander Fimreite"
        
        + "<PAGE>"
        + "Credits: Programming"
        + "##Aleksander Fimreite"
        
        + "<PAGE>"
        + "Credits: Artwork"
        + "##Aleksander Fimreite"
        
        + "<PAGE>"
        + "Credits: Special thanks"
        + "##Extra Credits (YouTube Tutorials on Game Design)"
        + "#HeartBeast (YouTube Tutorials on GameMaker & Pixel Art)";
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
