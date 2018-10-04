Player player;
ArrayList<Enemy> enemies;
StateMachine stateHandler;
// PrintWriter scoreKeeper;
NamePrompt name;
Table scoreTable;

int numberOfEnemies = 10;;
int score = 0;
String highScore1Name, highScore2Name, highScore3Name;
int highScore1, highScore2, highScore3;

void setup() {
  size(800, 800);
  stateHandler = new StateMachine();
  name = new NamePrompt(700, 440);
  scoreTable = loadTable("HighScore.csv","header");
  findHighScore1();
  findHighScore2();
  findHighScore3();
  resetGame();
}

void draw() {
  if (stateHandler.gameState == 0) {
    stateHandler.startScreen();
  }
  else if (stateHandler.gameState == 1) {
    stateHandler.gameScreen();
  }
  else if (stateHandler.gameState == 2) {
    stateHandler.endScreen();
  }
}

void resetGame() {
  score = 0;
  name.name = "";
  player = new Player(width / 2, height / 2);
  enemies = new ArrayList<Enemy>();
  for (int i = 0; i < numberOfEnemies; i++) {
   enemies.add(new Enemy(random(-50, width +  50), random(-50, height + 50), int(random(1, 4))));
   println(enemies.get(i).type);
  }
  findHighScore1();
  findHighScore2();
  findHighScore3();
  stateHandler.gameState = 0;
}
