class Flock {
  ArrayList<Boid> boids; // An ArrayList for all the boids

  Flock(int flockSize){
    boids = new ArrayList<Boid>(); // Initialize the ArrayList
    
    for (int i = 0; i < flockSize; i++) {
      float positionX = random(width);
      float positionY = random(height);
      
      positionX = width/2;
      positionY = height/2;
      addBoid(new Boid(positionX, positionY));
    }
  }

  void run() {
    for (Boid b : boids) {
      b.run(boids);  // Passing the entire list of boids to each boid individually
    }
  }

  void addBoid(Boid b) {
    boids.add(b);
  }

}