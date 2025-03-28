/*
    Workshop ISIA: Processing e il Generative Design per l'Editoria
    con / with Federico Pepe
    a cura di / curated by Valentina Rachiele
    per II anno Editoria / for 2nd year Publishing
    24-28 Marzo 2025

    Esempio: Griglia
*/

int rows = 20;
int cols = 20;

int m = 50;

int r[] = {0, 45, 90, 135, 180, 225, 270, 315};

float rowsH;
float colsW;

void setup() {
  size(500, 500);
  frameRate(5);
  background(255);
  //cols = round(map(mouseX, 0, width, 1, 10));
  //rows = round(map(mouseY, 0, height, 1, 10));
  // Calcolo la larghezza della singola colonna
  // facendo la larghezza della finestra / n. di colonne
  colsW = (width-(m*2))/cols;
  rowsH = (height-(m*2))/rows;
  
  for(int x = 0; x < cols; x++) {
    for(int y = 0; y < rows; y++) {
      push();
      translate(x*colsW+m, y*rowsH+m);
      int rot = r[round(random(r.length-1))];
      rotate(radians(rot));
      line(0, 0, 0, rowsH);
      pop();
      //rect(x*colsW+m, y*rowsH+m, colsW, rowsH);
    }
  }
}

void draw() {
  
}
