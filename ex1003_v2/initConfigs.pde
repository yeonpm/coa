void initConfigs() {
    println("start");

    // ratioSize = 0.7;
    ratioSize = 1;
    frames = 0;
    seconds = 0;
    backgroundColor = 200;
    gameOver = false;
    ratioV = 1;

    initPosition();
    initVelocity();
}