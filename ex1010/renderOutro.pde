void renderOutro() {
    if (gameOver || missionClear) {
        background(255,240,200);

        fill(0);
        textSize(60);
        text("time: "+ seconds +" sec", 260, 450);

        renderRetryButton();
    }
    
    if (gameOver) {
        fill(255,0,0);
        textSize(100);
        text("Game over!", width/2 - 230, height/2 - 100);
    } else if (missionClear) {
        fill(255,0,0);
        textSize(100);
        text("Congratulations!", width/2 - 350, height/2 - 100);
    }
}

void renderRetryButton() {
    fill(0, 200, 0);
    rect(retryButtonX, retryButtonY, 200, 100);
    fill(255);
    textSize(60);
    text("retry!", retryButtonX + 35, retryButtonY + 65);
}

void mousePressed() {
    boolean isRetryClicked = (gameOver || missionClear) && mouseX > retryButtonX && mouseX < retryButtonX + 200 && mouseY > retryButtonY && mouseY < retryButtonY + 100;
    if (isRetryClicked) {
         println("retry");
         initConfigs();
    }
}
