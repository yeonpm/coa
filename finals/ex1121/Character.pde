class Character {
  float posX, posY, charSize;  // 위치와 크기
  float speedX, speedY;  // 이동 속도
  Accessory accessory;  // 포함된 클래스 (부속물)
  
  Character(float x, float y, float size) {
    posX = x;
    posY = y;
    charSize = size;
    speedX = random(-2, 2);
    speedY = random(-2, 2);
    accessory = new Accessory("default", color(random(255), random(255), random(255)));
  }
  
  void update() {
    posX += speedX;
    posY += speedY;
    
    // 화면 경계에서 반사
    if (posX - charSize / 2 < 0 || posX + charSize / 2 > width) speedX *= -1;
    if (posY - charSize / 2 < 0 || posY + charSize / 2 > height) speedY *= -1;
  }
  
  void show() {
    // 기본 캐릭터는 동그라미
    fill(150, 100, 50);
    ellipse(posX, posY, charSize, charSize);
    
    // 부속물 표시
    accessory.show(posX, posY - charSize / 2 - 10);
  }
} 