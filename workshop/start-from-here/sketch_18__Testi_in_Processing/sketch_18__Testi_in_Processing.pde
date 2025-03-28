/*
    Workshop ISIA: Processing e il Generative Design per l'Editoria
    con / with Federico Pepe
    a cura di / curated by Valentina Rachiele
    per II anno Editoria / for 2nd year Publishing
    24-28 Marzo 2025

    Testi in Processing
*/

String testo = "Questo è il testo";

void setup() {
  size(500, 500);
  fill(0);
  // ALLINEAMENTO ORIZZONTALE (x)
  textAlign(LEFT);
  text(testo, width/2, height/2);
  textAlign(CENTER);
  text(testo, width/2, height/2 + 50);
  textAlign(RIGHT);
  text(testo, width/2, height/2 + 100);
  line(width/2, 0, width/2, height);
  // ALLINEAMENTO VERTICALE (y);
  textAlign(CENTER, TOP);
  line(0, 50, width, 50);
  text(testo, width/2, 50);
  textAlign(CENTER, CENTER);
  line(0, 100, width, 100);
  text(testo, width/2, 100);
  textAlign(CENTER, BOTTOM);
  line(0, 150, width, 150);
  text(testo, width/2, 150);
  
}

void draw() {
  
}
