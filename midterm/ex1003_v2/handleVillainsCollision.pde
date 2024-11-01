void handleVillainsCollision() {
  // 캐릭터(장애물)간의 충돌
  if (sqrt((blueKirbyX - pinkyKirbyX) * (blueKirbyX - pinkyKirbyX)
      + (blueKirbyY - pinkyKirbyY) * (blueKirbyY - pinkyKirbyY)) <= 100 * ratioSize) {
    float transferVX = blueKirbyVX;
    float transferVY = blueKirbyVY;
    blueKirbyVX = pinkyKirbyVX;
    blueKirbyVY = pinkyKirbyVY;
    pinkyKirbyVX = transferVX; 
    pinkyKirbyVY = transferVY;
  }

  if (sqrt((blueKirbyX - gearX) * (blueKirbyX - gearX) + (blueKirbyY - gearY) * (blueKirbyY - gearY)) <= 110
      * ratioSize) {
    float transferVX = blueKirbyVX;
    float transferVY = blueKirbyVY;
    blueKirbyVX = gearVX;
    blueKirbyVY = gearVY;
    gearVX = transferVX;
    gearVY = transferVY;
  }

  if (sqrt((pinkyKirbyX - gearX) * (pinkyKirbyX - gearX) + (pinkyKirbyY - gearY) * (pinkyKirbyY - gearY)) <= 110
      * ratioSize) {
    float transferVX = pinkyKirbyVX;
    float transferVY = pinkyKirbyVY;
    pinkyKirbyVX = gearVX;
    pinkyKirbyVY = gearVY;
    gearVX = transferVX;
    gearVY = transferVY;
  }

  // 벽과 충돌
  if (blueKirbyX <= 50 * ratioSize && blueKirbyVX < 0) {
    blueKirbyVX = -blueKirbyVX;
    blueKirbyX = 50 * ratioSize;
  }
  if (blueKirbyX >= width - 50 * ratioSize && blueKirbyVX > 0) {
    blueKirbyVX = -blueKirbyVX;
    blueKirbyX = 800 - 50 * ratioSize;
  }
  if (blueKirbyY <= 50 * ratioSize && blueKirbyVY < 0) {
    blueKirbyVY = -blueKirbyVY;
    blueKirbyY = 50 * ratioSize;
  }
  if (blueKirbyY >= height - 50 * ratioSize && blueKirbyVY > 0) {
    blueKirbyVY = -blueKirbyVY;
    blueKirbyY = 800 - 50 * ratioSize;
  }
  if (pinkyKirbyX <= 50 * ratioSize && pinkyKirbyVX < 0) {
    pinkyKirbyVX = -pinkyKirbyVX;
    pinkyKirbyX = 50 * ratioSize;
  }
  if (pinkyKirbyX >= width - 50 * ratioSize && pinkyKirbyVX > 0) {
    pinkyKirbyVX = -pinkyKirbyVX;
    pinkyKirbyX = 800 - 50 * ratioSize;
  }
  if (pinkyKirbyY <= 50 * ratioSize && pinkyKirbyVY < 0) {
    pinkyKirbyVY = -pinkyKirbyVY;
    pinkyKirbyY = 50 * ratioSize;
  }
  if (pinkyKirbyY >= height - 50 * ratioSize && pinkyKirbyVY > 0) {
    pinkyKirbyVY = -pinkyKirbyVY;
    pinkyKirbyY = 800 - 50 * ratioSize;
  }
  if (gearX <= 60 * ratioSize && gearVX < 0) {
    gearVX = -gearVX;
    gearX = 60 * ratioSize;
  }
  if (gearX >= width - 60 * ratioSize && gearVX > 0) {
    gearVX = -gearVX;
    gearX = 800 - 60 * ratioSize;
  }
  if (gearY <= 60 * ratioSize && gearVY < 0) {
    gearVY = -gearVY;
    gearY = 60 * ratioSize;
  }
  if (gearY >= height - 60 * ratioSize && gearVY > 0) {
    gearVY = -gearVY;
    gearY = 800 - 60 * ratioSize;
  }
}
