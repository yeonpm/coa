class Crying {   
  float x, y, d; // 이용할 변수
  
  Crying() {
    d = 5; // 캐릭터 크기
  }
  
  void updates() {
    // 이동 함수 -> 마우스 위치
    x = mouseX;
    y = mouseY;
    //크기 변화
    d += 0.5;
    if(d == 10) d = 3;
  }
  
  void face() {  // 캐릭터 함수
    fill(#FBCEB1);
    circle(x, y, 22*d); // face
    fill(0);
    circle(x-6*d, y, 6*d); // left eye
    circle(x+6*d, y, 6*d); // right eye
    fill(255,0,0);
    arc(x, y+4*d, 6*d, 2*d, PI, 2*PI); // mouth
    fill(255);
    circle(x-7*d, y-d, 2*d); // left tear
    circle(x+5*d, y-d, 2*d); // right tear
    rect(x-3*d, y+4*d, 6*d, d); // teeth
  }
}