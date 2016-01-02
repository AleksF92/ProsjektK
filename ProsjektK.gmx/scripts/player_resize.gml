///player_resize(size)
var newSize = argument[0];
if (newSize > 0 && newSize <= MAX_SIZE) {
    size = newSize;
    
    switch(newSize) {
        case 1: {
            jumpCharge = BASE_JUMP_CHARGE * 1.5;
            jumpMin = BASE_MIN_JUMP * 1.5;
            jumpMax = BASE_MAX_JUMP * 1.5;
            mSpeed = BASE_SPEED * 1.6;
            phySize = 0.5;
            break;
        }
        case 2: {
            jumpCharge = BASE_JUMP_CHARGE * 1.4;
            jumpMin = BASE_MIN_JUMP * 1.4;
            jumpMax = BASE_MAX_JUMP * 1.4;
            mSpeed = BASE_SPEED * 1.4;
            phySize = 0.75;
            break;
        }
        case 3: {
            jumpCharge = BASE_JUMP_CHARGE * 1.3;
            jumpMin = BASE_MIN_JUMP * 1.3;
            jumpMax = BASE_MAX_JUMP * 1.3;
            mSpeed = BASE_SPEED * 1.2;
            phySize = 1;
            break;
        }
        case 4: {
            jumpCharge = BASE_JUMP_CHARGE * 1.2;
            jumpMin = BASE_MIN_JUMP * 1.2;
            jumpMax = BASE_MAX_JUMP * 1.2;
            mSpeed = BASE_SPEED * 1;
            phySize = 1.25;
            break;
        }
        case 5: {
            jumpCharge = BASE_JUMP_CHARGE * 1.1;
            jumpMin = BASE_MIN_JUMP * 1.1;
            jumpMax = BASE_MAX_JUMP * 1.1;
            mSpeed = BASE_SPEED * 0.8;
            phySize = 1.5;
            break;
        }
    }
}
