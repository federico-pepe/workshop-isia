/*
    Workshop ISIA: Processing e il Generative Design per l'Editoria
    con / with Federico Pepe
    a cura di / curated by Valentina Rachiele
    per II anno Editoria / for 2nd year Publishing
    24-28 Marzo 2025

    Array
*/

// Creo un array "grande" 5 ma vuoto
int pluto[] = new int[5];
println(pluto);
// Creo un array e assegno subito dei valori
// facendo così non devo assegnare la grandezza
int pippo[] = { 1, 24, 54, 22, 43};
println(pippo);
// Uso .length per vedere quanti elementi contiene l'array
println("L'array contiene: " + pippo.length + " valori");

// Posso usare un ciclo for per riempire un array
// grande 500 slot con altrettanti valori casuali
int paperino[] = new int[500];
for(int i = 0; i < paperino.length; i++) {
  paperino[i] = round(random(100));
}
// Vedo tutto il contenuto dell'array
println(paperino[30]);
