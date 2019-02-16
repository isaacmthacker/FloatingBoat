class Boat {
  float x, y, sz;
  Waves waves;
  Boat(float xx, float yy, Waves w) {
    x = xx;
    y = yy;
    sz = 100;
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
