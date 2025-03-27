// Import the library
import nice.palettes.*;

// Declare the main ColorPalette object
ColorPalette palette;

int rows = 5;
int cols = 5;

int m = 50;

color primary;
color secondary;

//int r[] = {0, 45, 90, 135, 180, 225, 270, 315};
//int r[] = {0, 90, 180, 270};

float rowsH;
float colsW;

void setup() {
  palette = new ColorPalette(this);
  
  size(500, 500);
  
  
}

void mousePressed() {
  //palette.getPalette(round(random(99)));
  palette.getPalette(20);
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
      translate(x*colsW+m, y*rowsH+m);
      //int rot = r[round(random(r.length-1))];
      //rotate(round(radians(rot)));
      //line(0, 0, 0, rowsH);
      fill(palette.colors[round(random(palette.colors.length-1))]);
      rect(0, 0, colsW, rowsH);
      if(random(1) < 0.4) {
      fill(palette.colors[round(random(palette.colors.length-1))]);
      
      ellipseMode(CORNER);
      ellipse(0, 0, colsW, rowsH);
      }

      pop();
      //rect(x*colsW+m, y*rowsH+m, colsW, rowsH);
    }
  }
}

void draw() {
  
}
