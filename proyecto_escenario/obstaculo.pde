class Obstaculo {
  PImage imagen;
  int x;
  int y;
  int tamano;
  int velocidad;

  Obstaculo(int x, int y, int tamano) {
    this.x = x;
    this.y = y;
    this.tamano = tamano;
    this.velocidad = 3; 
    imagen = loadImage("obstaculo.png");
  }

  void mostrar() {
    image(imagen, x, 539, 300, 200);
  }

  void mover() {
    x -= velocidad; 
    if (x + tamano < 0) {
      x = width; 
    }
  }
}
