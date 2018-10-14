class Particula{
  //1. Datos
  float x;
  float y;
  float r;
  float vx;
  float vy;
  float R;
  float G;
  float B;
  
  //2. Constructor
  Particula(float tempX, float tempY, float tempR){
    x = tempX;
    y = tempY;
    r = tempR;
    R = random(0,255);
    G = random(0,255);
    B = random(0,255);
    vx = 5;
    vy = 2;
  }
  //3. Funcionalidad
  void mostrar(){
    fill(R,G,B);
    ellipse(x,y,2*r,2*r);
  }
  
  void mover(){
    x = x + vx;
    y = y + vy;
  }
  
  void rebotar(){
    if (x < r || x > width-r){
      vx = vx*-1;
    }
    
    if (y < r || y > height-r){
      vy = vy*-1;
    }
  }
}