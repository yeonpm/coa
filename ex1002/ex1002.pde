float maruX, maruY, maruSize, maruVX, maruVY;
float blueKirbyX, blueKirbyY, blueKirbySize, blueKirbyVX, blueKirbyVY;
float pinkyKirbyX, pinkyKirbyY, pinkyKirbySize, pinkyKirbyVX, pinkyKirbyVY;
float gearX, gearY, gearSize, gearVX, gearVY;
float ratio = 0.7;
int frames = 0;
int seconds = 0;
int backgroundColor = 200;
boolean gameOver = false;

void setup() {
  size(800, 800);

  initPosition();
  initVelocity();
}

void draw() {
  background(backgroundColor);

  renderCharacters();
  handleWallCollision();
  renderTime(width - 240, 50, 40);
  
  if (gameOver == false) updateVillainsPositions();
}

