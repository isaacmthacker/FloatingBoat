Boat b;
Waves w;


void setup() {
  size(500, 500);
  b = new Boat(width/2.0, height/2.0, 1, 25);
  w = new Waves(30, width/2.0, 25, 1);
}


void draw() {
  background(255); 
  b.run();
  w.run();
}