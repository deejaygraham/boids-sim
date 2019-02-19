Flock flock;

void setup() {
  size(640, 360);
  
  flock = new Flock();
}

void draw() {
  background(50);
  flock.run();
}

// Add a new boid into the System
void mousePressed() {
  flock.addBoid(new Boid(mouseX,mouseY));
}
