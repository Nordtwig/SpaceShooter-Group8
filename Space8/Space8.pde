import processing.sound.*;

Player player;
ArrayList<Enemy> enemies;
StateMachine stateHandler;
// PrintWriter scoreKeeper;
NamePrompt name;
Table scoreTable;
SoundFile soundTrack;
SoundFile enemySound;
SoundFile playerSound;

int numberOfEnemies = 10;;
int score = 0;
float safeZone = 100;
String highScore1Name, highScore2Name, highScore3Name;
int highScore1, highScore2, highScore3;

void setup() {
  size(800, 800);
  stateHandler = new StateMachine();
  name = new NamePrompt(700, 440);
  musicBox();
  scoreTable = loadTable("data/HighScore.csv","header");
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
   enemies.add(new Enemy(randomPosition(player.position.x, width), randomPosition(player.position.y, height), int(random(1, 4))));
  }
  findHighScore1();
  findHighScore2();
  findHighScore3();
  stateHandler.gameState = 0;
}

float randomPosition(float pos, float axis) {
    float spawnPos;
    float min = random(0f, pos - safeZone);
    float max = random(pos + safeZone, axis);
    if (random(0, 1) == 0) {
        spawnPos = min;
    }
    else {
        spawnPos = max;
    }
    return spawnPos;
}

void musicBox() {
  soundTrack = new SoundFile(this, "data/audio/space8TrackShort.wav");
  soundTrack.loop();
}

void bulletSound(int shooter) {
  enemySound = new SoundFile(this, "data/audio/pew1.wav");
  playerSound = new SoundFile(this, "data/audio/pew2.wav");
  if (shooter == 0) {
    enemySound.play();
  }
  if (shooter == 1) {
    playerSound.play();
  }
}
