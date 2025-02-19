PImage img;
color[] colors;

int tilesX = 50;
int tilesY = 50;

void setup() {
  size(500, 500);
  img = loadImage("1.jpg");
  img.resize(tilesX, tilesY);
  pixelDensity(2);
  colors = new color[3];
  colors[2] = #000000;
  colors[1] = #CCCCCC;
  colors[0] = #0000ff;
}

void draw() {
  background(0);
  noStroke();

  float tileW = width/tilesX;
  float tileH = height/tilesY;

  for (int x = 0; x < tilesX; x++) {
    for (int y = 0; y < tilesY; y++) {

      color c = img.get(x, y);
      float b = brightness(c);
      int selector = int(map(b, 0, 255, 0, colors.length - 1));

      fill(colors[selector]);
      rect(x*tileW, y*tileH, tileW, tileH);
    }
  }
}
