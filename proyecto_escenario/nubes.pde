class Nubes {
  PImage imagen;
  int numNubes;
  float[] x;
  float[] y;

  Nubes(int numNubes) {
    this.numNubes = numNubes;
    imagen = loadImage("nube.gif");
    x = new float[numNubes];
    y = new float[numNubes];
    for (int i = 0; i < numNubes; i++) {
      x[i] = random(width);
      y[i] = random(height / 4); 
    }
  }

  void mostrar() {
    for (int i = 0; i < numNubes; i++) {
      image(imagen, x[i], y[i]);
    }
  }
}
