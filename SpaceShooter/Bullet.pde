class Bullet {
  PVector position;
  PVector direction;

  float speed;

  public Bullet (PVector shipPos, float directionX, float directionY) {
    position = new PVector(shipPos.x, shipPos.y);
    direction = new PVector(directionX, directionY);
    direction.normalize();
    speed = 7;
  }

  void move() {
    position.x += direction.x * speed;
    position.y += direction.y * speed;
  }

  void show() {
    ellipse(position.x, position.y, 5, 5);
  }
}
