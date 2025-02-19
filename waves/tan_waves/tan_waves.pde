void setup() {
  size(1000, 500);
  fill(#FFFF00);
  rectMode(CENTER);
}

void draw() {
  background(0);
  translate(width/2, height/2);

  float deg = radians(frameCount);
  float wave = tan(deg) * 50;
  rect(wave, 0, 15, 400);
}
