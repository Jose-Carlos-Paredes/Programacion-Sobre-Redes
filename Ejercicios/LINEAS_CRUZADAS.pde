//Caso 2:
int cant = 10;
float sep;

void setup() {
  size(900, 600);
  sep=width/cant;
}

void draw() {
  for (int J=0; J<cant; J++) {
    float xfin=sep*J;
    for (int i=0; i<cant; i++) {
      float xsal=sep*i;
      line (xsal, 0, xfin, height);
    }
  }
}
