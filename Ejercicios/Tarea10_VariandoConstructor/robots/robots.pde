Movil [] robots;
int cant = 10;

void setup() {
  size(800, 600);
  robots = new Movil[cant];
  float sep = width/float(cant);
  for (int i = 0; i<cant; i++) {
    float posX = (i * sep) + (sep/4);
    robots[i] = new Movil(posX, height*0.8);
  }
}

void draw() {
  background(#C6C6C6);
  
  strokeWeight(5);
  line(0, height*0.7, width, height*0.7);
  strokeWeight(1);
  
  for (int i = 0; i<cant; i++) {
    robots[i].mover();
    robots[i].mostrar();
  }
}
