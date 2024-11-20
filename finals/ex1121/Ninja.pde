// 눈이 있는 특징이 있음
class Ninja extends Character {
  Ninja(float x, float y, float size) {
    super(x, y, size);
    accessory = new Accessory("ninja", color(0, 0, 255));
  }
  
  void show() {
    super.show();
    drawEyes(posX, posY, charSize);
  }
  
  void drawEyes(float x, float y, float size) {
    fill(255);
    ellipse(x - size * 0.2, y - size * 0.1, size * 0.2, size * 0.1);
    ellipse(x + size * 0.2, y - size * 0.1, size * 0.2, size * 0.1);
  }
} 