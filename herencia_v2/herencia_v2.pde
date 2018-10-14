import ddf.minim.*;

//Declarar objetos
Balon b1; //Declara balón
Basket b2; //Declara balón 2
Pikachu p1;

//Estructura principal
void setup(){
  size(600,600);
  b1 = new Balon();
  b2 = new Basket((width/2)+80,height/2,40);
  p1 = new Pikachu();
  //frameRate(20);
}

void draw(){
  background(255);
  //fill(0,255,0,25);
  //rect(0,0,width,height);
  b1.rodar();
  //b2.rodar();
  b1.botar();
  //b2.botar();
  //b2.mostrar();
  b2.rodar();
  b2.botar();
  p1.mostrar();
  p1.mover();
  p1.trans();
}