float xi;
float yi;
float y;
float vely=0;
final float g = 9.81;
float t=0;
int ancho_p = 50;
int alto_p = 50;

void setup(){
  size(500,500);
  frameRate(50);
  xi = width/2;
  yi = alto_p/2;
  background(0);
  ellipse(xi,yi,ancho_p,alto_p);
}

void draw(){
  if(mousePressed){
    background(0);
    y = yi + (vely*t) + (g*t*t);
    t = t + 0.05;
    if(y < height-(ancho_p/2)){
      ellipse(xi,y,ancho_p,alto_p);
    }
    else{
      ellipse(xi,(height-ancho_p/2),ancho_p,alto_p);
    }
  }
  else{
    background(0);
    ellipse(xi,yi,ancho_p,alto_p);
    t = 0;
  }
  
  
}