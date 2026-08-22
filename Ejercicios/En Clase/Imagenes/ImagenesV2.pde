/*
PImage img;
color c;

void setup(){
  size(735, 734);
  img = loadImage("stareboom.png");
}

void draw() {
  for(int i = 0; i<100; i++){
  int x = int(random(width));
  int y = int(random(height));
  float t = map(mouseX, 0, height, 0, 255);
  float d = map(mouseY, 0, width, 0, 30);
  
  noStroke();
  c = img.get(x, y);
  fill(c,t);
  ellipse(x, y, d, d);
  }
}
*/
