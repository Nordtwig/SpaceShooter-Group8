import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class SpaceShooter extends PApplet {

Player player;
Enemy enemy;

public void setup() {
  
  player = new Player(width / 2, height / 2);
  enemy = new Enemy(100, 100);
}

public void draw() {
  background(0);
  player.move();
  player.show();
  enemy.show();
}
class Enemy extends Spaceship {


  public Enemy (float x, float y) {
    super(x, y);
  }

  public void show() {
    fill(255, 0, 0);
    ellipse(100, 100, 30, 30);
  }
}
boolean moveLeft = false;
boolean moveRight  = false;
boolean moveUp = false;
boolean moveDown = false;
boolean isShooting = false;

public void keyPressed() {
  if (key == 'a' || key == 'A') {
    moveLeft = true;
  }
  if (key == 'd' || key == 'D') {
    moveRight = true;
  }
  if (key == 'w' || key == 'W') {
    moveUp = true;
  }
  if (key == 's' || key == 'S') {
    moveDown = true;
  }
}

public void keyReleased() {
  if (key == 'a' || key == 'A') {
    moveLeft = false;
  }
  if (key == 'd' || key == 'D') {
    moveRight = false;
  }
  if (key == 'w' || key == 'W') {
    moveUp = false;
  }
  if (key == 's' || key == 'S') {
    moveDown = false;
  }
}
class Player extends Spaceship {
  float angle;

  public Player (float x, float y) {
    super(x, y);
  }

  public void move() {
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
class Spaceship {
  PVector position;
  PVector velocity;

  public Spaceship (float x, float y) {
    position = new PVector(x, y);
    velocity = new PVector(4, 4);
  }

  public void show() {
    ellipse(position.x, position.y, 20, 20);
  }
}
  public void settings() {  size(800, 800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "SpaceShooter" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
