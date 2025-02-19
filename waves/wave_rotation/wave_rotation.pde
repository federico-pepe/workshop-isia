void setup() {
  size(1920, 1080); 
  rectMode(CENTER);
}

void draw() {
  background(0);
  fill(#F1F1F1);
  
  float wave = sin(radians(frameCount)) * 180;

  push();
  translate(width/2, height/2);
  rotate(radians(wave));
  rect(0,0,100,900);
  pop();
}
