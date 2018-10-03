Player player;
ArrayList<Enemy> enemies;
StateMachine gameManager;

int numberOfEnemies = 5;

void setup() {
  size(800, 800);
  gameManager = new StateMachine();
  player = new Player(width / 2, height / 2);
  enemies = new ArrayList<Enemy>();
  for (int i = 0; i < numberOfEnemies; i++) {
   enemies.add(new Enemy(random(20, width -  20), random(20, height - 20)));
  }
  gameManager.gameState = 0;
}

void draw() {
  if (gameManager.gameState == 0) {
    gameManager.startScreen();
  }
  else if (gameManager.gameState == 1) {
    gameManager.gameScreen();
  }
}
