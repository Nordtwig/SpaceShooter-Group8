class Spaceship {
  PVector position;
  PVector direction;
  PVector velocity;

  float speed;
  int shipColor;

  public Spaceship (float x, float y) {
    position = new PVector(x, y);
    velocity = new PVector(4, 4);
    direction = new PVector(velocity.normalize().x, velocity.normalize().y);
    shipColor = color(128);
  }

  void show() {
    fill(shipColor);
    ellipse(position.x, position.y, 20, 20);
  }
}
