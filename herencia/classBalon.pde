class Balon{
  //Atributos
  float px,py; //Posicion
  float vx,vy; //Velocidad
  float d; //Diámetro
  float angle;
  Minim minim;
  AudioPlayer 
  //Constructor
  Balon(){
    px = width/2; //Posición en x
    py = height/2; //Posición en y
    vx = random(5,10); //Velocidad en x
    vy = random(5,10); //Velocidad en y
    d = 80; //Diámetro de circulo
  }
  //Sobrecarga del constructor
  Balon(float px_, float py_, float d_){
    px = px_; 
    py = py_;
    d = d_;
    vx = random(5,10); //Velocidad en x
    vy = random(5,10); //Velocidad en y
  }
  
  //Métodos
  void mostrar(){
    ellipse(px,py,d,d); //Elipse con posicion y tamaño
    line(px-(d/2),py,px+(d/2),py); //linea horizontal
    line(px,py-(d/2),px,py+(d/2)); //linea vertical
  }
  
  void mover(){
    px = px + vx;
    py = py + vy;
  }
  void rodar(){
    pushMatrix();
    translate(px,py);
    rotate(angle = angle + 0.01);
    translate(-px,-py);
    mostrar();
    popMatrix();
  }
  void botar(){
    if(px < d/2 || px > width-(d/2)){
      vx = vx*-1;
    }
    
    if(py < d/2 || py > height-(d/2)){
      vy = vy*-1;
    }
  }
}

class Basket extends Balon{
  PImage ball;
  Basket(){
    super();
    ball = loadImage("bask.png");
  }
  //Overriding (Sobreescribiendo método)
  void mostrar(){
    imageMode(CENTER);
    image(ball,px,py,ball.width/6,ball.height/6);
  }
}