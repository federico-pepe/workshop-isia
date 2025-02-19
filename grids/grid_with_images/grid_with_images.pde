PImage[] imgs;


void setup() {
  size(900, 900);
  frameRate(1);
  ellipseMode(CORNER);
  imgs = new PImage[3];

  imgs[0] = loadImage("1.jpg");
  imgs[1] = loadImage("2.jpg");
  imgs[2] = loadImage("3.jpg");


  imgs[0].resize(width, height);
  imgs[1].resize(width, height);
  imgs[2].resize(width, height);
  
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

        int imgSelector = int(random(3));

        copy(imgs[imgSelector], sx, sy, sw, sh, dx, dy, dw, dh);
        
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
