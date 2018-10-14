//1. Crear objeto
Serpiente s;

//2. Estructura principal
void setup(){
  size(500,500);
  s = new Serpiente(5,5,8);
}

void draw(){
  background(0);
  s.mostrar();
  s.mover();
  s.rebotar();
}