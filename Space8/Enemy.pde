class Enemy extends Spaceship {
  PVector playerDirection;
  ArrayList<Bullet> bullets;
  boolean isDead = false;
  int frameCounter;
  int fireRate;
  int type;

  public Enemy (float x, float y, int enemyType) {
    super(x, y);
    position = new PVector(x, y);
    bullets = new ArrayList<Bullet>();
    type = enemyType;
    size = 30;
    frameCounter = 0;
    fireRate = 20;
  }

  void move(){
    if (!isDead) {
      if (type == 1) {
        stalkerEnemy();
      }
      if (type == 2) {
        shooterEnemy();
      }
      if (type == 3) {
        staticEnemy();
      }
      shootPlayer();
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
    for (int i = 0; i < bullets.size(); i++) {
      Bullet bullet = bullets.get(i);
      if (bullet.size > 0) {
        bullet.move();
        bullet.show();
      }
    }
    frameCounter++;
  }

  void stalkerEnemy() {
    shipColor = color(255, 0, 0);
    speed = 4;
    followPlayer();
  }

  void shooterEnemy() {
    shipColor = color(128, 128, 0);
    speed = 2;
    shootPlayer();
    followPlayer();
  }

  void staticEnemy() {
    shipColor = color(200, 128, 0);
    shootPlayer();
  }

  void followPlayer(){
    playerDirection = new PVector(player.position.x, player.position.y);
    playerDirection.sub(position);
    playerDirection.normalize();
    position.x += playerDirection.x * speed;
    position.y += playerDirection.y * speed;
  }

  void shootPlayer() {
    if (frameCounter >= fireRate) {
      bullets.add(new Bullet(position, player.position.x, player.position.y, 5));
      frameCounter = 0;
    }
  }
}