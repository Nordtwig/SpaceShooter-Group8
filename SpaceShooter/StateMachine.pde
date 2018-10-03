class StateMachine {
  int gameState = 0;

  public StateMachine () {
  }

  void startScreen() {
    background(0);

    noFill();
    stroke(169, 138, 30);
    strokeWeight(20);
    bezier(127, 74, -85, 58, 287, 283, 63, 223);
    bezier(177, 213, 102, -58, 358, 139, 169, 176);
    bezier(268, 184, 272, 105, 322, -18, 377, 170);
    bezier(477, 167, 318, 197, 443, 12, 486, 92);
    bezier(583, 200, 341, 66, 759, 15, 526, 157);
    //bezier(695, 156, 865, 234, -131, 392, 695, 156);
    noFill();

    stroke(132, 5, 2);
    strokeWeight(5);
    line(50, 50, 750, 50);
    bezier(730, 300, 380, 56, 61, 298, 70, 300);

    fill(255, 255, 255);
    textSize(250);
    textAlign(LEFT);
    text("8", 620, 248);

    fill (0, 0, 255);
    textSize(30);
    textAlign(CENTER);
    text ("High Scores", width / 2, 300);

    fill (0, 0, 255);
    textSize(20);
    textAlign(LEFT);
    text (highScore1Name, 250, 350);
    text (highScore2Name, 250, 380);
    text (highScore3Name, 250, 410);
    textAlign(RIGHT);
    text (highScore1, 550, 350);
    text (highScore2, 550, 380);
    text (highScore3, 550, 410);

    fill (255, 255, 255);
    textSize (20);
    textAlign (CENTER);
    text ("Wanna play?", width / 2, 500);
    fill (68, 119, 1);
    rect (200, 550, 150, 60, 10);
    fill (255, 0, 0);
    rect (450, 550, 150, 60, 10);
    fill (0, 0, 0);
    textSize (30);
    textAlign (CENTER, CENTER);
    text ("Yes", 275, 575);
    text ("No", 525, 575);
    cursor(ARROW);
    hoverOver();
  }

  void gameScreen() {
    background(0);
    collisionHandler();
    fill(255);
    text(score, width - 30, 20);
    player.move();
    player.show();
    for (int i = 0; i < enemies.size(); i++) {
      enemies.get(i).move();
      enemies.get(i).show();
    }
  }

  void endScreen() {
    background(0);
    name.show();
    text(score, 400, 600);
  }
}
