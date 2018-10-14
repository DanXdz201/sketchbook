Pelota[] p = new Pelota[2];

//2. Estructura principal
void setup(){
  size(600,400);
  for(int i = 0; i < p.length; i++){
    p[i] = new Pelota(random(1,255),random(1,255),random(1,255));
  }
  //p1 = new Pelota(255,0,0);
}

void draw(){
  background(0);
  for(int i = 0; i < p.length; i++){
    p[i].mostrarPelota();
    p[i].moverPelota();
    p[i].rebotarPelota();
  }
}

void mousePressed(){
  for(int i = 0; i < p.length; i++){
    p[i].cambiarColor();
  }
}

void keyPressed(){
  Pelota n = new Pelota(255,0,0);
  p = (Pelota[]) append(p,n);
}