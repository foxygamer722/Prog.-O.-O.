ArrayList <cuadrado> tubos;
Pelota bird;
float UltimoPar = 0;
PVector G = new PVector (0, 2);

void setup() {
  tubos = new ArrayList <cuadrado>();
  bird = new Pelota(100, height/2);
};

void draw() {
  background(0);
  AgregarTubos();
  bird.addFuerza(G);
  bird.mover();
  BorrarTubos();

  for (cuadrado t : tubos) {
    t.mover();
    t.mostrar();
  };
  bird.mostrar();
};

void BorrarTubos() {
  for (int i = tubos.size() - 1; i >= 0; i--) {
    cuadrado aux = tubos.get(i);
    if (aux.pos.x < 0) {
      tubos.remove(i);
    };
  };
};

void AgregarTubos() {
  float tActual = millis();
  float dt = tActual - UltimoPar;

  if (dt>5000) {
    tubos.add(new cuadrado(, ));
    tubos.add(new cuadrado(, ));
  };
};
