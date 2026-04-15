int filas, columnas;
int tamañoCelda = 20;
float[][] distancias;

void setup() {
  size(800, 600);
  columnas = width / tamañoCelda;
  filas = height / tamañoCelda;
  distancias = new float[columnas][filas];
  noStroke();
}

void draw() {
  background(0);
  actualizarDatos();
  dibujarGrilla();
}

void actualizarDatos() {
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      float xCentro = i * tamañoCelda + tamañoCelda/2;
      float yCentro = j * tamañoCelda + tamañoCelda/2;
      float d = dist(mouseX, mouseY, xCentro, yCentro);
      distancias[i][j] = d;
    }
  }
}

void dibujarGrilla() {
  float maxDist = dist(0, 0, width, height);
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      float brillo = map(distancias[i][j], 0, maxDist/2, 255, 0);
      fill(brillo);
      rect(i * tamañoCelda, j * tamañoCelda, tamañoCelda, tamañoCelda);
    }
  }
}
