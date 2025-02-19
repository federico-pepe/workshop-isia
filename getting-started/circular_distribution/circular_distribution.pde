void setup() {
  size(900, 900);
}

void draw() {

  background( #000000);
  noStroke();
  rectMode(CENTER);

  float elements = int(1+mouseX*0.1);
  float step = 360/elements;

  translate(width/2, height/2);

  for (int i = 0; i < elements; i++) {
    fill( #f1f1f1);
    push();
    rotate(radians(i*step));
    ellipse(0, 300, 70, 70);
    pop();
  }
}
