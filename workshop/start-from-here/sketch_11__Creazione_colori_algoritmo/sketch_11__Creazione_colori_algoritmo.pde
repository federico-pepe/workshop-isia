/*
    Workshop ISIA: Processing e il Generative Design per l'Editoria
    con / with Federico Pepe
    a cura di / curated by Valentina Rachiele
    per II anno Editoria / for 2nd year Publishing
    24-28 Marzo 2025

    Creazione colori algoritmo
*/

color palette[] = new color[5];

void setup() {
  size(500, 500);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  createPalette();
}

void draw() {
}

void mousePressed() {
  createPalette();
}

void keyPressed() {
  if (key == 's') {
    saveFrame("####.png");
  }
}

void createPalette() {
  background(255);
  int h = round(random(360));
  // primo colore
  palette[2] = color(h, random(100), random(100));
  // troviamo il 2 e 4 colore
  int r = round(random(180));
  palette[3] = color(h+r, random(100), random(100));
  palette[1] = color(h-r, random(100), random(100));
  // troviamo il 1 e il 5 colore
  palette[4] = color(h+(r*2), random(100), random(100));
  palette[0] = color(h-(r*2), random(100), random(100));
  // i < 5 è uguale a scrivere i <= 4? => SIIIIIIIII
  //println("Nuovi colori: ");
  for (int i = 0; i < 5; i++) {
    //println("#"+hex(palette[i], 6));
    fill(palette[i]);
    rect(i * width/5, 0, width/5, height - 100);

    fill(0);
    textAlign(CENTER);
    text("#"+hex(palette[i], 6), i*width/5+(width/10), height - 50);
  }
}
