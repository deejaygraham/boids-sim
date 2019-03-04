class Flock {
  ArrayList<Boid> boids; // An ArrayList for all the boids

  Flock(int flockSize){
    boids = new ArrayList<Boid>(); // Initialize the ArrayList
    
    for (int i = 0; i < flockSize; i++) {
      float randomX = random(width);
      float randomY = random(height);
      addBoid(new Boid(randomX, randomY));
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