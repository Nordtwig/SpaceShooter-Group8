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

void collisionHandler() {
  for (int i = 0; i < enemies.size(); i++) {
    for (int j = 0; j < player.bullets.size(); j++) {
     boolean enemyHit = collision(enemies.get(i).position.x,
                                     enemies.get(i).position.y,
                                     enemies.get(i).size / 2,
                                     player.bullets.get(j).position.x,
                                     player.bullets.get(j).position.y,
                                     player.bullets.get(j).size / 2);
      if (enemyHit && enemies.get(i).size >= 0) {
        // enemies.remove(enemies.get(i));
        enemies.get(i).isDead = true;
        enemies.get(i).size = 0;
        player.bullets.get(j).size = 0;
        score += 10;
      }
    }
    boolean enemyPlayer = collision(enemies.get(i).position.x,
                                    enemies.get(i).position.y,
                                    enemies.get(i).size / 2,
                                    player.position.x,
                                    player.position.y,
                                    player.size / 2);
     if (enemyPlayer && enemies.get(i).size >= 0) {
       player.size = 0;
       player.isDead = true;
     }
     for (int j = 0; j < enemies.get(i).bullets.size(); j++) {
       boolean playerHit = collision(enemies.get(i).bullets.get(j).position.x,
                                       enemies.get(i).bullets.get(j).position.y,
                                       enemies.get(i).bullets.get(j).size / 2,
                                       player.position.x,
                                       player.position.y,
                                       player.size / 2);
        if (playerHit && player.size >= 0) {
          // enemies.remove(enemies.get(i));
          player.isDead = true;
          player.size = 0;
          enemies.get(i).bullets.get(j).size = 0;
          stateHandler.gameState = 2;
        }
     }
  }
}
