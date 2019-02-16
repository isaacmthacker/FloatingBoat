class Waves {
  int numWaves;
  float y;
  float sz;
  float vel;
  float acc;
  ArrayList<Wave> waves;
  int numSteps;
  int halfStep;
  int curStep = 0;
  color c = color(0, 0, 255);
  Waves(int nW, float yy, float maxVel, int nSteps) {
    waves = new ArrayList<Wave>();
    numWaves = nW;
    sz = float(width)/float(numWaves);
    numSteps = nSteps;
    halfStep = int(numSteps/2.0);
    curStep = 0;
    y = yy;
    vel = 0.0;
    acc = maxVel/(numSteps/2.0);
    float x = sz/2.0;
    //+2 so we have two extra waves queued up outside of frame so the waves look natural
    for (int i = 0; i < numWaves+2; ++i) {
      waves.add(new Wave(x, y, sz, c));
      x += sz;
    }
  }
  void move() {
    ++curStep;
    if (curStep == halfStep) {
      acc *= -1.0;
    }
    if (curStep == numSteps) {
      curStep = 0;
      vel = 0.0;
    }
    vel += acc;
    y += vel;
  }
  void run() {
    move();
    fill(c);
    noStroke();
    rect(0, y+sz/2.0, width, height);
    stroke(0);
    for (int i = 0; i < waves.size(); ++i) {
      waves.get(i).run(y);
    }
    if (waves.get(0).outOfFrame()) {
      waves.remove(0);
      Wave lastWave = waves.get(waves.size()-1);
      waves.add(new Wave(lastWave.x+sz, y, sz, c));
    }
  }
  float getY() {
    return y;
  }
}
