class Waves {
  int numWaves;
  float y;
  float sz;
  float starty;
  float maxDist;
  float vel;
  Waves(int nW, float yy, float mD, float v) {
    numWaves = nW;
    sz = float(width)/float(numWaves);
    y = yy;
    starty = yy;
    maxDist = mD;
    vel = v;
  }
  void move() {
    if (abs(starty-y) >= maxDist) {
      vel *= -1;
    }
    y += vel;
  }
  void display() {
    float x = sz/2.0;
    fill(color(0, 0, 255));
    noFill();
    for (int i = 0; i < numWaves; ++i) {
      arc(x, y, sz, sz, 0, PI);
      x += sz;
    }
    stroke(1);
  }
  void run() {
    move();
    display();
  }
}