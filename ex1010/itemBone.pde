void itemBone(float x, float y, float d, boolean visible){ //x,y,크기d(4),유무
  if(visible == true){
    stroke(0);
    rect(x-7.6*d,y-2*d,15.2*d,4*d);
    arc(x-7.4*d,y-1.7*d,5*d,4.5*d,0.5*PI,2*PI);
    arc(x-7.4*d,y+1.7*d,5*d,4.5*d,0,1.5*PI);
    arc(x+7.4*d,y-1.7*d,5*d,4.5*d,PI,2.5*PI);
    arc(x+7.4*d,y+1.7*d,5*d,4.5*d,-0.5*PI,PI);
    noStroke();
  }
}
