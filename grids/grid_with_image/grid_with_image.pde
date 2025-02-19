PImage img;

void setup() {
  size(900, 900);
  frameRate(1);
  ellipseMode(CORNER);
  img = loadImage("1.jpg");
  img.resize(width, height);
}

void draw() {
  background(0);
  fill(#f1f1f1);
  noStroke();

  float tilesX = 3;
  float tilesY = 3;

  float tileW = width / tilesX;
  float tileH = height / tilesY;

  for (int x = 0; x < tilesX; x++) {
    for (int y = 0; y < tilesY; y++) {


      int selector = int(random(4));

      if (selector == 0) {
        push();
        translate(x * tileW, y * tileH);
        fill(#F1F1F1);
        rect(0, 0, tileW, tileH);
        pop();
      } else if (selector == 1) {

        int sx = int(x * tileW);
        int sy = int(y * tileH);
        int sw = int(tileW);
        int sh = int(tileH);

        int dx = sx;
        int dy = sy;
        int dw = sw;
        int dh = sh;

        copy(img, sx, sy, sw, sh, dx, dy, dw, dh);
      } else if  (selector == 2) {
        fill(#FFFF00);
        push();
        translate(x * tileW, y * tileH);
        ellipse(0, 0, tileW, tileH);
        pop();
      }
    }
  }
}
