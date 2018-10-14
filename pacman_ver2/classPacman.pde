class Pacman{
  float x;
  float y;
  float diam;
  float ani;
  float anf;
  float vang;
  float R = 255;
  float G = 0.75*255;
  float B = 0;
  
  //Constructor
  Pacman(int tempX, int tempD){
    x = tempX;
    y = random(-5,405);
    diam = tempD;
    ani = 45;
    anf = 315;
    vang = 4;
  }
  
  void mostrar(){
    fill(R,G,B);
    arc(x,y,diam,diam,radians(ani),radians(anf),PIE);
  }
  
  void moverX(){
    x = x + random(0,10);
  }
  
  void comer(){
    ani = ani - vang;
    anf = anf + vang;
    
    if(ani < 0 || ani > 45){
      vang = vang*(-1);
    }
  }
  
  void meter(){
    if(x > width+130){
      x = -130;
    }
  }
  
  void cambiarColor(){
    R = random(1,255);
    G = random(1,255);
    B = random(1,255);
  }
}