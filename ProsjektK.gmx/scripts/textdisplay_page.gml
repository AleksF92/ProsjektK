///textdisplay_page(page);
var page = argument[0];

//Find correct text
var KEY = "<PAGE>";
var txt = TextDisplay.fullText;
var startPos = 0;
for (var i = 0; i < page; i++) {
    startPos = string_pos("<PAGE>", txt);
    txt = string_copy(txt, startPos + string_length(KEY), string_length(txt));
}
var endPos = string_pos("<PAGE>", txt);
if (endPos == 0) {
    TextDisplay.text = txt;
}
else {
    TextDisplay.text = string_copy(txt, 0, endPos - 1);
}

//Calculate dimensions
var w = string_width(TextDisplay.text);
var h = string_height(TextDisplay.text);
var cx = view_wview[0] / 2;
var cy = view_hview[0] / 2;
TextDisplay.x1 = cx - (w / 2) - TextDisplay.OFFSET;
TextDisplay.y1 = cy - (h / 2);
TextDisplay.x2 = cx + (w / 2) + TextDisplay.OFFSET;
TextDisplay.y2 = cy + (h / 2);
