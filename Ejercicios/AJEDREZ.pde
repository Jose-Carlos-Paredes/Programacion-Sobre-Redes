//Caso 1:
int cant=5;

void setup() {
  size(800, 800);
}

void draw() {
  int tam=width/cant;
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      int x=i*tam;
      int y=j*tam;
      if ((j+i) % 2 == 0) {
        fill(0, 200, 0);
        rect(x, y, tam, tam);
        fill(150, 255, 100);
      } else {
        rect(x, y, tam, tam);
        fill(0, 200, 0);
      }
    }
  }
}
