class Spaceship {
  PVector position;
  PVector velocity;

  public Spaceship (float x, float y) {
    position = new PVector(x, y);
    velocity = new PVector(random(2), random(2));
  }

  void move() {
    position.add(velocity);
  }

  void show() {
    ellipse(position.x, position.y, 20, 20);
  }
}
