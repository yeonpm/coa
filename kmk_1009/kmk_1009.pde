float maruX, maruY, maruSize, maruVX, maruVY;
float blueKirbyX, blueKirbyY, blueKirbySize, blueKirbyVX, blueKirbyVY;
float pinkyKirbyX, pinkyKirbyY, pinkyKirbySize, pinkyKirbyVX, pinkyKirbyVY;
float gearX, gearY, gearSize, gearVX, gearVY;

float [] itemBoneX, itemBoneY, itemBoneVX, itemBoneVY; //추가한 변수
int n = 5; //추가한 변수
boolean [] visible; //추가한 변수

float degreeX,degreeY,gravity;
int frames;
int seconds;
int backgroundColor;
boolean gameOver;
int retryButtonX = 800 / 2 - 100, retryButtonY = 800 - 200;
float ratioSize, ratioV; // 크기, 속도 일괄 변환 매개변수


void setup() {
  size(800, 800);
  
  initConfigs();
  initPositionItem(); // 추가한 함수
}

void draw() {
  background(backgroundColor);

  renderCharacters();
  handleVillainsCollision();
  renderHeader(width - 240, 50, 40);
  initVelocityItem(); //추가한 함수 
  collisionItem(); //추가한 함수
  if (gameOver == false) updateVillainsPositions();
  if (gameOver == false) updatePlayerPositions();
  detectCollision();
  renderOutro();
}
