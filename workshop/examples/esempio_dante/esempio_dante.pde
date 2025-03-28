/*
    Workshop ISIA: Processing e il Generative Design per l'Editoria
    con / with Federico Pepe
    a cura di / curated by Valentina Rachiele
    per II anno Editoria / for 2nd year Publishing
    24-28 Marzo 2025

    Esempio: Dante
*/

PImage img;
PFont font;

int rows = 100;
int cols = 100;

int grid = rows*cols;

float rowsH;
float colsW;

void setup() {
  size(900, 900);
  pixelDensity(2);
  background(0);
  font = createFont("HelveticaNeue", 16);
  textFont(font);
  
  img = loadImage("Portrait_de_Dante.jpg");
  imageMode(CENTER);
  img.resize(width, 0);
  
  String text = join(loadStrings("divina_commedia.txt"), " ");
  //print(text);

  colsW = width/cols;
  rowsH = height/cols;
  stroke(255);
  for (int i = 0; i < grid; i++) {
    
    int row = i / rows;
    int column = i % cols;

    float x = colsW * column;
    float y = rowsH * row;
    int loc = round(x+y*img.width);
    color c = img.pixels[loc];
    //fill(255);
    //rect(x, y, colsW, rowsH);
    fill(c);
    textAlign(CENTER, CENTER);
    text(text.charAt(i), x + colsW/2, y+rowsH/2);
  }
}

void draw() {
}
