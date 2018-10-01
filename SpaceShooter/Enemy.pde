class Enemy extends Spaceship {


  public Enemy (float x, float y) {
    super(x, y);
  }

  void move(){
    
  }

  void show() {
    fill(255, 0, 0);
    ellipse(100, 100, 30, 30);
  }
}
