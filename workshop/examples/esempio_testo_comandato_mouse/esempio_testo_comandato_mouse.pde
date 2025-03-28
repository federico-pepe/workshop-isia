/*
    Workshop ISIA: Processing e il Generative Design per l'Editoria
    con / with Federico Pepe
    a cura di / curated by Valentina Rachiele
    per II anno Editoria / for 2nd year Publishing
    24-28 Marzo 2025

    Esempio: testo comandato dal mouse
*/

float x = 0, y = 0;
float stepSize = 5.0;

PFont font;
String testo;

int fontSizeMin = 3;
int counter = 0;

void setup() {
  size(500, 500);
  background(255);

  font = createFont("American Typewriter",10);
  testo = join(loadStrings("lipsum.txt"), " ");
  textFont(font,fontSizeMin);
  textAlign(LEFT);
  fill(0);
}


void draw() {
  if (mousePressed) {
    float d = dist(x,y, mouseX,mouseY);
    textFont(font,fontSizeMin+d/2);
    char c = testo.charAt(counter);
    stepSize = textWidth(c);

    if (d > stepSize) {
      float angle = atan2(mouseY-y, mouseX-x); 

      pushMatrix();
      translate(x, y);
      rotate(angle);
      text(c, 0, 0);
      popMatrix();

      counter++;
      if (counter > testo.length()-1) {
        counter = 0;
      }

      x = x + cos(angle) * stepSize;
      y = y + sin(angle) * stepSize; 
    }
  }
}


void mousePressed() {
  x = mouseX;
  y = mouseY;
}

void keyReleased() {
  if (key == 's' || key == 'S') saveFrame("#####.png");
  if (key == DELETE || key == BACKSPACE) background(255);
}
