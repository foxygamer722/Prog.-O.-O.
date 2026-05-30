Movil [][] moviles;
int filas = 2;
int columnas = 3;

void setup() {
  size(800, 600);
  moviles = new Movil[columnas][filas];
  float sepX = width/columnas;
  float sepY = height/filas;

  for (int i = 0; i<columnas; i++) {
    for (int j = 0; j<filas; j++) {
      float posX = (i * sepX) + (sepX/2);
      float posY = (j * sepY) + (sepY/2);
      moviles[i][j] = new Movil(posX, posY);
    }
  }
}

void draw() {
  background(#989393);
  for (int i = 0; i<columnas; i++) {
    for (int j = 0; j<filas; j++) {
      moviles[i][j].mostrar();
      moviles[i][j].mover();
    }
  }
}
