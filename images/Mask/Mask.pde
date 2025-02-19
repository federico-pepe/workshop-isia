PImage img;
PGraphics mask;

void setup() {
  size(500, 500);
  img = loadImage("1.jpg");
  img.resize(width, 0);
  img.filter(GRAY);
  mask = createGraphics(img.width, img.height);
}

void draw() {
  background(0);
  mask.beginDraw();
  mask.background(0);
  mask.fill(#FFFFFF);
  mask.noStroke();
  mask.translate(width/2, height/2);
  mask.rectMode(CENTER);
  mask.rotate(radians(frameCount * 4));
  mask.rect(0, 0, width, 100);
  mask.endDraw();
  img.mask(mask);
  image(img, 0, 0);
}
