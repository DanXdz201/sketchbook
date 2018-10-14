//Datos
PImage gato;
PImage gato2;
int posx;
int posy;
int tamx;
int tamy;
int posx2;
int posy2;
float tamx2;
float tamy2;
float k;
float ts;
String dial;

//Estructura principal
void setup(){
  size(500,500);
  gato = loadImage("meowth_1.png");
  gato2 = loadImage("meowth_2.png");
  imageMode(CENTER); //Coloca la coordenada de la imagen en el centro
  posx = width/2;
  posy = height/2;
  tamx = gato.width/2;
  tamy = gato.height/2;
  posx2 = width/2;
  posy2 = height/2;
  tamx2 = gato2.width/1.3;
  tamy2 = gato2.height/1.3;
  dial = "Meow!, Así es!";
  ts = 30;
}

void draw(){
  background(0);
  //fill(0,0,0,25);
  //rect(0,0,width,height);
  image(gato,mouseX,mouseY,k*tamx,k*tamy);
  
  if (mousePressed){
    background(0);
    image(gato2,mouseX,mouseY,k*tamx2,k*tamy2);
    fill(random(0,256),random(0,256),random(0,256));
    textSize(ts);
    //text("Meow! Así es",mouseX+40,mouseY-50);
    text(dial,mouseX+40, mouseY-50);
  }
}

//void mousePressed(){
//  background(0);
//  //fill(0,0,0,25);
//  //rect(0,0,width,height);
//  image(gato2,mouseX,mouseY,tamx2,tamy2);
//  fill(random(0,256),random(0,256),random(0,256));
//  textSize(30);
//  text("Meow! Así es",mouseX+40,mouseY-50);
//  noLoop();
//}

void mouseReleased(){
  loop();
}

void keyReleased(){
  //k = constrain(1.0,0.0,30.0);
  if (keyCode == UP){
    k = k + 0.1;
  }
  
  if (keyCode == DOWN){
    k = k - 0.1;
    
    if (k < 0){
      k = 0;
    }
  }
  
  if (keyCode == LEFT){
    ts--;
    if (ts < 1){
      ts = 1;
    }
  }
  
  if (keyCode == RIGHT){
    ts++;
  }
  
  if (keyCode == 'A'){
    background(0);
    image(gato2,mouseX,mouseY,k*tamx2,k*tamy2);
    fill(random(0,256),random(0,256),random(0,256));
    textSize(ts);
    //text("Meow! Así es",mouseX+40,mouseY-50);
    text(dial,mouseX+40, mouseY-50);
    noLoop();
  }
}

//Funcionalidad