class Pikachu{
  //1. Datos
  PImage pikrun;
  float x;
  float y;
  float velx;
  float vely;
  float g;
  float t = 0;
  //2. Constructor
  Pikachu(){
    pikrun = loadImage("pikachurun.gif");
    x = random(0, width);
    y = 300;
    t = 0;
    velx = random(3,5);
    vely = random(10,25);
    g = 9.8;
  }
  //3. Funcionalidad
  void display(){
    t = t + 0.05;
    image(pikrun,x,y,150,100);
  }
  
  void run(){
    x = x + velx;
  }
  
  void trans(){
    if(x > width){
      x = -150;
    }
  }
  
  void jump(){
    if(mousePressed || y < 300){
      y = y - (vely * t) + (g*t*t);
    }

  }
  
  void tope(){
    if(y > 300){
      y = 300;
      t = 0;
    }
  }
}