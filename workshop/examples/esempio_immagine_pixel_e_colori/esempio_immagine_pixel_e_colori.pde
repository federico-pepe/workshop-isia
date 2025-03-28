/*
    Workshop ISIA: Processing e il Generative Design per l'Editoria
    con / with Federico Pepe
    a cura di / curated by Valentina Rachiele
    per II anno Editoria / for 2nd year Publishing
    24-28 Marzo 2025

    Esempio immagine pixelata con controllo colori
*/
// Import the library
import nice.palettes.*;
ColorPalette palette;
// Creo una variabile chiamata img di tipo PImage
PImage img;

int cols = 100;
int rows = 100;

int counter = 0;

void setup() {
  palette = new ColorPalette(this);
  palette.getPalette(5);
  size(500, 500);
  noStroke();
  img = loadImage("image.jpg");
  imageMode(CENTER);
  img.resize(width, 0);
  //image(img, width/2, height/2);
}

void draw() {
  background(255);
  if(counter > 99) {
    counter = 0;
  } 
  palette.getPalette(counter);
  float colsW = width/cols;
  float rowsH = height/rows;
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {
      color c = img.get(round(x*colsW), round(y*rowsH));
      float b = brightness(c);
      fill(palette.colors[round(map(b, 0, 255, 0, 2))]);
      /*
      if (b > 127) {
        fill(palette.colors[0]);
      } else {
        fill(palette.colors[1]);
      }
      */
      //text("a", x*colsW, y*rowsH);
      rect(x*colsW, y*rowsH, colsW, rowsH);
    }
  }
}

void mousePressed() {
  counter++;
}
