PImage img;

void setup(){
 size(900,900);
 img = loadImage("1.jpg");
 img.resize(width, 0);
 img.filter(GRAY);
}

void draw(){
  image(img,0,0);
}
