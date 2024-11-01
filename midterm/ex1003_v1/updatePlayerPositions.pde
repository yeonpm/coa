void updatePlayerPositions(){
    degreeX = 0.1; degreeY = 0.1;  gravity=0.2;
    maruX += maruVX;
    maruY += maruVY;
    if (maruVX > 0) maruVX = maruVX - degreeX;
    if (maruVX < 0) maruVX = maruVX + degreeX;
    if (maruVY > 0) maruVY = maruVY - degreeY;
    if (maruVY < 0) maruVY = maruVY + degreeY;
    maruVY = maruVY + gravity;
    if (maruX < 50 * ratio || maruX > width - 50 * ratio)
      maruVX = -maruVX;
    if (maruY < 60 * ratio || maruY > height - 60 * ratio)
      maruVY = -maruVY;
}

void keyPressed(){
  if (key == 'a' || key == 'ㅁ') maruVX -= 5;
  else if(key == 'd' || key == 'ㅇ') maruVX += 5;
  else if(key == 'w' || key == 'ㅈ') maruVY -= 5;
  else if(key == 's' || key == 'ㄴ') maruVY += 5;
}