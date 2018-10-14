Pacman[] p = new Pacman[50];

//2. Estructura principal
void setup(){
  size(700,400);
  for (int i = 1; i < p.length; i++){
    p[50-i] = new Pacman(i*40,i*10);
  }
  print(p.length);
}

void draw(){
  background(0);
  stroke(0,0,0);
  for (int i = 1; i < p.length; i++){
    p[i].mostrar();
    p[i].moverX();
    p[i].comer();
    p[i].meter();
  }
}

void mousePressed(){
  for (int i = 1; i < p.length; i++){
    p[i].cambiarColor();
  }
}