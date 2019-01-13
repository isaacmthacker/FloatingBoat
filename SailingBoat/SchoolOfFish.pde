class SchoolOfFish {
  float maxY;
  int numFish;
  ArrayList<Fish> fish;
  SchoolOfFish(float mY, int nFish) {
    maxY = mY;
    numFish = nFish;
    fish = new ArrayList<Fish>();
    for (int i = 0; i < numFish; ++i) {
      fish.add(createFish());
    }
  }
  void run() {
    for (Fish f : fish) {
      f.run();
    }
  }
  Fish createFish() {
    return new Fish(width+50, random(maxY, height), -1);
  }
}