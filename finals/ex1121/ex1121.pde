Character[] characters;  // Character 배열 선언
int numOfCharacters = 6; // 캐릭터 수

void setup() {
  size(800, 600);
  characters = new Character[numOfCharacters];
  
  // 다양한 캐릭터 초기화
  for (int i = 0; i < numOfCharacters; i++) {
    if (i % 2 == 0) {
      characters[i] = new Bear(random(width), random(height), random(30, 60));
    } else {
      characters[i] = new Ninja(random(width), random(height), random(30, 60));
    }
  }
}

void draw() {
  background(220);
  
  // 모든 캐릭터 업데이트 및 표시
  for (int i = 0; i < numOfCharacters; i++) {
    characters[i].update();
    characters[i].show();
  }
  
  // 캐릭터 간 상호작용 처리
  checkInteractions();
}

// 캐릭터 간 충돌 및 상호작용 처리
void checkInteractions() {
  for (int i = 0; i < numOfCharacters; i++) {
    for (int j = i + 1; j < numOfCharacters; j++) {
      float distance = dist(characters[i].posX, characters[i].posY, characters[j].posX, characters[j].posY);
      if (distance < (characters[i].charSize / 2 + characters[j].charSize / 2)) {
        // 충돌 시 속도 반전
        characters[i].speedX *= -1;
        characters[i].speedY *= -1;
        characters[j].speedX *= -1;
        characters[j].speedY *= -1;
      }
    }
  }
}