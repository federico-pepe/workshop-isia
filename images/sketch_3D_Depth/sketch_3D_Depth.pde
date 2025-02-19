PImage source;

void setup() {
  size(900, 900, P3D);

  source = loadImage("1.jpg");

  // Set the amount of tiles
  source.resize(100, 100);
}

void draw() {
  background(#f1f1f1);
  noStroke();

  // Calculate the width and the height of a single tile
  float tileW = width / source.width;
  float tileH = height / source.height;

  translate(width/2, height/2);

  float rotationY = map(mouseX, 0, width, 0, 360);
  rotateY(radians(rotationY));

  for (int x = 0; x < source.width; x++) {
    for (int y = 0; y < source.height; y++) {

      // get the color from the current pixel
      color c = source.get(x, y);

      // calculate the brightness
      float b = brightness(c);

      // calculate the scalar
      float scalar = map(b, 0, 255, 1, 0);

      // set the fill color to black
      fill(0);

      push();
      // pull the visual to the center
      translate(-width/2, -height/2);

      float depth = 100;

      // calculate the z-position based on the brightness
      float z = map(b, 0, 255, -depth, depth);

      push();
      translate(x*tileW, y*tileH, z);

      // draw a box (also called "voxel")
      box(tileW*scalar, tileH*scalar, tileW);
      pop();

      pop();
    }
  }
}
