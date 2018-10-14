Copo [] c = new Copo[30];

void setup() {
  size(500, 500); //Ancho y alto de ventana
  for (int i = 0; i<30; i++) {
    c[i] = new Copo();
  }
}

void draw() {
  background(0);
  for (int i = 0; i<30; i++) {
    c[i].mostrar();
    c[i].caer();
    c[i].trans();
  }
}

class Copo {
  //Atributos
  float x;
  float y;
  float vy;

  //Constructor
  Copo() {
    x = width/2;
    y = height/2;
    vy = 3;
  }

  //Métodos
  void mostrar() {
    stroke(255);
    strokeWeight(7);
    point(x, y);
  }

  void caer() {
    y = y + vy;
  }

  void trans() {
    if (y > 500) {
      y = -10;
    }
  }
}