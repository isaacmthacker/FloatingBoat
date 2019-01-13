class Fish {
 float x, y, vel;
 Fish(float xx, float yy, float vv) {
   x = xx;
   y = yy;
   vel = vv;
 }
 void move() {
   x += vel;
 }
 void display() {
   ellipse(x, y, 5, 5);
 }
 
 void run() {
   move();
   display();
 }
  
  
}