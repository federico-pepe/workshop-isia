void setup() {
  size(900, 900);
}

void draw() {
  background(0);
  fill(#f1f1f1);
  noStroke();

  float amount = int(1+mouseX*0.1);
  float tileW = width/amount;

  translate(tileW/2, 0);

  for (int i = 0; i < amount; i++) {
    ellipse(i*tileW, height/2, tileW, tileW);
  }
}
