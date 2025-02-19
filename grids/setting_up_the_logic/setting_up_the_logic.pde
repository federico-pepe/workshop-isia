float tilesX, tilesY, tileW, tileH;

void setup() {
  size(900, 900);
  tilesX = 3;
  tilesY = 3;
  tileW = width / tilesX;
  tileH = height / tilesY;
  frameRate(2);
}

void draw() {
  background(0);
  ellipseMode(CORNER);
  fill(#f1f1f1);
  noStroke();
  for (int x = 0; x < tilesX; x++) {
    for (int y = 0; y < tilesY; y++) {

      float r = random(1);

      if (r < 0.33) {
        rect(x*tileW, y*tileH, tileW, tileH);
      } else if (r < 0.66) {
        ellipse(x*tileW, y*tileH, tileW, tileH);
      } else {
        // do nothing!
      }
    }
  }
}
