/*
    Workshop ISIA: Processing e il Generative Design per l'Editoria
    con / with Federico Pepe
    a cura di / curated by Valentina Rachiele
    per II anno Editoria / for 2nd year Publishing
    24-28 Marzo 2025

    Translate e rotate
*/
float t = 0;

void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  push();
  rotate(t);
  rect(0, 0, 100, 100);
  pop();
  rotate(-t);
  translate(-100, -100);
  rotate(-t*5);
  rect(0, 0, 50, 50);
  t += 0.01;
}
