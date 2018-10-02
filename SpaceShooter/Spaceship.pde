class Spaceship {
  PVector position;

  PVector velocity;

  float speed;
  float size;
  int shipColor;

  public Spaceship (float x, float y) {
    position = new PVector(x, y);
    velocity = new PVector(1, 1);
    size = 20;
    shipColor = color(128);
  }

  void show() {
    fill(shipColor);
    ellipse(position.x, position.y, size, size);
  }
}
