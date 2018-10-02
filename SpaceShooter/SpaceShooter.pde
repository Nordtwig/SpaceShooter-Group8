Player player;
ArrayList<Enemy> enemies;

int numberOfEnemies = 5;

void setup() {
  size(800, 800);
  enemies = new ArrayList<Enemy>();
  player = new Player(width / 2, height / 2);
  for (int i = 0; i < numberOfEnemies; i++) {
   enemies.add(new Enemy(random(20, width - 20), random(20, height - 20)));
  }

}

void draw() {
  background(0);
  // collisionHandler();
  println(enemies);
  player.move();
  player.show();
  for (int i = 0; i < enemies.size(); i++) {
    Enemy enemy = enemies.get(i);
    enemy.move();
    enemy.show();
  }
}

void collisionHandler() {
  for (int i = 0; i < enemies.size(); i++) {
    Enemy enemy = enemies.get(i);
    for (int j = 0; j < player.bullets.size(); j++) {
     Bullet bullet = player.bullets.get(j);
     boolean hasCollided = collision(enemy.position.x,
                                     enemy.position.y,
                                     enemy.size / 2,
                                     bullet.position.x,
                                     bullet.position.y,
                                     bullet.size / 2);
      if (hasCollided) {
        enemy.size = 25;
      }
    }
  }
}
