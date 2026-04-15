void setup() {
  size(800, 800);
}
void draw() {
  if (mousePressed) {
    LineaContinua(mouseX, mouseY, pmouseX, pmouseY);
    LineaContinua(width - mouseX, height - mouseY, width - pmouseX, height - pmouseY);
  }
}
void LineaContinua(float x, float y, float px, float py) {
  float vel = dist(x, y, px, py); 
  strokeWeight(vel);
  line(x, y, px, py);
}
