void renderOutro() {
    if (gameOver == true) {
        background(255,240,200);

        fill(0);
        textSize(60);
        text("score: "+ seconds +" sec", 260, 450);

        fill(255,0,0);
        textSize(100);
        text("Congratulations!", width/2 - 350, height/2 - 100);

        renderRetryButton();
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
    boolean isRetryClicked = gameOver == true && mouseX > retryButtonX && mouseX < retryButtonX + 200 && mouseY > retryButtonY && mouseY < retryButtonY + 100;
    if (isRetryClicked) {
         println("retry");
         initConfigs();
    }
}
