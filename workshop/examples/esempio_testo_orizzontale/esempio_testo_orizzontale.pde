/*
    Workshop ISIA: Processing e il Generative Design per l'Editoria
    con / with Federico Pepe
    a cura di / curated by Valentina Rachiele
    per II anno Editoria / for 2nd year Publishing
    24-28 Marzo 2025

    Esempio: testo scrittura orizzontale
*/

PFont font;
String testo = "Workshop di Generative Design per l'editoria di Federico Pepe all'ISIA di Urbino, che figata, è a marzo 2025";
String fontArray[];
int i = 0;
int z = 0;

void setup() {
  size(500, 500);
  // Stampo elenco font
  fontArray = font.list();
  frameRate(10);
}

void draw() {
  //background(255);
  /*
  if(frameCount % 100 == 0) {
    background(255);
  }
  */
  //background(255);
  if(i >= fontArray.length - 1) {
    i = 0;
  }
  font = createFont(fontArray[i], 20);
  textFont(font);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(80);
  i++;
  //println(textWidth(testo));
  text(testo.charAt(z), 0 + 30*frameCount, height/2);
  if(z < testo.length()-1) {
    z++;
  } else {
    z = 0;
  }
  
}
