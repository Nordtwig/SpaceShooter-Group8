class Enemy extends Spaceship {
  PVector playerDirection;

  public Enemy (float x, float y) {
    super(x, y);
    position = new PVector(x, y);
    shipColor = color(255, 0, 0);
    size = 30;
    speed = 3;
  }

  void move(){
    followPlayer();
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

  void followPlayer(){
    playerDirection = new PVector(player.position.x, player.position.y);
    playerDirection.sub(position);
    playerDirection.normalize();
    position.x += playerDirection.x * speed;
    position.y += playerDirection.y * speed;
  }
}
