//Caso 2:
int cant = 5; 
float[] puntosX = new float[cant];

void setup() {
  size(800, 600);
  

  for (int i = 0; i < cant; i++) {

    puntosX[i] = map(i, 0, cant - 1, 0, width);
  }
}

void draw() {
  background(255);
  stroke(0);
  
  for (int i = 0; i < cant; i++) {
    for (int j = 0; j < cant; j++) {
    
      line(puntosX[i], 0, puntosX[j], height);
    }
  }
  
  noLoop(); 
}
