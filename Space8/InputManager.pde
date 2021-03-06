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

  if (stateHandler.gameState == 2) {
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
  if (stateHandler.gameState == 0) {
    if (mouseX > 450 && mouseX < 600 && mouseY > 550 && mouseY < 610) {
      background(0);
      fill(200, 0, 0);
      text("Shutting Down...", width / 2, height / 2);
      soundTrack.stop();
      exit();
    }
    else if (mouseX > 200 && mouseX < 350 && mouseY > 550 && mouseY < 610) {
      stateHandler.gameState = 1;
    }
  }
  else if (stateHandler.gameState == 1){
    isShooting = true;
  }
  else if (stateHandler.gameState == 2) {
    if (mouseX > 325 && mouseX < 475 && mouseY > 500 && mouseY < 560) {
      if (name.name == "") {
        name.name = "randomGuy";
      }
      TableRow newRow = scoreTable.addRow();
      newRow.setInt("score", score);
      newRow.setString("name", name.name);
      saveTable(scoreTable,"data/HighScore.csv");
      resetGame();
    }
  }
}

void mouseReleased() {
  if (stateHandler.gameState == 1) {
    isShooting = false;
  }
}

void hoverOver() {
  if (stateHandler.gameState == 0 && mouseX > 450 && mouseX < 600 && mouseY > 550 && mouseY < 610) {
    cursor(HAND);
  }
  else if (stateHandler.gameState == 0 && mouseX > 200 && mouseX < 350 && mouseY > 550 && mouseY < 610) {
    cursor(HAND);
  }
}
