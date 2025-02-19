PImage img;

int tilesX = 50;
int tilesY = 50;

void setup() {
  size(500, 500);
  img = loadImage("1.jpg");
  img.resize(tilesX, 0);
}

void draw() {
  background(0); 

  float tileW = width/tilesX;
  float tileH = height/tilesY; 

  noStroke();
  ellipseMode(CORNER);
  
  for (int x = 0; x < tilesX; x++) {
    for (int y = 0; y < tilesY; y++) {

      color c = img.get(x, y);
      float b = brightness(c);

      float s = map(b, 0, 255, 0, 1);

      fill(#f1f1f1);

      ellipse(x*tileW, y*tileH, tileW*s, tileH*s);
    }
  }
}
