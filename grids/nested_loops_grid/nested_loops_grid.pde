void setup() {
  size(900, 900);
}

void draw() {
  
  background(0);
  noStroke();
  fill(#f1f1f1);

  float tilesX = mouseX/10;
  float tilesY = mouseY/10;

  float tileW = width/tilesX;
  float tileH = height/tilesY;
  
  translate(tileW/2,tileH/2);
  
  for (int x = 0; x < tilesX; x++) {
    for (int y = 0; y < tilesY; y++) {
      ellipse(x*tileW,y*tileH,tileW,tileH); 
    }
  }
}
