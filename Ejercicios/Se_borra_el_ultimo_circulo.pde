ArrayList<PVector> circulos;

void setup() {
  size(800, 600);
  circulos= new ArrayList<PVector>();
}

void draw() {
  background (0);
  for (PVector c : circulos) {
    ellipse(c.x, c.y, 50, 50);
  }
}

void mousePressed() {
  circulos.add(new PVector(mouseX, mouseY));

  if (circulos.size() > 10) {
    circulos.remove(0);
  }
}
