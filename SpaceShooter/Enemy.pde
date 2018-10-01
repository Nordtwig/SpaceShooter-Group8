class Enemy extends Spaceship {


  public Enemy (float x, float y) {
    super(x, y);
  	velocity.x = 3;
  	velocity.y = 3;
  }

  void move(){
    position.x += velocity.x;
    position.y += velocity.y;

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
    fill(255, 0, 0);
    ellipse(position.x, position.y, 30, 30);
  }
}
