boolean moveLeft = false;
boolean moveRight  = false;
boolean moveUp = false;
boolean moveDown = false;
boolean isShooting = false;

void keyPressed() {
  if (key == 'a' || key == 'A') {
    moveLeft = true;
  }
  if (key == 'd' || key == 'D') {
    moveRight = true;
  }
  if (key == 'w' || key == 'W') {
    moveUp = true;
  }
  if (key == 's' || key == 'S') {
    moveDown = true;
  }

  if (gameManager.gameState == 2) {
    name.keyListener(key, keyCode);
  }
}

void keyReleased() {
  if (key == 'a' || key == 'A') {
    moveLeft = false;
  }
  if (key == 'd' || key == 'D') {
    moveRight = false;
  }
  if (key == 'w' || key == 'W') {
    moveUp = false;
  }
  if (key == 's' || key == 'S') {
    moveDown = false;
  }
}

void mousePressed() {
  if (gameManager.gameState == 0) {
    if (gameManager.gameState == 0 && mouseX > 450 && mouseX < 600 && mouseY > 550 && mouseY < 610) {
      exit();
    }
    else if (gameManager.gameState == 0 && mouseX > 200 && mouseX < 350 && mouseY > 550 && mouseY < 610) {
      gameManager.gameState = 1;
    }
  }
  else if (gameManager.gameState == 1){
    isShooting = true;
  }
  else if (gameManager.gameState == 2) {

  }
}

void mouseReleased() {
  if (gameManager.gameState == 1) {
    isShooting = false;
  }
}

void hoverOver() {
  if (gameManager.gameState == 0 && mouseX > 450 && mouseX < 600 && mouseY > 550 && mouseY < 610) {
    cursor(HAND);
  }
  else if (gameManager.gameState == 0 && mouseX > 200 && mouseX < 350 && mouseY > 550 && mouseY < 610) {
    cursor(HAND);
  }
}
