class Spaceship {
  PVector position;
  PVector direction;
  PVector velocity;

  public Spaceship (float x, float y) {
    position = new PVector(x, y);
    velocity = new PVector(4, 4);
    direction = new PVector(velocity.normalize().x, velocity.normalize().y);
    println(direction);
  }

  void show() {
    ellipse(position.x, position.y, 20, 20);
  }
}
