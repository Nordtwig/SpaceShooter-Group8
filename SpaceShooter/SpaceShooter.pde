Player player;
ArrayList<Enemy> enemies;

int numberOfEnemies = 5;

void setup() {
  size(800, 800);
  player = new Player(width / 2, height / 2);
  enemies = new ArrayList<Enemy>();  
  for (int i = 0; i < numberOfEnemies; i++) {
   enemies.add(new Enemy(random(20, width -  20), random(20, height - 20)));
  }

}

void draw() {
  background(0);
  collisionHandler();
  player.move();
  player.show();
  for (int i = 0; i < enemies.size(); i++) {
    enemies.get(i).move();
    enemies.get(i).show();
  }
}
