PImage img;
color c;

void setup(){
  size(1000, 800);
  img = loadImage("nombre.jpg");
}

void draw() {
  image(img, 0, 0);
  c = img.get(mouseX, mouseY);
  fill(c);
  rect(mouseX, mouseY, 30, 30);
}
