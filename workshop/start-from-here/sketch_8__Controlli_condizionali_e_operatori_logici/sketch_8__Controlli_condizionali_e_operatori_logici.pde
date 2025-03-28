/*
    Workshop ISIA: Processing e il Generative Design per l'Editoria
    con / with Federico Pepe
    a cura di / curated by Valentina Rachiele
    per II anno Editoria / for 2nd year Publishing
    24-28 Marzo 2025

    Controlli condizionali e operatori logici
*/

void setup() {
  size(500, 500);
  stroke(255);
  background(0);
  fill(255);
}

void draw() {
  background(0);
  if(mouseX < width/2 && mouseY < height/2) {
    rect(0, 0, width/2, height/2);
  } else if(mouseX > width/2 && mouseY < height/2) {
    rect(width/2, 0, width/2, height/2);
  } else if(mouseX < width/2 && mouseY > height/2) {
    rect(0, height/2, width/2, height/2);
  } else {
    rect(width/2, height/2, width/2, height/2);
  }
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
}
