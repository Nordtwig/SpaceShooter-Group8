class Parallax {
  PVector position;
  PVector velocity;
  PVector position1;
  PVector velocity1;

  int frame = 0;
  int planet = 300;
  int dotDistance = 300;
  float speed = 0.06;
  float sizePlanet = random(50, 100);
  float sizePlanet2 = random(150, 200);
  float sizePlanet3 = random(60, 80);

  public Parallax () {
    smooth();
    position = new PVector(100, 100);
    velocity = new PVector(0.2, 0.5);
    position1 = new PVector(600, 300);
    velocity1 = new PVector(- 0.6, 0.2);
  }

  void show() {
    background(0, 0, 0, 255);
    parallaxCurve(planet);
    parallax1();
    parallax2();
    frame++;
  }

  void parallaxCurve(int planet) {
    noStroke();
    for(int i = 0; i < planet; i += dotDistance) {
      fill(184, 109, 3);
      ellipse(width / 2 + cos((frame  * speed) * -0.08) * planet, height / 2 + sin((frame  * speed) * -0.07) * planet, sizePlanet, sizePlanet);
    }
  }

  void parallax1() {
    position.add(velocity);

    if (position.x > width + (sizePlanet2 / 2)){
        position.x = 0 - (sizePlanet2 / 2);
      }
      else if(position.x < 0 - (sizePlanet2 / 2)){
        position.x = width - (sizePlanet2 / 2);
      }
      if(position.y > height + (sizePlanet2 / 2)){
        position.y = 0 - (sizePlanet2 / 2);
      }
      else if(position.y < 0 - (sizePlanet2 / 2)){
        position.y = height - (sizePlanet2 / 2);
      }
      noStroke();
      fill(24, 83, 24);
      ellipse(position.x, position.y, sizePlanet2, sizePlanet2);
  }

  void parallax2() {
    position1.add(velocity1);

    if (position1.x > width + (sizePlanet3 / 2)){
        position1.x = 0 - (sizePlanet3 / 2);
      }
      else if(position1.x < 0 - (sizePlanet3 / 2)){
        position1.x = width - (sizePlanet3 / 2);
      }
      if(position1.y > height + (sizePlanet3 / 2)){
        position1.y = 0 - (sizePlanet3 / 2);
      }
      else if(position1.y < 0 - (sizePlanet3 / 2)){
        position1.y = height - (sizePlanet3 / 2);
      }
      noStroke();
      fill(97, 88, 179);
      ellipse(position1.x, position1.y, sizePlanet3, sizePlanet3);
  }
}
