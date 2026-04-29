//caso 3: 
int[] diametros = {20, 40, 70, 110, 160, 220, 300};

void setup() {
  size(800, 400);
  background(255);
  noFill();
  stroke(0);
  strokeWeight(2);
  int posX = 0;
  for (int i = 0; i < diametros.length; i++) {
    posX = posX + (diametros[i] / 2);
    ellipse(posX, height/2, diametros[i], diametros[i]);
    posX = posX + (diametros[i] / 2);
  }
