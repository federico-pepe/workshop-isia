/*
    Workshop ISIA: Processing e il Generative Design per l'Editoria
    con / with Federico Pepe
    a cura di / curated by Valentina Rachiele
    per II anno Editoria / for 2nd year Publishing
    24-28 Marzo 2025

    Esempio ispirato a Georg Ness
*/

int b = 50;
float r = 0;
void setup() {
  colorMode(HSB, height - b*2, 100, 100);
  size(500, 700);
  noFill();
  for (int x = b; x < height - b; x += 20) {
    for (int y = b; y < width - b; y += 20) {
      push();
      translate(y, x);
      rotate(r * random(-1, 1));
      stroke(x, 100, 100);
      rect(0, 0, 20, 20);
      pop();
    }
    r += 0.05;
  }
}

void draw() {
}
