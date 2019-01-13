class Boat {
  float x, y, sz, vel, maxDist;
  float startx, starty;
  Waves waves;
  Boat(float xx, float yy, float v, float mD, Waves w) {
    startx = xx;
    starty = yy;
    x = xx;
    y = yy;
    sz = 100;
    vel = v;
    maxDist = mD;
    waves = w;
  }
  void move() {
    y = waves.getY()-sz/8.0;
  }
  void display() {
    fill(222, 184, 135);
    arc(x, y, sz, sz, 0, PI, CHORD);
    line(x, y, x, y-sz);
    fill(200);
    triangle(x, y-sz, x-sz/2, y-sz/2, x, y-sz/2);
  }
  void run() {
    move();
    display();
  }
}