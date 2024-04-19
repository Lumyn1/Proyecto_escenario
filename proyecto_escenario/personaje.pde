class Personaje {
  PImage imagen;
  int x;
  int y;
  int tamano;

  Personaje(int x, int y, int tamano) {
    this.x = x;
    this.y = y;
    this.tamano = tamano;
    imagen = loadImage("personaje.png");
  }

  void mostrar() {
    image(imagen, x, y, 200,200);
  }

  void mover(int dx, int dy) {
    x += dx;
    y += dy;
  }
}
