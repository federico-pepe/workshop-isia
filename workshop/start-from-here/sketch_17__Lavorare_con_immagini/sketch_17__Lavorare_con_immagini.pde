/*
    Workshop ISIA: Processing e il Generative Design per l'Editoria
    con / with Federico Pepe
    a cura di / curated by Valentina Rachiele
    per II anno Editoria / for 2nd year Publishing
    24-28 Marzo 2025

    Lavorare con immagini
*/
PImage img;

int cols = 50;
int rows = 50;

void setup() {
  size(500, 500);
  noStroke();
  img = loadImage("image.jpg");
  imageMode(CENTER);
  img.resize(width, 0);
  //image(img, width/2, height/2);
  float colsW = width/cols;
  float rowsH = height/rows;
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {
      color c = img.get(round(x*colsW), round(y*rowsH));
      float b = brightness(c);
      if(b > 127) {
       fill(255);
       } else {
       fill(0);
       }
      fill(c);
      //text("a", x*colsW, y*rowsH);
      rect(x*colsW, y*rowsH, colsW, rowsH);
    }
  }
}

void draw() {
}
