/*
    Workshop ISIA: Processing e il Generative Design per l'Editoria
    con / with Federico Pepe
    a cura di / curated by Valentina Rachiele
    per II anno Editoria / for 2nd year Publishing
    24-28 Marzo 2025

    Blocchi di codice e flusso del programma
*/


// Viene eseguito 1 sola volta all'avvio del programma
void setup() {
  size(500, 700);
  background(0);
  //stroke(255, 100);
}
// Viene eseguito in loop all'infinito a 60fps
void draw() {
  //line(pmouseX, pmouseY, mouseX, mouseY);
  ellipse(random(width), random(height), 100, 100);
}

void mousePressed() {
  background(0);
}
