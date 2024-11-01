// 캐릭터 객체 선언
Kirby kirby;
Bear bear;
Crying song;

void setup() {
  size(600, 400);
  
  kirby = new Kirby(150, 200, 3);
  bear = new Bear(300, 200, 80, -1, 1);
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
