//Datos
PImage gato;
PImage gato2;
int x;
int y;
int x2;
int y2;

//Estructura principal
void setup(){
  size(500,500);
  imageMode(CENTER);
  gato = loadImage("meowth.png");
  gato2 = loadImage("meowth2.png");
  x = gato.width/4;
  y = height - (gato.height/4);
  x2 = gato2.width/2;
  y2 = height - (gato2.height/2);
}

void draw(){
  background(0);
  image(gato,x,y,gato.width/2,gato.height/2);
}

void mousePressed(){
    background(0);
    image(gato2,x2,y2,gato2.width/1.5,gato2.height/1.5);
    noLoop();
}

void mouseReleased(){
  loop();
}

void keyPressed(){
}

//Funcionalidad