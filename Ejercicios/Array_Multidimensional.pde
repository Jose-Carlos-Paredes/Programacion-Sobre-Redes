int filas = 10;
int cols = 10;
float w, h;
boolean[][][] laberinto = new boolean[10][10][6];

void setup() {
  size(600, 600);
  w = width / cols;
  h = height / filas;
  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < cols; j++) {
      for (int p = 0; p < 6; p++) {
        laberinto[i][j][p] = random(1) > 0.5;
      }
    }
  }
}

void draw() {
  background(255);
  stroke(0);
  strokeWeight(2);

  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < cols; j++) {
      float x = j * w;
      float y = i * h;
      if (laberinto[i][j][0]) line(x, y, x + w, y);
      if (laberinto[i][j][1]) line(x, y + h, x + w, y + h);
      if (laberinto[i][j][2]) line(x, y, x, y + h);
      if (laberinto[i][j][3]) line(x + w, y, x + w, y + h);
      if (laberinto[i][j][4]) line(x, y, x + w, y + h);
      if (laberinto[i][j][5]) line(x + w, y, x, y + h);
    }
  }
  noLoop();
}
