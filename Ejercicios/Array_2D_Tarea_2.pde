int filas, columnas;
int tamañoCelda = 20;
float[][] distancias;
boolean[][] estados;

void setup() {
  size(800, 600);
  columnas = width / tamañoCelda;
  filas = height / tamañoCelda;
  distancias = new float[columnas][filas];
  estados = new boolean[columnas][filas];
  noStroke();
}

void draw() {
  background(0);
  actualizarDatosDistancia();
  dibujarGrilla();
}

void actualizarDatosDistancia() {
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
      if (estados[i][j] == true) {
        fill(255, 255, 0);
      } else {
        float brillo = map(distancias[i][j], 0, maxDist/100, 255, 0);
        fill(brillo);
      }
      rect(i * tamañoCelda, j * tamañoCelda, tamañoCelda, tamañoCelda);
    }
  }
}

void mousePressed() {
  int columnaClickeada = mouseX / tamañoCelda;
  int filaClickeada = mouseY / tamañoCelda;
  if (columnaClickeada >= 0 && columnaClickeada < columnas &&
    filaClickeada >= 0 && filaClickeada < filas) {
    estados[columnaClickeada][filaClickeada] = !estados[columnaClickeada][filaClickeada];
  }
}
