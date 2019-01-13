class Boat {
  float x, y, sz, vel, maxDist;
  float startx, starty;
  Boat(float xx, float yy, float v, float mD) {
    startx = xx;
    starty = yy;
    x = xx;
    y = yy;
    sz = 100;
    vel = v;
    maxDist = mD;
  }
  void move() {
    if (abs(starty-y) >= maxDist) {
      vel *= -1;
    }
    y += vel;
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