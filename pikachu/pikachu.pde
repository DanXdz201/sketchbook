//Crear objeto
Pikachu[] p = new Pikachu[20];

//Estructura principal
void setup(){
  size(500,500);
  for (int i = 0; i < p.length; i++){
    p[i] = new Pikachu();
  }
}

void draw(){
  background(0);
  fill(185,120,20);
  rect(0,400,width,100);
  for (int i = 0; i < p.length; i++){
    p[i].display();
    p[i].run();
    p[i].trans();
    p[i].jump();
    p[i].tope();
  }
}