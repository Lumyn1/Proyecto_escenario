Fondo fondo;
Nubes nubes;
Bloque[] bloques;
Personaje personaje;
Obstaculo obstaculo;

void setup() {
  size(800, 800);
  fondo = new Fondo();
  nubes = new Nubes(5); 
  bloques = new Bloque[10];
  for (int i = 0; i < bloques.length; i++) {
    bloques[i] = new Bloque(i * 100, height - 100, 100); 
  }
  personaje = new Personaje(width / 4, 530, 50);
  obstaculo = new Obstaculo(width - 100, height / 2, 50);
}

void draw() {
  fondo.mostrar(); 

  nubes.mostrar();

  for (Bloque bloque : bloques) {
    bloque.mostrar();
  }
  personaje.mostrar();
  obstaculo.mostrar();
  obstaculo.mover();
}

void keyPressed() {
  if (key == 'w' || key == 'W') {
    personaje.mover(0, -5); // Mover hacia arriba
  } else if (key == 's' || key == 'S') {
    personaje.mover(0, 5); // Mover hacia abajo
  } else if (key == 'a' || key == 'A') {
    personaje.mover(-5, 0); // Mover hacia la izquierda
  } else if (key == 'd' || key == 'D') {
    personaje.mover(5, 0); // Mover hacia la derecha
  }
}
