void setup() {
  size(800, 800);
}

void draw() {
  
  float bg = map(sin(radians(frameCount)),-1,1,0,255);
  float fg = map(sin(radians(frameCount)),-1,1,255,0);
  
  background(bg);
  fill(fg);
  noStroke();
  
  translate(width/2, 0);
  
  float h = height / 3;

  float wave1 = sin(radians(frameCount)) * width/2;
  rect(wave1, 0, 25, h);

  float wave2 = map(sin(radians(frameCount)), -1, 1, 0, 200);
  rect(wave2, h, 25, h);

  float wave3 = map(sin(radians(frameCount)), -1, 1, -width/2, 0);
  rect(wave3, h *2, 25, h);
  
}
