//Comentario
int x;
int y;
int d;

void setup(){
  size(500,500);
  x = width/2;
  y = height/2;
  d = 50;
}

void draw(){
  limpiar();
  circuloNegro();
  arrastrar();
}

void limpiar(){
  background(255);
}

void circuloNegro(){
  fill(0);
  ellipse(x,y,d,d);
}

void mover(){
  x = mouseX;
  y = mouseY;
}

void arrastrar(){
   if(mousePressed && abs(x-mouseX)< d/2 && abs(y-mouseY) < d/2){
     mover();
   }
}

//Creación de funciones