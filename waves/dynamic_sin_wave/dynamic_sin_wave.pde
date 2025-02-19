void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  float els = 20;
  float elw = width/els;
  float step = 360/els;
  push();
  translate(elw/2, height/2);
  fill(#f1f1f1);
  float mag = height*0.3;
  float s = 50;
  noStroke();

  for (int i = 0; i < els; i++) {
    push();
    float wave;
    
    wave = map(sin(radians(frameCount*4 + i*20)), -1, 1, -mag, mag);

    translate(i*elw, wave);
    ellipse(0, 0, s, s);
    pop();
  }
  pop();

}
