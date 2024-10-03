float maruX, maruY, maruSize, maruVX, maruVY;
float blueKirbyX, blueKirbyY, blueKirbySize, blueKirbyVX, blueKirbyVY;
float pinkyKirbyX, pinkyKirbyY, pinkyKirbySize, pinkyKirbyVX, pinkyKirbyVY;
float gearX, gearY, gearSize, gearVX, gearVY;
float degreeX,degreeY,gravity;
int frames;
int seconds;
int backgroundColor;
boolean gameOver;
int retryButtonX = 800 / 2 - 100, retryButtonY = 800 - 200;
float ratioSize, ratioV; // 크기, 속도 일괄 변환 매개변수
float transferVX, transferVY; // 충돌시 속도 전달을 위한 변수


void setup() {
  size(800, 800);
  
  initConfigs();
}

void draw() {
  background(backgroundColor);

  renderCharacters();
  handleVillainsCollision();
  renderHeader(width - 240, 50, 40);
  
  if (gameOver == false) updateVillainsPositions();
  if (gameOver == false) updatePlayerPositions();
  detectCollision();
  renderOutro();
}