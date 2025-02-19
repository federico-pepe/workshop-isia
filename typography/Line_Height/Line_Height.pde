PFont helvetica;

void setup() {
  size(500, 500);
  helvetica = createFont("HelveticaNeue", 1000);
}

String quote = "The quick brown fox jumps over the lazy dog!";

void draw() {
  background(#f1f1f1);
  fill(0);
  textFont(helvetica);

  float fontSize = 100;
  float lineHeight = map(sin(radians(frameCount)*0.5), -1, 1, 0, 1);

  textSize(fontSize);
  textLeading(fontSize*lineHeight);
  textAlign(LEFT, TOP); 
  text(quote, 0, 0, width, height);
}
