void setup() {
  size(900, 900);
}
void draw() {
  background(0);
  fill(#f1f1f1);
  rectMode(CENTER);
  noStroke();
  float menge = int(1 + mouseX * 0.1);
  float abstand = width / menge; 
  translate(abstand/2, abstand/2);
  for (float x = 0; x < menge; x++) { 
    for (float y = 0; y < menge; y++) { 
      float posX = x*abstand;
      float posY = y*abstand;
      float w = abstand;
      float h = abstand;
      if (random(1) < 0.5) {
        ellipse(posX, posY, w, h);
      } else {
        if (random(1) < 0.5) { 
          float mag = w/2;
          float x1 = 0;
          float y1 = -mag;
          float x2 = mag;
          float y2 = mag;
          float x3 = -mag;
          float y3 = mag;
          pushMatrix();
          translate(posX, posY);
          triangle(x1, y1, x2, y2, x3, y3);
          popMatrix();
        } else {
          pushMatrix();
          translate(posX, posY);
          rect(0,0, w, h);
          popMatrix();
        }
      }
    }
  }
}
