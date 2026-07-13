class Movil {
  PVector acel=new PVector(0, 0);
  PVector pos;
  PVector vel = new PVector(4, 3);
  float d=10;

  Movil(float origenX, float origenY) {
    pos= new PVector(origenX, origenY);
  }

  void mostrar(float cx, float cy, float rango) {
    float d = dist(width/2 , height/2, cx, cy);

    if (d < rango) {
      fill(255);
      line(width/2,height/2,pos.x,pos.y);
    } else {
      fill(255);
      circle(pos.x, pos.y, d);
    }
  }

  void contener() {
    if (pos.x  > width || pos.x < 0) {
      vel.x =vel.x* -1;
    }
    if (pos.y  > height || pos.y  < 0) {
      vel.y =vel.y* -1;
    }
  }

  void mover() {
    pos.add(vel);
    vel.add(acel);
    acel.mult(0);

    contener();
  }

  void agregarFuerza(PVector F) {
    acel.add(F);
  }
}
boolean EnRango(float px, float py, float cx, float cy, float r) {
  r = r/2;
  float d = dist(px, py, cx, cy);
  if (d>r) {
    return(false);
  } else {
    return(true);
  }
}
