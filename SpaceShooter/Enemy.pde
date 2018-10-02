class Enemy extends Spaceship {
  PVector playerDirection;
  ArrayList<Bullet> bullets;

  public Enemy (float x, float y) {
    super(x, y);
    position = new PVector(x, y);
    bullets = new ArrayList<Bullet>();
    shipColor = color(255, 0, 0);
    size = 30;
    speed = 3;
  }

  void move(){
    followPlayer();
    if (size > 0) {
      shootPlayer();
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
  }

  void followPlayer(){
    playerDirection = new PVector(player.position.x, player.position.y);
    playerDirection.sub(position);
    playerDirection.normalize();
    position.x += playerDirection.x * speed;
    position.y += playerDirection.y * speed;
  }

  void shootPlayer() {
    bullets.add(new Bullet(position, player.position.x, player.position.y));
  }
}
