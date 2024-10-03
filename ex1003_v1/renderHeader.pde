void renderHeader(int _x, int _y, int size) {
  if (gameOver == false) {
    frames++;
    boolean everySeconds = (frames % 60) == 0;
    if (everySeconds) {
      seconds++;
    }
    boolean isOdd = (seconds % 2) != 0;
    if (isOdd) backgroundColor = 190;
    else backgroundColor = 210;

    if (isOdd) {
      fill(255,0,0);
    } else {
      fill(150,0,0);
    }
    textSize(30);
    text("Avoid villains with W, A, S, D!", 50, 50);
  }
  fill(0);
  textSize(size);
  text("score: " + seconds + " sec", _x, _y);
}
