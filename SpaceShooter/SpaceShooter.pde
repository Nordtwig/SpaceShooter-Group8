Player player;
ArrayList<Enemy> enemies;
StateMachine stateHandler;
PrintWriter scoreKeeper;
NamePrompt name;

int numberOfEnemies = 5;;
int score = 0;

void setup() {
  size(800, 800);
  stateHandler = new StateMachine();
  name = new NamePrompt(400, 400);
  scoreKeeper = new PrintWriter(new BufferedWriter(new FileWriter("HighScore.txt", true)));
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
   enemies.add(new Enemy(random(20, width -  20), random(20, height - 20)));
  }
  stateHandler.gameState = 0;
}
