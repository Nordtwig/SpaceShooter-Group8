class Enemy extends Spaceship {
  PVector playerDirection;
  ArrayList<Bullet> bullets;
  boolean isDead = false;
  int frameCounter;
  int fireRate;

  public Enemy (float x, float y) {
    super(x, y);
    position = new PVector(x, y);
    bullets = new ArrayList<Bullet>();
    shipColor = color(255, 0, 0);
    size = 30;
    speed = 2;
    frameCounter = 0;
    fireRate = 20;
  }

  void move(){
    if (!isDead) {
      followPlayer();
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

  void followPlayer(){
    playerDirection = new PVector(player.position.x, player.position.y);
    playerDirection.sub(position);
    playerDirection.normalize();
    position.x += playerDirection.x * speed;
    position.y += playerDirection.y * speed;
  }

  void shootPlayer() {
    if (frameCounter >= fireRate) {
      bullets.add(new Bullet(position, player.position.x, player.position.y));
      frameCounter = 0;
    }
  }
}
