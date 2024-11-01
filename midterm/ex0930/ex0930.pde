float x,y,s,vx,vy,degreeX,degreeY,gravity;
void setup(){
    size(800,800);
    x = y = 100;    s = 10;
    vx=0;
    vy=1;
    degreeX = 0.1;
    degreeY = 0.1;
    gravity=0.2;
}
void draw(){
    background(0,255,255);
    applyV();
    pinkyKirby(x, y, s, #FFB7C5);
}
void mouseClicked(){
  x = mouseX;    y = mouseY;
}
void mouseWheel(MouseEvent ee){
  float e = ee.getCount();
  if(e>0) s *= 1.1;
  else if(e<0) s *= 0.9;
}
void keyPressed(){
  if(key == 'a') vx -= 5;
  else if(key == 'd') vx += 5;
  else if(key == 'w') vy -= 5;
  else if(key == 's') vy += 5;
//   else if(key == 'j') y += 5;
}

void applyV() {
    if (vx > 0) vx = vx - degreeX;
    if (vx < 0) vx = vx + degreeX;
    if (vy > 0) vy = vy - degreeY;
    if (vy < 0) vy = vy + degreeY;
    vy = vy + gravity;
    x += vx;
    y += vy;
}