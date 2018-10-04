class Player extends Spaceship {
  ArrayList<Bullet> bullets;
  float angle;
  boolean isDead = false;
  int frameCounter;
  int fireRate;
  int scoreTimer;
  int scoreRate;

  public Player (float x, float y) {
    super(x, y);
    bullets = new ArrayList<Bullet>();
    size = 20;
    speed = 5;
    frameCounter = 0;
    fireRate = 10;
    scoreTimer = 0;
    scoreRate = 5;
    shipColor = color(0, 0, 168);
  }

  void move() {
    if (scoreTimer >= scoreRate) {
      score++;
      scoreTimer = 0;
    }
    if (!isDead) {
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
    }
    for (int i = 0; i < bullets.size(); i++) {
      Bullet bullet = bullets.get(i);
      if (bullet.size > 0) {
        bullet.move();
        bullet.show();
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
    frameCounter++;
    scoreTimer++;
  }

  void shootBullet() {
    if (frameCounter >= fireRate) {
      bullets.add(new Bullet(position, mouseX, mouseY, 6));
      frameCounter= 0;
    }
  }
}
