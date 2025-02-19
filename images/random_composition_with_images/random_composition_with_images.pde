color bg = #f1f1f1;
color fg = #000000;
color accent = #0000ff;

float padding = 100;

void setup() {
  size(900, 900);
  strokeCap(RECT);
}

void draw() {

  int imgSelector = int(random(2));
  PImage img = loadImage(imgSelector + ".jpg");
  int imageSize = int(random(400, 500));
  img.resize(imageSize, 0);

  background(bg);

  // circle
  noStroke();
  fill(fg);

  float circleX = random(padding, width-padding);
  float circleY = random(padding, height-padding);
  float diameter = random(200, 600);
  circle(circleX, circleY, diameter);

  // image
  imageMode(CENTER);
  push();
  translate(random(padding, width-padding), random(padding, height-padding));
  image(img, 0, 0);
  pop();

  // line
  stroke(fg);

  strokeWeight(5);
  float lineX1 = random(padding, width-padding);
  float lineY1 = random(padding, height-padding);
  float lineX2 = random(padding, width-padding);
  float lineY2 = random(padding, height-padding);
  line(lineX1, lineY1, lineX2, lineY2);
}
