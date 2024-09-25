float x1, y1, d1, vx1, vy1;
float x2, y2, d2, vx2, vy2;
float x3, y3, d3, vx3, vy3;
float x4, y4, d4, vx4, vy4;

void setup() {
    size(900,900);
    x1 = 100; y1 = 100; d1 = 5; vx1 = 3; vy1 = 4;
    x2 = 200; y2 = 50; d2 = 10; vx2 = 6; vy2 = 5;
    x3 = 300; y3 = 150; d3 = 1; vx3 = 6; vy3 = 2;
    x4 = 400; y4 = 250; d4 = 200; vx4 = 2; vy4 = 7;
}

void draw(){
    background(#D8D8D8);

    x1 += vx1; y1 +=vy1; x2 += vx2; y2 +=vy2; x3 += vx3; y3 +=vy3; x4 += vx4; y4 +=vy4;
    if(x1 < 0 || x1 > width) vx1 = -vx1;
    if(y1 < 0 || y1 > height) vy1 = -vy1;
    if(x2 < 0 || x2 > width) vx2 = -vx2;
    if(y2 < 0 || y2 > height) vy2 = -vy2;
    if(x3 < 0 || x3 > width) vx3 = -vx3;
    if(y3 < 0 || y3 > height) vy3 = -vy3;
    if(x4 < 0 || x4 > width) vx4 = -vx4;
    if(y4 < 0 || y4 > height) vy4 = -vy4;

    blueKirby(x1, y1, d1);
    pinkyKirby(x2, y2, d2, #FFB7C5);
    gear(x3, y3, d3);
    maru(x4, y4, d4);
}