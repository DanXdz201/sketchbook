class Serpiente{
  //1. Datos
  float x;
  float y;
  float r;
  Particula[] p = new Particula[30];
  float vx;
  float vy;
  //2. Constructor
  Serpiente(float tempX, float tempY, float tempR){
    x = tempX;
    y = tempY;
    r = tempR;
    for(int i = 0; i < p.length; i++){
      p[i] = new Particula(tempX,tempY+2*i*tempR,tempR);
    }
  }
  //3. Funcionalidad
  void mostrar(){
    for(int i = 0; i < p.length; i++){
      p[i].mostrar();
    }
  }
  
  void mover(){
    for(int i = 0; i < p.length; i++){
      p[i].mover();
    }
  }
  
  void rebotar(){
    for(int i = 0; i < p.length; i++){
      p[i].rebotar();
    }
  }
  
}