Player player;
Enemy enemy;

void setup() {
  size(800, 800);
  player = new Player(width / 2, height / 2);
  enemy = new Enemy(100, 100);
}

void draw() {
  background(0);
  player.move();
  player.show();
  enemy.move();
  enemy.show();
}
