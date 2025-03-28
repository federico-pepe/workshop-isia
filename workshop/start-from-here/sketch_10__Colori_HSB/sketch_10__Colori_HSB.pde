/*
    Workshop ISIA: Processing e il Generative Design per l'Editoria
    con / with Federico Pepe
    a cura di / curated by Valentina Rachiele
    per II anno Editoria / for 2nd year Publishing
    24-28 Marzo 2025

    Colori HSB
*/

void setup() {
  size(500, 500);
  // RGB = Red, Green and Blue
  // HSB = Hue, Saturation and Brightness
  colorMode(HSB, width, 100, height);
  /*
  noStroke();
  for(int i = 0; i < 360; i++) {
    fill(i, 100, 100);
    rect(i*2, 0, 2, height);
  }
  */
}

void draw() {
  background(mouseX, 100, mouseY);
}
