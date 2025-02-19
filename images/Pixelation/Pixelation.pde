color bg = 0;
color fg = #f1f1f1;

int tilesX = 30;
int tilesY = tilesX;

PImage img;

void setup() {
  size(900, 900);
  img = loadImage("1.jpg");
  img.resize(tilesX,tilesY);
}

void draw() {
  background(0);
  fill(fg);
  noStroke();

  float tileW = width / tilesX;
  float tileH = height / tilesY;

  for (int x = 0; x < tilesX; x++) {
    for (int y = 0; y < tilesY; y++) {

      color c = img.get(x,y);
      float b = brightness(c);
      fill(b);

      rect(x * tileW, y * tileH, tileW, tileH);
    }
  }
}
