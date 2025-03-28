/*
    Workshop ISIA: Processing e il Generative Design per l'Editoria
    con / with Federico Pepe
    a cura di / curated by Valentina Rachiele
    per II anno Editoria / for 2nd year Publishing
    24-28 Marzo 2025

    Esempio: Testo animato con cambio font
*/

PFont font;
String testo = "Questo è il testo";
String fontArray[];

void setup() {
  size(500, 500);
  // Stampo elenco font
  fontArray = font.list();
  
}
int i = 0;
void draw() {
  if(frameCount % 100 == 0) {
    background(255);
  }
  //background(255);
  if(i >= fontArray.length - 1) {
    i = 0;
  }
  font = createFont(fontArray[i], 20);
  textFont(font);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(20);
  i++;
  //println(textWidth(testo));
  text(testo, random(width), random(height));
}
