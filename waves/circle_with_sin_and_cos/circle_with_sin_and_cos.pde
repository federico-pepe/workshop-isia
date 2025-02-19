void setup(){
 size(500, 500);
 background(0);
}

void draw(){
  fill(#F1F1F1);
  noStroke();
  translate(width/2,height/2);
  
  float waveX = sin(radians(frameCount)) * height * 0.4;
  float waveY = cos(radians(frameCount)) * height * 0.4;
  
  ellipse(waveX,waveY, 5, 5);
}
