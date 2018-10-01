class Player extends Spaceship {
  Bullet bullet;
  float angle;

  public Player (float x, float y) {
    super(x, y);
    speed = 5;
    shipColor = color(0, 0, 168);
  }

  void move() {
    if (moveLeft) {
      position.x -= velocity.x * speed;
    }
    if (moveRight) {
      position.x += velocity.x * speed;
    }
    if (moveUp) {
      position.y -= velocity.y * speed;
    }
    if (moveDown) {
      position.y += velocity.y * speed;
    }
    if (isShooting) {
      shootBullet();
    }
    if (bullet != null) {
      bullet.move();
      bullet.show();
    }

  }

  void shootBullet() {
    bullet = new Bullet(position, mouseX, mouseY);
  }
}
