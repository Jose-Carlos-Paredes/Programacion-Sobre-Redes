int cant = 10;
int sepx, sepy;

void setup() {
  size(800, 600);
  sepx = width / cant;
  sepy = height / cant;
}

void draw() {
  background(255);
  for (int i = 0; i < cant; i++) {

    // 1. Vértice Inferior Izquierdo (Código base)
    // Conecta el borde izquierdo (bajando) con el borde inferior (avanzando a la derecha)
    line(0, i*sepy, i*sepx, height);

    // 2. Vértice Superior Derecho
    // Conecta el borde derecho (bajando) con el borde superior (avanzando a la izquierda)
    line(width, i*sepy, width - (i*sepx), 0);

    // 3. Vértice Inferior Derecho
    // Conecta el borde derecho (bajando) con el borde inferior (avanzando a la izquierda)
    line(width, i*sepy, width - (i*sepx), height);

    // 4. Vértice Superior Izquierdo
    // Conecta el borde izquierdo (bajando) con el borde superior (avanzando a la derecha)
    line(0, i*sepy, i*sepx, 0);

  }
}
