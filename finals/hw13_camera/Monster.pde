class Monster {
  Monster() {
    alien = loadShape("21454_Alien_Head_V1.obj");
  };
  PShape alien;
  void display(float k) {
    translate(k, 30, 0);
    // 객체의 방향 조절
    rotateX(PI / 180 * 90); 
    rotateZ(PI / 180 * 90);
    // 객체의 크기 조절
    scale(50);
    shape(alien);
    translate(-k, 0, 0);
  }
}
