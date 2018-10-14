//1. Datos (Variables)
int xpac;
int ypac;
int[] ang;
int ai = 45;
int af = 315;
int v = 3;

//2. Estructura principal
void setup(){
  size(300,300);
  xpac = width/2;
  ypac = width/2;
}

void draw(){
  displayPac(xpac,ypac,80,80,ai,af);
  xpac=mover(xpac,3);
  xpac=outWindowX(xpac);
  ang = comer(ai, af, v);
  ai = ang[0];
  af = ang[1];
  v = ang[2];
}

//3. Funcionalidad
void displayPac(int x, int y, int w, int h, int ani, int anf){
  background(0);
  fill(255,0.75*255,0);
  arc(x,y,w,h,radians(ani),radians(anf));
}

int mover(int x, int speedX){
  x = x + speedX;
  return x;
}

int outWindowX(int x){
  if(x > width+60){
    x = -60;
  }
  return x;
}

int outWindowY(int y){
  if(y > height+60){
    y = -60;
  }
  return y;
}

int[] comer(int ani, int anf, int van){
  ani = ani - van;
  anf = anf + van;
  
  if (ani <= 0 || ani >= 45){
    van = van*(-1);
  }
  
  int[] a = {ani, anf, van};
  return a;
}