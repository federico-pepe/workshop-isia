int mouseOverX, mouseOverY;

boolean[][] state;

float tileW, tileH;
int tilesX, tilesY;

void setup() {
  size(900, 900);

  tilesX = 10;
  tilesY = 10;
  tileW = width / tilesX;
  tileH = height / tilesY;

  state = new boolean[tilesX][tilesY];

  for (int x = 0; x < tilesX; x++) {
    for (int y = 0; y < tilesY; y++) {
      state[x][y] = false;
    }
  }
}

void draw() {

  background(0);

  mouseOverX = int(map(mouseX, 0, width, 0, tilesX));
  mouseOverY = int(map(mouseY, 0, height, 0, tilesY));
  
  println(mouseOverX);

  ellipseMode(CORNER);
  noStroke();
  for (int x = 0; x < tilesX; x++) {
    for (int y = 0; y < tilesY; y++) {

      if (
        mouseOverX == x && 
        mouseOverY == y        
        ) {
        fill(#00FF00);
      } else {
        fill(#F1F1F1);
      }

      if (state[x][y] == false) {
        rect(x*tileW, y*tileH, tileW, tileH);
      } else {
        ellipse(x*tileW, y*tileH, tileW, tileH);
      }
    }
  }
}

void mouseReleased() {
  state[mouseOverX][mouseOverY] = !state[mouseOverX][mouseOverY];
}
