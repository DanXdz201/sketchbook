int[] xpos = new int [50];
int[] ypos = new int [50];
Ball[] balls = new Ball[10];

void setup(){
  size(500,500);
  for(int i = 0; i < xpos.length; i++){
    xpos[i] = 0;
    ypos[i] = 0;
  }
  for(int i = 0; i < balls.length; i++){
    balls[i] = new Ball();
  }
  //noStroke();
}

void draw(){
  background(255,0,0);
  //xpos[xpos.length-1] = mouseX;
  //ypos[ypos.length-1] = mouseY;
  
  //for(int i = 0; i < xpos.length-1; i++){
  //  xpos[i]= xpos[i+1];
  //  ypos[i]= ypos[i+1];
  //}
  
  //for(int i = 0; i < xpos.length; i++){
  //  fill(5+i*5);
  //  ellipseMode(CENTER);
  //  ellipse(xpos[i],ypos[i],i+10,i+10);
  //}
  for(int i = 0; i < balls.length; i++){
    balls[i].display();
    balls[i].move();
    balls[i].bounce();
    //b[i].change();
    balls[i].drag(mouseX,mouseY);
  }
}

void mousePressed(){
  Ball b = new Ball(mouseX,mouseY);
  balls = (Ball[]) append(balls, b);
}