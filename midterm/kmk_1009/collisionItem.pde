void collisionItem(){
  for(int i=0;i<n;i++){
    if(sqrt((itemBoneX[i]-maruX)*(itemBoneX[i]-maruX)+(itemBoneY[i]-maruY)*(itemBoneY[i]-maruY))<=100*ratioSize) visible[i]=false;
  }
}
