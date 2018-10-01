class Enemy extends Spaceship {


  public Enemy (float x, float y) {
    super(x, y);
  	velocity.x = random(-1, 1);
  	velocity.y = random(-1, 1);
  }

  void move(){
    position.x += velocity.x;
    position.y += velocity.y;
  }

  void show() {
    fill(255, 0, 0);
    ellipse(position.x, position.y, 30, 30);
  }
}
