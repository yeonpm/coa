Bear bear;  // Bear 클래스의 객체

void setup() {
  size(600, 400);
  background(200);
  
  // Bear 객체 생성
  bear = new Bear(300, 200, 100, -2, 2);
}

void draw() {
  background(200);
  
  // Bear 객체 업데이트 및 화면에 표시
  bear.update();
  bear.show();
}

// Bear 클래스 정의
class Bear {
  float x, y, d;
  float speedX, speedY;
  color c;
  
  // 생성자: 초기 위치, 크기, 속도 설정
  Bear(float x, float y, float d, float speedX, float speedY) {
    this.x = x;
    this.y = y;
    this.d = d;
    this.speedX = speedX;
    this.speedY = speedY;
    this.c = color(150, 75, 0);  // 초기 색상
  }
  
  // 위치와 색상 업데이트
  void update() {
    // 위치 업데이트
    x += speedX;
    y += speedY;
    
    // 벽에 부딪히면 방향 반전
    if (x - d/2 < 0 || x + d/2 > width) {
      speedX *= -1;
    }
    if (y - d/2 < 0 || y + d/2 > height) {
      speedY *= -1;
    }
    
    // 색상 변화
    c = color(random(100, 255), random(50, 150), random(50, 100));
  }
  
  // 곰 캐릭터를 화면에 그리기
  void show() {
    fill(c);  // 곰 얼굴 색상
    noStroke();
    ellipse(x, y, d, d);  // 얼굴
    
    // 곰의 귀
    ellipse(x - d*0.35, y - d*0.35, d*0.3, d*0.3);  // 왼쪽 귀
    ellipse(x + d*0.35, y - d*0.35, d*0.3, d*0.3);  // 오른쪽 귀
    
    // 귀 안쪽 색상
    fill(255);  
    ellipse(x - d*0.35, y - d*0.35, d*0.15, d*0.15);  // 왼쪽 귀 안쪽
    ellipse(x + d*0.35, y - d*0.35, d*0.15, d*0.15);  // 오른쪽 귀 안쪽
    
    // 곰 눈
    fill(0);
    ellipse(x - d*0.2, y - d*0.1, d*0.1, d*0.1);  // 왼쪽 눈
    ellipse(x + d*0.2, y - d*0.1, d*0.1, d*0.1);  // 오른쪽 눈
    
    // 곰 코
    ellipse(x, y + d*0.1, d*0.2, d*0.15);
    
    // 곰 입
    noFill();
    stroke(0);
    strokeWeight(2);
    arc(x, y + d*0.3, d*0.4, d*0.2, 0, PI);
  }
}