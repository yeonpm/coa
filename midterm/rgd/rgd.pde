float x3, y3, x3_state, y3_state, d3; //x3: x좌표, y3: y좌표, x3_state: x 방향, y_state: y 방향, d3: 크기

void setup(){
  size(1000, 800);
  
  d3=0.8;
  x3=120*d3;
  y3=height-120*d3;
  x3_state=1;
  y3_state=1;
}

void draw(){
  background(0, 0, 0);
  move3();
}


void gear(float pos_x, float pos_y, float d3){
  noStroke();
  fill(100);
  
  //gear tooth and head
  rect(pos_x-25*d3, pos_y-120*d3, 50*d3, 240*d3);//gear tooth 1
  rect(pos_x-120*d3, pos_y-25*d3, 240*d3, 50*d3);//gear tooth 2
  
  pushMatrix();
  translate(pos_x, pos_y);
  rotate(PI/4);
  rect(-25*d3, -120*d3, 50*d3, 240*d3);//gear tooth 3
  rect(-120*d3, -25*d3, 240*d3, 50*d3);//gear tooth 4
  popMatrix();
  
  circle(pos_x, pos_y, 200*d3);//head
  
  //face
  stroke(0);
  strokeWeight(2*d3);
  fill(128);
  circle(pos_x, pos_y, 150*d3);//face

  //eye
  fill(50, 0, 0);
  circle(pos_x-30*d3, pos_y-25*d3, 35*d3);//left eye 1
  circle(pos_x+30*d3, pos_y-25*d3, 35*d3);//right eye 1
  noStroke();
  fill(255);
  circle(pos_x-25*d3, pos_y-28*d3, 10*d3);//left eye 2
  circle(pos_x+35*d3, pos_y-28*d3, 10*d3);// right eye 2
  
  //mouth
  fill(100, 0, 0);
  circle(pos_x, pos_y+30*d3, 30*d3);//mouth
  fill(200, 0, 0);
  ellipse(pos_x, pos_y+40*d3, 20*d3, 10*d3);//tongue
}

void move3(){
  gear(x3, y3, d3);
  
  if(x3_state==1)
  {
    x3+=10;
  }
  else
  {
    x3-=10;
  }
  
  if(y3_state==1)
  {
    y3+=12;
  }
  else
  {
    y3-=12;
  }
  
  
  //벽에 충돌 시 방향 전환
  if(x3>width-120*d3)
  {
    x3_state=2;
  }
  if(x3<120*d3)
  {
    x3_state=1;
  }
  
  if(y3>height-120*d3)
  {
    y3_state=2;
  }
  
  if(y3<120*d3)
  {
    y3_state=1;
  }
}