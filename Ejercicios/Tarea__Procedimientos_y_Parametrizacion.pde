void setup() {
  size(800, 800);
  background(240);
}
void draw() {
  if (mousePressed) {
    dibujarComposicion(mouseX, mouseY, 150, 150);
  }
}
void dibujarComposicion(float posicionX, float posicionY, float ancho, float alto) {
  rectMode(CENTER);
  noFill();
  stroke(0, 100);
  circle(posicionX - ancho/2, posicionY - alto/2, ancho/4);
  circle(posicionX + ancho/2, posicionY - alto/2, ancho/4);
  circle(posicionX - ancho/2, posicionY + alto/2, ancho/4);
  circle(posicionX + ancho/2, posicionY + alto/2, ancho/4);
  circle(posicionX, posicionY, ancho/2);
  line(posicionX - ancho/2, posicionY - alto/2, posicionX + ancho/2, posicionY + alto/2);
  line(posicionX + ancho/2, posicionY - alto/2, posicionX - ancho/2, posicionY + alto/2);
}
