Population miGente;

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  //prueba = str(x) + str(y);
  //println(prueba);
  miGente = new Population(15,19);
  miGente.showTextFit("To be or not to be.");
  //delay(1000);
}