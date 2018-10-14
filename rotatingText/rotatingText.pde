String a;
String b;
float tw;
float tw2;
float angle = 0;
int tam = 2;
int vel = 1;

void setup(){
  size(700,500);
  a = "This is not a game";
  b = "Probando con un texto más largo";
  frameRate(40);
}

void draw(){
  background(0);
  fill(255);
  textSize(tam);
  //text("Hello",218,250);
  tw = textWidth(a);
  tw2 = textWidth(b);
  pushMatrix();
  translate(width/2, height/2);
  rotate(angle);
  translate(-width/2, -height/2);
  fill(255,0,0);
  text(a,(width-tw)/2,250);
  fill(0,0,255);
  text(b,(width-tw2)/2,280);
  angle= angle+0.05;
  popMatrix(); 
  if(tam <= 1 ||tw2 > height){
    vel = vel*(-1);
  }
  tam = tam+vel;
}