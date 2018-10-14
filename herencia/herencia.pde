import ddf.minim.*;

//Declarar objetos
Balon b1; //Declara balón
Balon b2; //Declara balón 2
Basket B;

//Estructura principal
void setup(){
  size(600,600);
  b1 = new Balon();
  b2 = new Balon((width/2)+80,height/2,80);
  B = new Basket();
}

void draw(){
  background(0);
  //b1.mostrar();
  //b2.mostrar();
  b1.mover();
  b2.mover();
  b1.botar();
  b2.botar();
  b1.rodar();
  b2.rodar();
  B.mover();
  B.botar();
  B.rodar();
}