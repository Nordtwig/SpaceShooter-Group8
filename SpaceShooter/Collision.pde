boolean collision(float x1, float y1, float size1, float x2, float y2, float size2) {
  float maxDistance = size1 + size2;

  if (abs(x1 - x2) >= maxDistance || abs(y1 - y2) >= maxDistance) {
    return false;
  }
  else if (dist(x1, y1, x2, y2) > maxDistance) {
    return false;
  }
  else {
    return true;
  }
}
