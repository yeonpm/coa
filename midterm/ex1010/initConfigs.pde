void initConfigs() {
    println("start");

    ratioSize = 0.7;
    // ratioSize = 1;
    frames = 0;
    seconds = 0;
    backgroundColor = 200;
    gameOver = false;
    missionClear = false;
    ratioV = 1;
    eatCount = 0;

    visible = new boolean[itemBoneAmount];

    for (int i=0; i<itemBoneAmount; i++) { 
        visible[i] = true;
    }

    initPosition();
    initVelocity();
}
