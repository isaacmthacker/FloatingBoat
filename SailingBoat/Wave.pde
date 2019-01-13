class Wave {
  float x, y, starty, sz, vel, maxDist, acc;
  int numSteps = 30; 
  color c;
  Wave(float xx, float yy, float syy, float ss, float vv, float aa, float mD, color cc) {
    x = xx;
    y = yy;
    starty = syy;
    sz = ss;
    maxDist = mD;
    vel = vv;
    acc = aa;
    c = cc;
  }
  void move() {
    y += vel;
    if (y-starty >= maxDist) {
      vel *= -1;
    }
    vel += acc;
    x -= 0.5;
  }
  void display() {

    PShape s = createShape();
    s.beginShape();
    s.noStroke();
    int numPoints = 20;
    float angle = PI/2.0;
    float step = PI/2.0/numPoints;
    for (int i = 0; i < numPoints; ++i) {
      s.vertex(sz/2.0*cos(angle)+x, sz/2.0*sin(angle)+y);
      angle -= step;
    }
    angle = PI;
    for (int i = 0; i < numPoints; ++i) {
      s.vertex(sz/2.0*cos(angle)+x+sz, sz/2.0*sin(angle)+y);
      angle -= step;
    }
    s.noStroke();
    s.fill(c);
    s.endShape(CLOSE);
    shape(s, 0, 0);
    noFill();
    arc(x, y, sz, sz, 0, PI);
  }
  boolean outOfFrame() {
    return x+sz <= 0 || x-sz >= width;
  }
  void run() {
    move();
    display();
  }
}