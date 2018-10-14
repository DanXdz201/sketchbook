//Esto si es Programación Orientada a Objetos
class Pelota{  
  //1. Datos
  float x;
  float y;
  float diam;
  float vx;
  float vy;
  float R;
  float G;
  float B;
  
  //2. Constructor (Inicialización)
  Pelota(float tempR, float tempG, float tempB){
    x = width/2;
    y = width/2;
    diam = 50;
    vx = random(3,7);
    vy = random(3,6);
    R = tempR;
    G = tempG;
    B = tempB;
  }
  
  //3. Funcionalidad
  void mostrarPelota(){
    smooth();
    fill(R,G,B);
    ellipse(x,y,diam,diam);
  }
  
  void moverPelota(){
    x = x + vx;
    y = y + vy;
  }
  
  void rebotarPelota(){
    float radio= diam/2;
    if(x > width-radio || x < 0+radio){
      vx = vx*(-1);
    }
    if(y > height-radio || y < 0+radio){
      vy = vy*(-1);
    }
  }
  
  void cambiarColor(){
    R = random(1,255);
    G = random(1,255);
    B = random(1,255);
  } 
}