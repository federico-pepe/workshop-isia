/*
    Workshop ISIA: Processing e il Generative Design per l'Editoria
    con / with Federico Pepe
    a cura di / curated by Valentina Rachiele
    per II anno Editoria / for 2nd year Publishing
    24-28 Marzo 2025

    Controlli condizionali
*/


void setup() {
  size(500, 500);
  stroke(255);
}

void draw() {
  if(mouseX >= (width/3)*2) {
    background(255, 0, 0);
  } else if(mouseX >= width/3) {
    background(0, 255, 0);
  }
  else {
    background(0, 0, 255);
  }
  line(width/3, 0, width/3, height);
  line((width/3)*2, 0, (width/3)*2, height);
}
