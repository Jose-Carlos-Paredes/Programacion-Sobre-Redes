//caso 4:
int[] desplazamientos = {0, -50, 0, -50, 0, -50, 0}; 

void setup() {
  size(400, 350);    
  background(255);   
  stroke(0);         
  strokeWeight(2);   
  noFill();         
  int ancho = 100;  
  int alto = 50;    
  int columnas = 5;  
  for (int i = 0; i < desplazamientos.length; i++) {
    for (int j = 0; j < columnas; j++) {
      int posX = (j * ancho) + desplazamientos[i];
      int posY = i * alto;
      rect(posX, posY, ancho, alto);
    }
  }
}
