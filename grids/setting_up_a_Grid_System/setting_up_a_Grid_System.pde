void setup() {
  size(1200, 900);
}

void draw() {
  background(#f1f1f1);
  strokeWeight(3);
  float tilesX = 10;
  float tilesY = 10;
  float tileW = width / tilesX;
  float tileH = height / tilesY;
  
  for (int x = 0; x < tilesX; x++) {
    for (int y = 0; y < tilesY; y++) {
      rect(x*tileW, y*tileH, tileW, tileH);
    }
  }
}
