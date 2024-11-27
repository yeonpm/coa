class Player {  // moving player
  Player() {
    human = loadShape("HumanFigure(Rigged).obj");
  }
  PShape human;
  void display(float i) {
    translate(i, 50, 0);
    // 객체의 방향 조절
    rotateX(PI / 180 * 90); 
    rotateY(PI / 180 * 90); 
    rotateZ(PI / 180 * 90); 
    // 객체의 크기 조절
    scale(10);
    shape(human);
    translate(-i, 0, 0);
  }
}
