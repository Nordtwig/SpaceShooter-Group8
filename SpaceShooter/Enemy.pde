class Enemy extends Spaceship {


  public Enemy (float x, float y) {
    super(x, y);
    position = new PVector(x, y);
    shipColor = color(255, 0, 0);
    speed = 3;

  	//velocity.x = 3;
  	//velocity.y = 3;

  }

  void move(){

    followPlayer(player.position);

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

  void show() {
    fill(shipColor);
    ellipse(position.x, position.y, 30, 30);
  }

  void followPlayer(PVector playerPos){
    direction = playerPos;
    direction.sub(position);
    direction.normalize();
    position.x += direction.x * speed;
    position.y += direction.y * speed;
  }
}
