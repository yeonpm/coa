
float x1, y1, d1, vx1, vy1;

void setup(){
  size(600, 400);
  x1 = 100; y1 = 100; d1 = 2; vx1 = 3; vy1 = 3;
}

void draw(){
  background(0,255,255);
  x1 += vx1;   y1 +=vy1;
  bluekirby(x1,y1,d1);
  if(x1<0 || x1>width) vx1 = -vx1;
  if(y1<0 || y1>height) vy1 = -vy1;
}

void bluekirby(float x, float y, float d){ // x,y 위치, d 크기
  fill(46,58,110);
  arc(x-15*d,y+17.5*d,20*d,5*d,0,2*PI); //left leg
  arc(x+15*d,y+17.5*d,20*d,5*d,0,2*PI); //right leg
  fill(155,210,240);
  arc(x-18*d,y-7.5*d,12*d,15*d,0,2*PI); //left arm
  arc(x+18*d,y-7.5*d,12*d,15*d,0,2*PI); //right arm
  circle(x,y,40*d); //body
  fill(15,22,84);
  arc(x-5*d,y-9*d,5*d,11*d,0,2*PI); //left eye
  arc(x+5*d,y-9*d,5*d,11*d,0,2*PI); //right eye
  fill(200,30,60);
  triangle(x-3*d,y-2*d,x+3*d,y-2*d,x,y+3*d); //mouth
}
