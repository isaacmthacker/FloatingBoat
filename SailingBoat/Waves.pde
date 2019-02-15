class Waves {
  int numWaves;
  float y;
  float sz;
  float starty;
  float maxDist;
  float vel;
  float acc;
  ArrayList<Wave> waves;
  int numSteps;
  color c = color(0, 0, 255);
  Waves(int nW, float yy, float v, float mD) {
    waves = new ArrayList<Wave>();
    numWaves = nW;
    sz = float(width)/float(numWaves);
    y = yy;
    starty = yy;
    maxDist = mD;
    numSteps = int(maxDist);
    vel = v;
    acc = vel/numSteps/2.0;
    float x = sz/2.0;
    //+2 so we have two extra waves queued up outside of frame so the waves look natural
    for (int i = 0; i < numWaves+2; ++i) {
      waves.add(new Wave(x, y, starty, sz, vel, acc, maxDist, c));
      x += sz;
    }
  }
  void run() {
    fill(c);
    noStroke();
    rect(0, getY()+sz/2.0, width, height);
    stroke(0);
    for (int i = 0; i < waves.size(); ++i) {
      waves.get(i).run();
    }
    if (waves.get(0).outOfFrame()) {
      waves.remove(0);
      Wave lastWave = waves.get(waves.size()-1);
      waves.add(new Wave(lastWave.x+sz, lastWave.y, starty, sz, lastWave.vel, lastWave.acc, maxDist, c));
    }
  }
  float getY() {
    return waves.get(0).y;
  }
  float getSz() {
    return sz;
  }
}
