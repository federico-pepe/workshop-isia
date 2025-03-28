/*
    Workshop ISIA: Processing e il Generative Design per l'Editoria
    con / with Federico Pepe
    a cura di / curated by Valentina Rachiele
    per II anno Editoria / for 2nd year Publishing
    24-28 Marzo 2025

    Loop while e for
*/
int y = 10;

void setup() {
  size(500, 500);
  pixelDensity(2);
  background(0);
  stroke(255);
  
}

void draw() {
  background(0);
  for(int x = 10; x < width; x += 10) {
    for(int y = 10; y < height; y+=10) {
      if(random(1) < 0.8) {
        noStroke();
        noFill();
      } else {
        fill(255);
      }
      ellipse(x, y, 5, 5);
    }
  }
}

void mousePressed() {
  saveFrame("####.png");
}
