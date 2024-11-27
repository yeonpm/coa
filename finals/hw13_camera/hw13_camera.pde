float playerPosition = 300;
float monsterPosition = -200; // 각 오브젝트의 초기 위치
Player player;
Monster monster;
char cameraType = 'f'; // 기본 1인칭

void setup() {
  size(600, 400, P3D); // 3D space
  player = new Player();
  monster = new Monster();
  frameRate(180); // 전체 속도감 조절 (ex. 180: 180fps)
}

// 속도가 다른 두 오브젝트가 시간에 따라 공간상을 이동
void draw(){
  playerPosition++; // 플레이어의 속도
  monsterPosition+=1.6; // 괴물의 속도
  background(0); // 검은 배경
  lights(); // 조명
  road();  // 복도
  pushMatrix();
  player.display(playerPosition);  // 플레이어 표시
  popMatrix();
  pushMatrix();
  monster.display(monsterPosition); // 괴물 표시
  popMatrix();
  // c key를 누르면 cctv view로 전환, 이외의 모든 키는 player view로 전환
  if (cameraType == 'c') {
    camera(1000, 0, 100, 0, 0, 0, -1, 1, 0);
  } else {
    camera(playerPosition, -50, 0, 0, 0, 0, 1, 0, 0);
  }
  if (playerPosition == 1000) { // 복도 끝에 도달 시 반복
    playerPosition = 300;
    monsterPosition = -200;
  } 
}

void keyPressed(){
  cameraType = key;
}

void road(){ // 복도
  fill(255, 70, 0);
  translate(0, 50, 0);
  box(2000, 10, 100);
  translate(0, -50, 0);
}
