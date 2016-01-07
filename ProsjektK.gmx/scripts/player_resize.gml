///player_resize(size)

var newSize = argument[0];
if (newSize > 0 && newSize <= MAX_SIZE) {
    size = newSize;
    
    switch(newSize) {
        case 1: {
            var scale = 1;
            jumpCharge = BASE_JUMP_CHARGE * scale;
            jumpMin = BASE_MIN_JUMP * scale;
            jumpMax = BASE_MAX_JUMP * scale;
            mSpeed = BASE_SPEED * 1.6;
            phySize = 0.5;
            break;
        }
        case 2: {
            var scale = 0.85;
            jumpCharge = BASE_JUMP_CHARGE * scale;
            jumpMin = BASE_MIN_JUMP * scale;
            jumpMax = BASE_MAX_JUMP * scale;
            mSpeed = BASE_SPEED * 1.4;
            phySize = 0.875;
            break;
        }
        case 3: {
            var scale = 0.7;
            jumpCharge = BASE_JUMP_CHARGE * scale;
            jumpMin = BASE_MIN_JUMP * scale;
            jumpMax = BASE_MAX_JUMP * scale;
            mSpeed = BASE_SPEED * 1.2;
            phySize = 1.25;
            break;
        }
        case 4: {
            var scale = 0.55;
            jumpCharge = BASE_JUMP_CHARGE * scale;
            jumpMin = BASE_MIN_JUMP * scale;
            jumpMax = BASE_MAX_JUMP * scale;
            mSpeed = BASE_SPEED * 1;
            phySize = 1.625;
            break;
        }
    }
}
