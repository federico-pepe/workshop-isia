/*
 * Create a palette of 5 random colours with a techniques explained
 * here https://twitter.com/usefulslug/status/1265604318016811011
 *
*/

color palette[] = new color[5];

void setup() {
  size(540, 540);

  colorMode(HSB, 360, 100, 100);

  noStroke();

  createPalette();
  drawPalette();
}

void draw() {
}

void mousePressed() {
  background(0);
  createPalette();
  drawPalette();
}

void keyPressed() {
  if(key == 's') {
    saveFrame("######-palette.png");
  }
}

void createPalette() {
  int hue = round(random(360));
  int r1  = round(random(180));
  palette[0] = color(hue - (r1*2), round(random(100)), round(random(100)));
  palette[1] = color(hue - r1, round(random(100)), round(random(100)));
  palette[2] = color(hue, round(random(100)), round(random(100)));
  palette[3] = color(hue + r1, round(random(100)), round(random(100)));
  palette[4] = color(hue + (r1*2), round(random(100)), round(random(100)));

  println("#" + hex(palette[0], 6), 
    "#" + hex(palette[1], 6), 
    "#" + hex(palette[2], 6), 
    "#" + hex(palette[3], 6), 
    "#" + hex(palette[4], 6));

}

void drawPalette() {
  fill(palette[0]);
  rect(0, 0, width/5, height);
  fill(palette[1]);
  rect(width/5, 0, width/5, height);
  fill(palette[2]);
  rect(width/5*2, 0, width/5, height);
  fill(palette[3]);
  rect(width/5*3, 0, width/5, height);
  fill(palette[4]);
  rect(width/5*4, 0, width/5, height);
}
