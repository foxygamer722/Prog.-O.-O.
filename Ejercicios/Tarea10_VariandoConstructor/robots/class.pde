class Movil {
  PVector pos, vel;
  int r = 40;

  Movil(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(0, random(-1,0));
  }

  void mover() {
    pos.add(vel);
    contener();
  }

  void mostrar() {
    rect(pos.x, pos.y, width/25, height/10);
  }

  void contener() {
    if (pos.x < 0 || pos.x > width) {
      pos.sub(vel);
      vel.x = vel.x * (-1);
    }
    if (pos.y < 0 || pos.y > height) {
      pos.sub(vel);
      vel.y = vel.y * 0;
    }
  }
}
