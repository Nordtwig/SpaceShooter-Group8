class Player extends Spaceship {
  float angle;

  public Player (float x, float y) {
    super(x, y);
  }

  void move() {
    if (moveLeft) {
      position.x -= velocity.x;
    }
    if (moveRight) {
      position.x += velocity.x;
    }
    if (moveUp) {
      position.y -= velocity.y;
    }
    if (moveDown) {
      position.y += velocity.y;
    }
  }
}
