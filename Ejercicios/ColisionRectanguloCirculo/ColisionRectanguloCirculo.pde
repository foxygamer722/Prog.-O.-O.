Pelota pelota;
PVector rectPos;
float rectW = 200;
float rectH = 120;

void setup() {
  size(800, 600);
  pelota = new Pelota(new PVector(100, 100), 25);
  rectPos = new PVector(width/2, height/2);
}

void draw() {
  background(30);

  pelota.mover();

  boolean colisiona = pelota.chocaConRect(rectPos, rectW, rectH);

  if (colisiona) {
    fill(255, 60, 60);
  } else {
    fill(100, 200, 255);
  }
  noStroke();
  rectMode(CENTER);
  rect(rectPos.x, rectPos.y, rectW, rectH);

  fill(255);
  ellipse(pelota.pos.x, pelota.pos.y, pelota.r*2, pelota.r*2);
}
