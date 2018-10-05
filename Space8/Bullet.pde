class Bullet {
  PVector position;
  PVector direction;

  boolean isVoid = false;

  float speed;
  float size = 5;
  int bulletColor;

  public Bullet (PVector shipPos, float directionX, float directionY, int bulletSpeed, int bColor) {
    position = new PVector(shipPos.x, shipPos.y);
    direction = new PVector(directionX, directionY);
    direction.sub(position);
    direction.normalize();
    speed = bulletSpeed;
    bulletColor = bColor;
  }

  void move() {
    position.x += direction.x * speed;
    position.y += direction.y * speed;
  }

  void show() {
    fill(bulletColor);
    ellipse(position.x, position.y, size, size);
  }
}
