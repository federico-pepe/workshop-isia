PImage img;

int tilesX = 50;
int tilesY = 50;

void setup() {
  size(500, 500);
  img = loadImage("1.jpg");
  img.resize(tilesX, tilesY);
}

void draw() {
  background(0);


  float tileW = width/tilesX;
  float tileH = height/tilesY;
  noStroke();

  float wave = map(sin(radians(frameCount)), -1, 1, 0, 255);
  for (int x = 0; x < tilesX; x++) {
    for (int y = 0; y < tilesY; y++) {

      color c = img.get(x, y);
      float b = brightness(c);

      if (b < wave) {
        fill(0);
      } else {
        fill(#f1f1f1);
      }

      rect(x*tileW, y*tileH, tileW, tileH);
    }
  }
}
