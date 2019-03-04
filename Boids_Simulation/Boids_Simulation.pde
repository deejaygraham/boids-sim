Flock flock;

void setup() {
  size(1280, 720);
  
  flock = new Flock(100);
}

void draw() {
  background(50);
  flock.run();
}

// Add a new boid into the System
void mousePressed() {
  flock.addBoid(new Boid(mouseX,mouseY));
}