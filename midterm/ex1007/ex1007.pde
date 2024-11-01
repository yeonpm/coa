float [] x,y,vx,vy,randomColor;

int n = 10;
void setup(){

  size(1000,1000);

  x = new float[n];
  y = new float[n];
  vx = new float[n];
  vy = new float[n];
  randomColor = new float[n];


 for(int i=0;i<n;i++){
   x[i] = random(width);
   y[i] = random(height);
   vx[i] = random(-6,6);
   vy[i] = random(-6,6);
   randomColor[i] = random(255);
 }

}

void draw(){

  background(255,255,0);

 for(int i=0;i<n;i++) {

  x[i] += vx[i];
  y[i] += vy[i];

  if(x[i]>width || x[i]<0) vx[i] = -vx[i];
  if(y[i]>height || y[i]<0) vy[i] = -vy[i];


  fill(int(randomColor[i]));

  pinkyKirby(x[i],y[i],5,int(randomColor[i]));

 }

}

void mousePressed() {
    for(int i=0; i<n; i++) {
        if(dist(x[i], y[i], mouseX, mouseY)<50) {
            vx[i] = 0;
            vy[i] = 0;
        }
    }
}