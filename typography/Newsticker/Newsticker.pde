String text1 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam mi odio, dignissim vel purus sed, tristique rhoncus erat. Nulla facilisi. Curabitur aliquet justo massa, ac imperdiet magna aliquet nec";
String text2 = "Phasellus nec nulla condimentum magna tristique euismod ut sit amet tellus. Praesent in ex sit amet nisl elementum viverra vitae nec eros.";
String text3 = "Etiam maximus urna turpis, ut commodo enim convallis in. Praesent euismod felis in sapien tristique, id luctus lorem elementum. Curabitur rutrum imperdiet orci, sed consequat metus.";

PFont mono;

void setup() {
  size(900, 900);
  mono = createFont("SpaceMono-Bold", 1000);
}

void draw() {
  background(#f1f1f1);
  fill(0);
  textFont(mono);

  float fontSize = 315;
  float lineHeight = fontSize * 0.9;

  textSize(fontSize);
  textAlign(LEFT, TOP);

  fill(0);
  text(text1.toUpperCase(), -frameCount, -80);

  fill(0);
  rect(0, height/3, width, height/3);
  
  fill(#f1f1f1);
  text(text2.toUpperCase(), -frameCount*2, -80+lineHeight);

  fill(0);
  text(text3.toUpperCase(), -frameCount*3, -80+lineHeight+lineHeight);
}
