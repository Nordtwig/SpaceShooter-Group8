class Spaceship {
  PVector position;
  PVector velocity;

  public Spaceship (float x, float y) {
    position = new PVector(x, y);
    velocity = new PVector(4, 4);
  }

  void show() {
    ellipse(position.x, position.y, 20, 20);
  }
}
