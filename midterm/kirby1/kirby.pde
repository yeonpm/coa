int wrapperSize = 600;

void setup() {
  // TODO: size()에 wrapperSize 변수 할당하기
  size(600, 600); // wrapperSize를 넣으면 error: IllegalStateException: size() cannot be used here, see https://processing.org/reference/size_.html
  
  drawSpace(30);
  drawRandomKirbies(20); // 랜덤한 위치와 크기, 색상에 따라서 다양한 커비들을 생성할 수 있는 것이 재미있어서 반복문을 활용해서 함수를 구현해봤습니다.  
  
  drawKirby(150, 200, 10, #ffe9c7);  // (x, y, scale, color)
  drawKirby(400, 160, 5, #9feef1);  
  drawKirby(410, 410, 12.5, #FFB7C5); 
}

void drawKirby(float x, float y, float scale, color kirbyColor) {
  stroke(0, 0, 0);
  
  // feet
  fill(164, 38, 28);  // Red color
  ellipse(x - 6*scale, y + 8*scale, 8*scale, 5*scale);  // Left foot
  ellipse(x + 6*scale, y + 8*scale, 8*scale, 5*scale);  // Right foot
  
  // arms
  fill(kirbyColor);  
  ellipse(x - 10*scale, y + 2*scale, 6*scale, 5*scale);  // Left arm
  ellipse(x + 10*scale, y + 2*scale, 6*scale, 5*scale);  // Right arm
  
  // body
  fill(kirbyColor);  
  circle(x, y, 20*scale);
  
  noStroke();
  
  // eyes
  fill(70, 0, 0);  // Black color eyes
  ellipse(x - 2.5*scale, y - 3*scale, 2.7*scale, 6*scale);  // Left eye outline
  ellipse(x + 2.5*scale, y - 3*scale, 2.7*scale, 6*scale);  // Right eye outline
  
  fill(63, 72, 204);  // Blue color eyes
  ellipse(x - 2.5*scale, y - 3*scale, 2.2*scale, 4.5*scale);  // Left eye
  ellipse(x + 2.5*scale, y - 3*scale, 2.2*scale, 4.5*scale);  // Right eye
  
  fill(70, 0, 0);  // Dark color eyes
  ellipse(x - 2.5*scale, y - 3.5*scale, 2.3*scale, 3.5*scale);  // Left eye
  ellipse(x + 2.5*scale, y - 3.5*scale, 2.3*scale, 3.5*scale);  // Right eye
  
  fill(255);  // White color eyes
  ellipse(x - 2.5*scale, y - 4.5*scale, 1.4*scale, 2.2*scale);  // Left eye
  ellipse(x + 2.5*scale, y - 4.5*scale, 1.4*scale, 2.2*scale);  // Right eye
  
  // cheeks
  fill(255, 105, 180);  // Pinkish color
  ellipse(x - 6.5*scale, y - 1.0*scale, 3.0*scale, 2.3*scale);  // Left cheek
  ellipse(x + 6.5*scale, y - 1.0*scale, 3.0*scale, 2.3*scale);  // Right cheek
  
  // mouth
  fill(153, 0, 0);  
  arc(x, y + 2*scale, 4*scale, 3*scale, 0, PI);
  fill(255, 99, 71); 
  arc(x, y + 2.5*scale, 3*scale, 2*scale, 0, PI);
}

void drawSpace(int starsAmount) {
  background(#001848);
  
  for (int i = 0; i < starsAmount; i++) {
    float x = random(0, wrapperSize);
    float y = random(0, wrapperSize);
    drawStar(int(x), int(y));
  }
  
  drawMoon(510,80);
}

void drawStar(int x, int y) {
  stroke(255, 255, 0);  
  strokeWeight(2);
  
  line(x, y, x+10, y);  
  line(x+5, y-5, x+5, y+5);  
  
  noStroke();
}

void drawMoon(int x, int y) {
  fill(#f7f7f7);
  circle(x,y,80);
  fill(#364e7f);
  circle(x-10,y+5,80);
  fill(#001848);
  circle(x-20,y+10,85);
  fill(255);
}

void drawRandomKirbies(int kirbiesAmount) {
  
  for (int i = 0; i < kirbiesAmount; i++) {
    float x = random(0, wrapperSize);
    float y = random(0, wrapperSize);
    float r = random(150, 255);
    float g = random(150, 255);
    float b = random(150, 255);
    float kurbySize = random(0.3, 2.5);
    drawKirby((x), (y), kurbySize, color(r,g,b));
  }
  
}
