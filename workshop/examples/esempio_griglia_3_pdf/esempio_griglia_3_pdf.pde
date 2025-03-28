/*
    Workshop ISIA: Processing e il Generative Design per l'Editoria
    con / with Federico Pepe
    a cura di / curated by Valentina Rachiele
    per II anno Editoria / for 2nd year Publishing
    24-28 Marzo 2025

    Esempio griglia con esportazione PDF
*/
// Import the library
import nice.palettes.*;
import processing.pdf.*;

// Declare the main ColorPalette object
ColorPalette palette;

int rows = 5;
int cols = 5;

int m = 50;

color primary;
color secondary;

int r[] = {0, 90, 180, 270};

float rowsH;
float colsW;

int c = 0;

void setup() {
  palette = new ColorPalette(this);
  
  size(500, 500);
  drawGrid();
  
}

void mousePressed() {
  beginRecord(PDF, "esportazione-####.pdf");
  drawGrid();
  endRecord();
}

void drawGrid() {
  //palette.getPalette(round(random(99)));
  palette.getPalette(c);
  c++;
  primary = palette.colors[0];
  secondary = palette.colors[1];
  background(primary);
  //cols = round(map(mouseX, 0, width, 1, 10));
  //rows = round(map(mouseY, 0, height, 1, 10));
  // Calcolo la larghezza della singola colonna
  // facendo la larghezza della finestra / n. di colonne
  colsW = (width-(m*2))/cols;
  rowsH = (height-(m*2))/rows;
  noStroke();
  for(int x = 0; x < cols; x++) {
    for(int y = 0; y < rows; y++) {
      push();
      translate(x*colsW+m+colsW/2, y*rowsH+m+rowsH/2);
      int rot = r[round(random(r.length-1))];
      rotate(round(radians(rot)));
      //line(0, 0, 0, rowsH);
      strokeWeight(2);
      stroke(palette.colors[round(random(palette.colors.length-1))]);
      noFill();
      arc(0, 0, colsW, rowsH,  0, radians(random(360)));
      /*
      rect(0, 0, colsW, rowsH);
      if(random(1) < 0.4) {
      fill(palette.colors[round(random(palette.colors.length-1))]);
      
      ellipseMode(CORNER);
      ellipse(0, 0, colsW, rowsH);
      
      }*/

      pop();
      //rect(x*colsW+m, y*rowsH+m, colsW, rowsH);
    }
  }
}

void keyPressed() {
  if(key == 's') {
    endRecord();
    exit();
  }
}

void draw() {
  
}
