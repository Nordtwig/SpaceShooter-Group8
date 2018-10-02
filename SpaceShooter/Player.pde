class Player extends Spaceship {
  ArrayList<Bullet> bullets;
  float angle;

  public Player (float x, float y) {
    super(x, y);
    bullets = new ArrayList<Bullet>();
    size = 20;
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
    if (bullets != null) {
      for (int i = 0; i < bullets.size(); i++) {
        Bullet bullet = bullets.get(i);
        bullet.move();
        bullet.show();
        if (bullet.position.x < 0 || bullet.position.x < width || bullet.position.y > 0 || bullet.position.y < height) {
          bullet = null;
        }
      }
    }
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
  }

  void shootBullet() {
    bullets.add(new Bullet(position, mouseX, mouseY));
  }
}
