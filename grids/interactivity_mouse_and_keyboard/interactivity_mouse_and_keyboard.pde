int[][] state;
int x = 0, y = 0;
int a = 8;


void setup() {
  size(500, 500, P2D);
  state = new int[a][a];
  for (int x = 0; x < a; x++) {
    for (int y = 0; y < a; y++) {
      state[x][y] = 0;
    }
  }
}


void draw() {
  background(#f1f1f1);
  int tileW = width/a;
  int tileH = height/a;
  noStroke();
  fill(#00ff00);
  push();
  translate(x*tileW, y*tileH);
  rect(0, 0, tileW, tileH);
  pop();

  fill(0);

  for (int x = 0; x < a; x++) {
    for (int y = 0; y < a; y++) {
      int val = state[x][y];
      push();
      translate(x*tileW, y*tileH);
      rect(0, 0, tileW, val*2);
      pop();
    }
  }
}

void keyReleased() {
  if (keyCode == 37) {
    if (x > 0) {
      x--;
    }
  }
  if (keyCode == 39) {
    if (x < a-1) {
      x++;
    }
  }
  if (keyCode == 38) {
    if (y > 0) {
      y--;
    }
  }
  if (keyCode == 40) {
    if (y < a-1) {
      y++;
    }
  }

  if (keyCode == 32) {
    if (state[x][y] < a) {
      state[x][y]+=4;
    } else {
      state[x][y] = 0;
    }
  }
}
