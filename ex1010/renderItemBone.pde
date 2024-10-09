void renderItemBone(){
  for (int i=0; i<itemBoneAmount; i++) { 
    itemBoneX[i] += itemBoneVX[i]; // 움직임 구현
    itemBoneY[i] += itemBoneVY[i];
    if (itemBoneX[i]>width || itemBoneX[i] <0) itemBoneVX[i] = -itemBoneVX[i]; // 벽과 충돌
    if (itemBoneY[i]>height || itemBoneY[i] <0) itemBoneVY[i] = -itemBoneVY[i];
    
    //속도에 따른 색깔.
    if ( (itemBoneVX[i]*itemBoneVX[i] + itemBoneVY[i]*itemBoneVY[i]) >= 15 ) fill(255, 0, 51); //빨간색
    else if ( (itemBoneVX[i]*itemBoneVX[i] + itemBoneVY[i]*itemBoneVY[i]) >= 10 ) fill(255, 204, 51); //노란색
    else if ( (itemBoneVX[i]*itemBoneVX[i] + itemBoneVY[i]*itemBoneVY[i]) >= 5 ) fill(0, 204, 51); //초록색
    else if ( (itemBoneVX[i]*itemBoneVX[i] + itemBoneVY[i]*itemBoneVY[i]) >= 3 ) fill(153, 204, 255); //파란색
    else fill(255); //흰색
    itemBone(itemBoneX[i], itemBoneY[i], 4, visible[i]);
  }
}
