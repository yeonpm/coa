float maruX, maruY, maruSize, maruVX, maruVY;
float blueKirbyX, blueKirbyY, blueKirbySize, blueKirbyVX, blueKirbyVY;
float pinkyKirbyX, pinkyKirbyY, pinkyKirbySize, pinkyKirbyVX, pinkyKirbyVY;
float gearX, gearY, gearSize, gearVX, gearVY;
float degreeX,degreeY,gravity;
float ratio;
int frames;
int seconds;
int backgroundColor;
boolean gameOver;
int retryButtonX = 800 / 2 - 100, retryButtonY = 800 - 200;

void setup() {
  size(800, 800);
  
  initConfigs();
}

void draw() {
  background(backgroundColor);

  renderCharacters();
  handleWallCollision();
  renderHeader(width - 240, 50, 40);
  
  if (gameOver == false) updateVillainsPositions();
  if (gameOver == false) updatePlayerPositions();
  detectCollision();
  renderOutro();
  
}