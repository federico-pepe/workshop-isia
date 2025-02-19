PFont helvetica;

void setup() {
  size(900, 900);
  helvetica = createFont("HelveticaNeue",1000);
}

String quote = "The quick brown fox jumps over the lazy dog";

void draw() {
  background(#f1f1f1);
  fill(0);
  textFont(helvetica);
  textSize(100);
  textAlign(LEFT,TOP);
  fill(0);
  text(quote,0,0,mouseX,height);
  noFill();
  stroke(#ff0000);
  strokeWeight(5);
  rect(0,0,mouseX,height);
}
