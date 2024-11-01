// 캐릭터 객체 선언
Kirby kirby;
Bear bear;
Crying song;

void setup() {
  size(600, 400);
  
  kirby = new Kirby();
  bear = new Bear();
  song = new Crying();
}

void draw() {
  background(200);
  
  kirby.show();
  kirby.update();
  
  bear.show();
  bear.update();
  
  song.show();
  song.update();
}

void keyPressed() {
  kirby.move();
}
