void initPositionItem(){

  itemBoneX = new float[n];
  itemBoneY = new float[n];
  itemBoneVX = new float[n];
  itemBoneVY = new float[n];
  visible = new boolean[n];
  
  for (int i=0; i<n; i++) { //array를 for문으로 채우고
    itemBoneX[i] = random(width);
    itemBoneY[i] = random(height);
    itemBoneVX[i] = random(3);
    itemBoneVY[i] = random(3);
    visible[i] = true;
  }
  
}
