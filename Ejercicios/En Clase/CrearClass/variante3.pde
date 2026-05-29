/*
// Utiliza la class de variante2, pero con array
Movil [] moviles;
int cant = 10;

void setup() {
  size(800, 600);
  moviles = new Movil[cant];
  for (int i = 0; i<cant; i++) {
    moviles[i] = new Movil(random(width), random(height));
  }
}

void draw() {
//  println(frameRate);
  background(#000000);
  for (int i = 0; i<cant; i++) {
    moviles[i].mover();
    moviles[i].mostrar();
  }
}

*/
