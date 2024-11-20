// 텍스트 라벨 노출
class Accessory {
  String type;
  color c;
  
  Accessory(String accessoryType, color accessoryColor) {
    type = accessoryType;
    c = accessoryColor;
  }
  
  void show(float x, float y) {
    fill(c);
    textAlign(CENTER);
    text(type, x, y);  // 텍스트로 부속물 표시
  }
} 