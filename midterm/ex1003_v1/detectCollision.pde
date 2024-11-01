void detectCollision(){
  if(sqrt((gearX-maruX)*(gearX-maruX)+(gearY-maruY)*(gearY-maruY))<=100*ratio) gameOver=true;
  if(sqrt((blueKirbyX-maruX)*(blueKirbyX-maruX)+(blueKirbyY-maruY)*(blueKirbyY-maruY))<=100*ratio) gameOver=true;
  if(sqrt((pinkyKirbyX-maruX)*(pinkyKirbyX-maruX)+(pinkyKirbyY-maruY)*(pinkyKirbyY-maruY))<=100*ratio) gameOver=true;
}
