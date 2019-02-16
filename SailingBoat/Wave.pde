class Wave {
  float x, y, sz;
  int numSteps = 30; 
  color c;
  PShape s;
  Wave(float xx, float yy, float ss, color cc) {
    x = xx;
    y = yy;
    sz = ss;
    c = cc;
    s = MakeShape();
  }
  PShape MakeShape() {
    int numPoints = 20;
    PShape s = createShape();
    s.beginShape();
    s.stroke(c);
    float angle = PI;
    float step = PI/(2*numPoints);
    s.vertex(-sz/2.0, sz);
    for (int i = 0; i < 2*numPoints; ++i) {
      s.vertex(sz/2.0*cos(angle), sz/2.0*sin(angle));
      angle -= step;
    }
    s.vertex(sz/2.0, sz);
    s.vertex(-sz/2.0, sz);
    s.fill(c);
    s.endShape(CLOSE);
    return s;
  }
  void display() {
    pushMatrix();
    translate(x, y);
    shape(s, 0, 0);
    noFill();
    arc(0, 0, sz, sz, 0, PI);
    popMatrix();
  }
  boolean outOfFrame() {
    return x+sz <= 0 || x-sz >= width;
  }
  void run(float yy) {
    y = yy;
    x -= 0.5;
    display();
  }
}
