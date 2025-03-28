/*
    Workshop ISIA: Processing e il Generative Design per l'Editoria
    con / with Federico Pepe
    a cura di / curated by Valentina Rachiele
    per II anno Editoria / for 2nd year Publishing
    24-28 Marzo 2025

    Libreria Nice Color Palettes
*/

// Import the library
import nice.palettes.*;

// Declare the main ColorPalette object
ColorPalette palette;

int contatore = 0;

void setup() {
  // Initialize it, passing a reference to the current PApplet
  palette = new ColorPalette(this);
  //palette.refresh(100);
  size(500, 500);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  palette.getPalette(contatore);
  createPalette();
}

void draw() {
}

void mousePressed() {
  if(contatore >= palette.getPaletteCount() - 1) {
    contatore = 0;
  } else {
    contatore++;
  }
  palette.getPalette(contatore);
  createPalette();
}

void keyPressed() {
  if (key == 's') {
    saveFrame("####.png");
  }
}

void createPalette() {
  background(255);
  for (int i = 0; i < 5; i++) {
    //println("#"+hex(palette[i], 6));
    //println(palette.colors.length + " i: " + i);
    if (i < palette.colors.length) {
      fill(palette.colors[i]);
    }
    rect(i * width/5, 0, width/5, height - 100);
    fill(0);
    textAlign(CENTER);
    text(contatore, i*width/5+(width/10), height - 50);
  }
}
