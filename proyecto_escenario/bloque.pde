class Bloque {
  PImage imagen;
  int x;
  int y;
  int tamano;

  Bloque(int x, int y, int tamano) {
    this.x = x;
    this.y = y;
    this.tamano = tamano;
    imagen = loadImage("bloque.png");
  }

  void mostrar() {
    image(imagen, x, y, tamano, tamano);
  }
}
