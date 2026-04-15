int radio = 0 ;
void setup() {
  size(800, 800);
}

void draw() {
  if (mousePressed) {
    radio++;
    reCuadritos( mouseX, mouseY, radio, radio);
  }
}

void mouseReleased() {
  radio = 0 ;
}

void reCuadritos(float x, float y, float w, float h) {
  ellipseMode(RADIUS);
  strokeWeight(2);
  fill(255, 30);
  circle(x, y, w/2);
  noFill();
  circle(x, y, w/4);
  circle(x, y, w/8);
  circle(x, y, w/16);
  circle(x, y, w/32);
  circle(x, y, w/64);
}
