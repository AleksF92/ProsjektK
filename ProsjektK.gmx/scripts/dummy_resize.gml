///dummy_resize(size)
var newSize = argument[0];
if (newSize > 0 && newSize <= MAX_SIZE) {
    size = newSize;
    
    switch(newSize) {
        case 1: {
            phySize = 0.5;
            break;
        }
        case 2: {
            phySize = 0.75;
            break;
        }
        case 3: {
            phySize = 1;
            break;
        }
        case 4: {
            phySize = 1.25;
            break;
        }
        case 5: {
            phySize = 1.5;
            break;
        }
    }
}
