int cant = 20;
float[] alturas = new float[cant];
float anchoBarra;

void setup() {
  size(800, 400);
  anchoBarra = width / float(cant);
}

void draw() {
  background(30);
  if (mousePressed) {
    int indice = int(mouseX / anchoBarra);
    if (indice >= 0 && indice < cant) {
      alturas[indice] = height - mouseY;
    }
  }

  fill(0, 255, 150);
  for (int i = 0; i < cant; i++) {
    float x = i * anchoBarra;
    float y = height - alturas[i];
    rect(x, y, anchoBarra - 2, alturas[i]);
  }
}
