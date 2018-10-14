class Balon{
  //Atributos
  float px,py; //Posicion
  float tx,ty; //Posicion
  float r; //Diámetro
  float angle;
  float vx;
  float vy;
  float wa;
  Minim minim;
  AudioPlayer boink;
  
  //Constructor
  Balon(){
    px = width/2; //Posición en x
    py = height/2; //Posición en y
    vx = 10;
    vy = 3;
    wa = 0.06;
    tx = 40; //
    ty = 40; //Diámetro de circulo
    minim = new Minim(herencia_v2.this);
    boink = minim.loadFile("chavo.wav");
  }
  //Sobrecarga del constructor
  Balon(float px_, float py_, float r_){
    px = px_; 
    py = py_;
    tx = r_;
    ty = r_;
    vx = 8;
    vy = 5;
    wa = 0.06;
    minim = new Minim(herencia_v2.this);
    boink = minim.loadFile("chavo.wav");
  }
  //Métodos
  void mostrar(){
    fill(255);
    ellipseMode(RADIUS);
    ellipse(px,py,tx,ty); //Elipse con posicion y tamaño
    line(px,py-ty,px,py+ty);
  }
  void ponchar(){
  }
  void rodar(){
    pushMatrix();
    //ellipseMode(RADIUS);
    translate(px,py);
    rotate(angle=angle+wa);
    translate(-px,-py);
    mostrar();
    popMatrix();
    px = px + vx;
    py = py + vy;
  }
  void botar(){
    
    if(px < tx+40 || px > width-tx-40){
      //boink.rewind();
      boink.play();
      getchar();
      //print(boink.length());
    }
    
    if(py < ty+40 || py > height-ty-40){
      //boink.rewind();
      boink.play();
      getchar();
      //print(boink.length());
    }
    
    if(px < tx || px > width-tx){
      vx = vx*-1;
      wa = wa*-1;
      tx=tx-20;
      mostrar();
      tx=tx+20;
      //boink.rewind();
      boink.cue(0);
      
      //print(boink.length());
    }
    
    if(py < ty || py > height-ty){
      vy = vy*-1;
      wa = wa*-1;
      //boink.rewind();
      boink.cue(0);
    }
  }
  void getchar(){
    fill(255,0,0);
    textSize(32);
    text("getChar()",px,py);
  }
}

class Basket extends Balon{
  PImage ball;
  
  Basket(){
    super();
    ball = loadImage("basket.png");
    boink = minim.loadFile("basket.wav");
  }
  
  Basket(float px_, float py_, float r_){
    super();
    vx = 8;
    vy = 5;
    px = px_; 
    py = py_;
    tx = r_;
    ty = r_;
    ball = loadImage("basket.png");
    boink = minim.loadFile("basket.wav");
  }
  
  void mostrar(){
    fill(255);
    imageMode(CENTER);
    image(ball,px,py,2*tx,2*ty);
  }
  
}