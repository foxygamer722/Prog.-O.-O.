Movil m;
Movil otro;

void setup() {
  size(800, 600);
  m = new Movil(width/2,height/2);
  otro = new Movil(100,300);
//  m.d = 80; Modifica solamente el diametro de m
};

void draw() {
  background(#7C7C7C);
  m.mover();
  otro.mover();
  
  m.contener();
  otro.contener();
  
  m.mostrar();
  otro.mostrar();
};
