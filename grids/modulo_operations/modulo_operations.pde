boolean switchColors = false;

color white = #f1f1f1;
color black = 0;

color fg, bg;
float tilesX;
void setup() {
  size(900, 900);
  switchColors = !switchColors;
  tilesX = int(random(3, random(30)));
}

void draw() {
  if (frameCount % 30 == 0) {
    switchColors = !switchColors;
    tilesX = int(random(3, 20));
  }

  if (switchColors == true) {
    fg = black;
    bg = white;
  } else {
    fg = white;
    bg = black;
  }

  background(bg);
  fill(fg);
  noStroke();

  int counter = 0;
  float tilesY = tilesX;
  float tileW = width/tilesX;
  float tileH = height/tilesY;

  translate(tileW/2, tileH/2);

  rectMode(CENTER);

  for (int x = 0; x < tilesX; x++) {
    for (int y = 0; y < tilesY; y++) {

      if (counter % 7 == 0) {
        push();
        translate(x*tileW, y*tileH);
        ellipse(0, 0, tileW/2, tileH/2);
        pop();
      }
      if (counter % 6 == 0) {
        push();
        translate(x*tileW, y*tileH);
        rotate(radians(frameCount*2));
        rect(0, 0, tileW*4, tileH/8);
        pop();
      }

      counter++;
    }
  }
}
