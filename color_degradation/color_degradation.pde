//Color variables
float r,g,b; //red, green, blue
float deg1; //Degradation in rectangle #1
float deg2; //Degradation in rectangle #2
float deg3; //Degradation in rectangle #3

void setup(){
  size(600,600); //window size
}

void draw(){
  //Displaying three little rectangles
  fill(255,0,0);
  rect(0,0,width/3,height/2);
  fill(0,255,0);
  rect(width/3,0,width/3,height/2);
  fill(0,0,255);
  rect(2*width/3,0,width/3,height/2);
  
  //Color degradation for big rectangle
  if(0 <= mouseX && mouseX < width/3){ //If mouse is over rectangle #1
    deg1 = map(mouseX,0,width/3,0,255);
    r = 255-deg1; //Red color decreases as position X in rectangle #1 increases
    g = deg1; //Green color increases as position X in rectangle #1 increases
    b = 0; //Blue color stays the same while position X remains in rectangle #1
  }
  if(width/3 <= mouseX && mouseX < 2*width/3){ //If mouse is over rectangle #2
    deg2 = map(mouseX,width/3,2*width/3,0,255);
    r = 0; //Red color stays the same while position X remains in rectangle #2
    g = 255 - deg2; //Green color decreases as position X in rectangle #2 increases
    b = deg2; //Blue color increases as position X in rectangle #2 increases
  }
  if(2*width/3 <= mouseX && mouseX <= width){ //If mouse is over rectangle #3
    deg3 = map(mouseX,2*width/3,width,0,255);
    r = deg3; //Red color increases as position X in rectangle #3 increases
    g = 0; //Green color stays the same while position X remains in rectangle #3
    b = 255 - deg3; //Blue color decreases as position X in rectangle #3 increases
  }
  
  //Displaying big rectangle
  fill(r,g,b);
  rect(0,height/2,width,height/2);
  
}