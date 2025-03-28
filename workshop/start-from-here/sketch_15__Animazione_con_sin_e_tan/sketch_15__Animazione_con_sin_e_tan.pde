/*
    Workshop ISIA: Processing e il Generative Design per l'Editoria
    con / with Federico Pepe
    a cura di / curated by Valentina Rachiele
    per II anno Editoria / for 2nd year Publishing
    24-28 Marzo 2025

    Animazione con sin e tan
*/

float x = 0;
void setup() {
  size(500, 500);
  rectMode(CENTER);
  frameRate(30);
}

void draw() {
  background(255);
  fill(255, 255, 0);
  translate(width/2, height/2);
  // sin() > accetta un valore di angolo in radians
  // e restituisce un valore compreso tra -1 e 1
  x = map(sin(radians(frameCount)), -1, 1, -width/2, width/2);
  // -1 e 1 => -100 e 100
  //println(x);
  rect(x, 0, 20, height - 100);
}
