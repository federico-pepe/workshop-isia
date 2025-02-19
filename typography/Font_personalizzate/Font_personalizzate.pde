// Font personalizzate
// Federico Pepe
PFont font;

void setup() {
  size(500, 200);
  // Rimuovi il commento per vedere l'elenco delle font installate.
  //String[] fontList = PFont.list();
  //printArray(fontList);
  
  font = createFont("HelveticaNeue", 28);
  textFont(font);
  fill(0);
  text("Questo è un testo con una font diversa", 10, height/2);
}

void draw() {
}
