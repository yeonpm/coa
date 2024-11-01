void detectPlayerCollision(){
  // villains
  if (missionClear == false) {
    if(sqrt((gearX-maruX)*(gearX-maruX)+(gearY-maruY)*(gearY-maruY))<=100*ratioSize) gameOver=true;
    if(sqrt((blueKirbyX-maruX)*(blueKirbyX-maruX)+(blueKirbyY-maruY)*(blueKirbyY-maruY))<=100*ratioSize) gameOver=true;
    if(sqrt((pinkyKirbyX-maruX)*(pinkyKirbyX-maruX)+(pinkyKirbyY-maruY)*(pinkyKirbyY-maruY))<=100*ratioSize) gameOver=true;
  }

  // items
  if (gameOver == false) {
    for(int i=0;i<itemBoneAmount;i++){
      if(sqrt((itemBoneX[i]-maruX)*(itemBoneX[i]-maruX)+(itemBoneY[i]-maruY)*(itemBoneY[i]-maruY))<=100*ratioSize) {
        if(visible[i]) {
          eatCount++;
        }
        visible[i]=false;
        println(eatCount);
        if (itemBoneAmount == eatCount) missionClear = true;
      }
    }
  }
}
