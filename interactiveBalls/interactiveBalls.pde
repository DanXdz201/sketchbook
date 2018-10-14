Ball b1;
Ball b2;
Ball b3;

void setup(){
  size(500,500);
  b1 = new Ball(40);
  b2 = new Ball(50);
  b3 = new Ball(100);
}

void draw(){
  background(0);
  b1.display();
  b1.move();
  b1.bounce();
  if (b1.overlaps(b2)){
    b1.vx= -b1.vx;
    b1.vy = -b1.vy;
  }
  
  if (b1.overlaps(b3)){
    b1.vx= -b1.vx;
    b1.vy = -b1.vy;
  }
  
  b2.display();
  b2.move();
  b2.bounce();
  if (b2.overlaps(b1)){
    b2.vx= -b2.vx;
    b2.vy = -b2.vy;
  }
  
  if (b2.overlaps(b3)){
    b2.vx= -b2.vx;
    b2.vy = -b2.vy;
  }
  b3.display();
  b3.move();
  b3.bounce();
  
  if (b3.overlaps(b1)){
    b3.vx= -b3.vx;
    b3.vy = -b3.vy;
  }
  
  if (b3.overlaps(b2)){
    b3.vx= -b3.vx;
    b3.vy = -b3.vy;
  }
  
  //b3.display();
  //b3.move();
  //b3.bounce();
}