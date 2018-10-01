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

Spaceship player;

public void setup() {
  
  player = new Spaceship(width / 2, height / 2);
}

public void draw() {
  background(0);
  player.move();
  player.show();
}

class Player extends Spaceship {


  public Player (float x, float y) {
    super(x, y);
  }
}
class Spaceship {
  PVector position;
  PVector velocity;

  public Spaceship (float x, float y) {
    position = new PVector(x, y);
    velocity = new PVector(random(2), random(2));
  }

  public void move() {
    position.add(velocity);
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
