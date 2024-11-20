// 귀가 있는 특징이 있음
class Bear extends Character {
  Bear(float x, float y, float size) {
    super(x, y, size);
    accessory = new Accessory("bear", color(255, 204, 0));
  }
  
  void show() {
    super.show();
    drawEars(posX, posY, charSize);
  }
  
  void drawEars(float x, float y, float size) {
    fill(150, 75, 0);
    ellipse(x - size * 0.35, y - size * 0.35, size * 0.3, size * 0.3);
    ellipse(x + size * 0.35, y - size * 0.35, size * 0.3, size * 0.3);
  }
} 