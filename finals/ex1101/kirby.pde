class Kirby {
  float x, y, scale;
  float speedX, speedY;
  color bodyColor, armColor;
  
  Kirby() {
    x = 150;
    y = 200;
    scale = 3;
    speedX = 3;
    speedY = 2;
    bodyColor = color(255, 182, 193);
    armColor = bodyColor;
  }
  
  void update() {
    bodyColor = color(random(200, 255), random(150, 200), random(180, 220));
    armColor = bodyColor;
  }

  void move() {
    // WASD 키 입력에 따른 이동
    if (keyPressed) {
      if (key == 'w' || key == 'W') {
        y -= speedY;
      }
      if (key == 's' || key == 'S') {
        y += speedY;
      }
      if (key == 'a' || key == 'A') {
        x -= speedX;
      }
      if (key == 'd' || key == 'D') {
        x += speedX;
      }
    }
  }
  
  void show() {
    stroke(0, 0, 0);
    
    // feet
    fill(164, 38, 28);
    ellipse(x - 6*scale, y + 8*scale, 8*scale, 5*scale);
    ellipse(x + 6*scale, y + 8*scale, 8*scale, 5*scale);
    
    // arms
    fill(armColor);
    ellipse(x - 10*scale, y + 2*scale, 6*scale, 5*scale);
    ellipse(x + 10*scale, y + 2*scale, 6*scale, 5*scale);
    
    // body
    fill(bodyColor);
    circle(x, y, 20*scale);
    
    noStroke();
    
    // eyes
    fill(70, 0, 0);
    ellipse(x - 2.5*scale, y - 3*scale, 2.7*scale, 6*scale);
    ellipse(x + 2.5*scale, y - 3*scale, 2.7*scale, 6*scale);
    
    fill(63, 72, 204);
    ellipse(x - 2.5*scale, y - 3*scale, 2.2*scale, 4.5*scale);
    ellipse(x + 2.5*scale, y - 3*scale, 2.2*scale, 4.5*scale);
    
    fill(70, 0, 0);
    ellipse(x - 2.5*scale, y - 3.5*scale, 2.3*scale, 3.5*scale);
    ellipse(x + 2.5*scale, y - 3.5*scale, 2.3*scale, 3.5*scale);
    
    fill(255);
    ellipse(x - 2.5*scale, y - 4.5*scale, 1.4*scale, 2.2*scale);
    ellipse(x + 2.5*scale, y - 4.5*scale, 1.4*scale, 2.2*scale);
    
    // cheeks
    fill(255, 105, 180);
    ellipse(x - 6.5*scale, y - 1.0*scale, 3.0*scale, 2.3*scale);
    ellipse(x + 6.5*scale, y - 1.0*scale, 3.0*scale, 2.3*scale);
    
    // mouth
    fill(153, 0, 0);
    arc(x, y + 2*scale, 4*scale, 3*scale, 0, PI);
    fill(255, 99, 71);
    arc(x, y + 2.5*scale, 3*scale, 2*scale, 0, PI);
  }
}
