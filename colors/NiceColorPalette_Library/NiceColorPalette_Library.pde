// Esempio su come usare la libreria "Nice Color Palette"
// Federico Pepe

// Importa la libreria
import nice.palettes.*;
// Creo l'oggetto di nome "palette"
ColorPalette palette;

void setup() {
  size(500, 500);
  noStroke();
  // Inizializzo l'oggetto
  palette = new ColorPalette(this);
  // Ottengo una palette in modo casuale
  palette.getPalette();
  // Disegno lo schermo
  drawPalette();

}

void draw() {
}
// Funzione per ridisegnare la palette
void drawPalette() {
  for(int i = 0; i < 5; i++) {
    fill(palette.colors[i]);
    rect(i * width/5, 0, width/5, height);
  }
}
// Ogni volta che premo il mouse ottengo una palette diversa e ridisegno lo schermo. 
// Il numero della palette viene mostrato in console.
void mousePressed() {
  int random = round(random(100));
  
  palette.getPalette(random);
  
  println("Current Palette: "+random);
  
  drawPalette();
  
}
