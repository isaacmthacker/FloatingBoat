Boat boat;
Waves waves;
SchoolOfFish fish;

int numWaves = 30;
int maxDist = 25;
float vel = 0.25;
int numFish = 5;
void setup() {
  size(500, 500);
  waves = new Waves(numWaves, width/2.0, vel, maxDist);
  boat = new Boat(width/2.0, height/2.0, vel, maxDist, waves);
  fish = new SchoolOfFish(height/2.0+maxDist, numFish);
}


void draw() {
  background(255);
  fill(color(255, 255, 0));
  ellipse(width/8.0, height/8.0, 100, 100);
  boat.run();
  waves.run();
  fish.run();
}