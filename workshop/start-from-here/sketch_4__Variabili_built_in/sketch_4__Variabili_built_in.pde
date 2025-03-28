/*
    Workshop ISIA: Processing e il Generative Design per l'Editoria
    con / with Federico Pepe
    a cura di / curated by Valentina Rachiele
    per II anno Editoria / for 2nd year Publishing
    24-28 Marzo 2025

    Variabili built-in
*/


void setup() {
  // Imposto la grandezza della finestra a 700x700px
  size(700, 700);
  // Imposto colore di riempimento ed elimino il bordo
  noStroke();
  fill(255, 0, 0, 100);
  // Disegno un cerchio di diametro 100px al centro
  // della finestra utilizzando l'hard-coding
  ellipse(250, 250, 100, 100);
  // Disegno un cerchio di diametro 150px al centro
  // della finestra utilizzando due variabili built-in
  ellipse(width/2, height/2, 150, 150);
}
