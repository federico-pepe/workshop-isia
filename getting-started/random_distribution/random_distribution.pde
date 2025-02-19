void setup() {
  size(900, 900);
}

void draw() {
  background(0);
  for (int i = 0; i < 10; i++) {
    ellipse(random(width), random(height), 50, 50);
  }
}
