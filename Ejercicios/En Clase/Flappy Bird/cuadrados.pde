class cuadrado {
  PVector pos;
  int tx = 10, ty= 40;

  cuadrado(float columna) {
    pos = new PVector(columna, height/2);
  }

  void mostrar() {
    rectMode(RADIUS);
    fill(255,0,map(pos.x, 0, width, 0, 255));
    rect(pos.x, pos.y, tx, ty);
  } 
}
