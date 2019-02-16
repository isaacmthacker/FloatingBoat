Boat boat;
Waves waves;

int numWaves = 25;
float maxVel = 0.5;
int numSteps = 150;
float vel = 0.25;
int numFish = 5;
void setup() {
  size(800, 500);
  waves = new Waves(numWaves, height/2.0, maxVel, numSteps);
  boat = new Boat(width/2.0, height/2.0, waves);
}


void draw() {
  background(color(76, 203, 255));
  fill(color(255, 255, 0));
  ellipse(width/8.0, height/8.0, 100, 100);
  boat.run();
  waves.run();
}
