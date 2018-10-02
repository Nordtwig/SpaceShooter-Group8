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
  collisionHandler();
  player.move();
  player.show();
  for (int i = 0; i < enemies.size(); i++) {
    enemies.get(i).move();
    enemies.get(i).show();
  }
}

void collisionHandler() {
  for (int i = 0; i < enemies.size(); i++) {
    for (int j = 0; j < player.bullets.size(); j++) {
     boolean hasCollided = collision(enemies.get(i).position.x,
                                     enemies.get(i).position.y,
                                     enemies.get(i).size / 2,
                                     player.bullets.get(j).position.x,
                                     player.bullets.get(j).position.y,
                                     player.bullets.get(j).size / 2);
      if (hasCollided) {
        // enemies.remove(enemies.get(i));
        enemies.get(i).isDead = true;
        enemies.get(i).size = 0;
      }
    }
  }
}
