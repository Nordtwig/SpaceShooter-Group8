class Menu {

  PVector position;
  PVector velocity;

    String welcomeMenu = "Games Name What ever!";
    int scoreThisRound; // ? if we choose to have it here
    String wannaPlay = "Start shooting?";


    void setup() {
    size(800, 800);
    position = new PVector();
    velocity = new PVector();
    }

    void draw() {
      background(0, 0, 0, 255);
      parallax1();
      parallax2();
      gameOver();
  }

  void parallax1() {
    position.x = random(0, width);
    position.y = random(0, height);
    velocity.x *= random(1, 1);
    velocity.y *= random(1, 1);
    position.add(velocity);

    if (position.x > width){
          position.x = 0;
        }
        else if(position.x < 0){
          position.x = width;
        }
        if(position.y > height){
          position.y = 0;
        }
        else if(position.y < 0){
          position.y = height;
        }

        noStroke();
        fill(255, 128, 0, 60);
        ellipse(position.x, position.y, 300, 300);
  }

  void parallax2() {
    position.x = random(0, width);
    position.y = random(0, height);
    velocity.x = random(1, 1);
    velocity.y = random(1, 1);
    position.add(velocity);

    if (position.x > width){
          position.x = 0;
        }
        else if(position.x < 0){
          position.x = width;
        }
        if(position.y > height){
          position.y = 0;
        }
        else if(position.y < 0){
          position.y = height;
        }

        noStroke();
        fill(255, 128, 255, 60);
        ellipse(position.x, position.y, 100, 100);
  }

  void gameOver() {

      PFont font;
      font = createFont("Tahoma Fet", 80);

      String gameOver = "Game Over!";
      int scoreThisRound = 1000000000;
      String backToMenu = "Menu";

      //background(0, 0, 0, 255);
      textFont(font);

      fill(0, 255, 0);
      //textSize(80);
      textAlign(CENTER, CENTER);
      text(gameOver, width / 2, 250);

      textSize(30);
      textAlign(LEFT, 360);
      text("You're score ->", 100, 360);
      textAlign(RIGHT, 360);
      text(scoreThisRound, 700, 360);

      textAlign(LEFT, 440);
      text("Enter you're name ->", 100, 440);
      textAlign(RIGHT, 440);
      text("Box here", 700, 440);

      stroke(132, 5, 2);
      strokeWeight(5);
      fill(255, 255, 255);
      rect(325, 500, 150, 60, 10);
      fill(0, 0, 0);
      textSize(20);
      textAlign(CENTER, CENTER);
      text(backToMenu, width / 2, 525);
  }
      /*String[] fontList = PFont.list();
      printArray(fontList);*/

  void startScreen (){

      String aliasName1 = "Northwig";
      String aliasName2 = "Vice";
      String aliasName3 = "Flarne";
      int highScore1 = 300;
      int highScore2 = 20;
      int highScore3 = 1;

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
      text ("HighScore", width / 2, 300);

      fill (0, 0, 255);
      textSize(20);
      textAlign(LEFT);
      text (aliasName1, 250, 350);
      text (aliasName2, 250, 380);
      text (aliasName3, 250, 410);
      textAlign(RIGHT);
      text (highScore1, 550, 350);
      text (highScore2, 550, 380);
      text (highScore3, 550, 410);

      fill (255, 255, 255);
      textSize (20);
      textAlign (CENTER);
      text (wannaPlay, width / 2, 500);
      fill (68, 119, 1);
      rect (200, 550, 150, 60, 10);
      fill (255, 0, 0);
      rect (450, 550, 150, 60, 10);
      fill (255, 255, 255);
      rect (325, 690, 150, 60, 10);
      fill (0, 0, 0);
      textSize (30);
      textAlign (CENTER, CENTER);
      text ("Yes", 275, 575);
      text ("No", 525, 575);
      text ("Quit", width / 2, 715);
  }
}
