/*
    Workshop ISIA: Processing e il Generative Design per l'Editoria
    con / with Federico Pepe
    a cura di / curated by Valentina Rachiele
    per II anno Editoria / for 2nd year Publishing
    24-28 Marzo 2025

    Random
*/

float cerchio;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  // random(valore) => 0 ... valore
  // random(10, 50) => 10 - 50
  ellipse(random(width), random(height), cerchio, cerchio);
  cerchio = random(10, 50);
  println(cerchio);
}

void mousePressed() {
  background(0);
}
