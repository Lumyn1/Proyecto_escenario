class Fondo {
  PImage imagen;

  Fondo() {
    imagen = loadImage("fondo.jpeg");
  }

  void mostrar() {
    image(imagen, 0, 0, width, height);
  }
}
