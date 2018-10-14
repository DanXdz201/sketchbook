class Ball{
  //1. Data
  float x;
  float y;
  float d;
  float vx;
  float vy;
  float r,g,b;
  
  //2. Constructor(s)
  Ball(){
    d = random(30,80);
    x = random(d/2, width-(d/2));
    y = random(d/2, height-(d/2));
    vx = random(3,7);
    vy = random(3,7);
    r = 255;
    g = 0;
    b = 0;
  }
  
  Ball(float tempD){
    d = tempD;
    x = random(d/2, width-(d/2));
    y = random(d/2, height-(d/2));
    vx = random(3,7);
    vy = random(3,7);
    r = 255;
    g = 0;
    b = 0;
  }
  
  //3. Functionality
  void display(){
    fill(r,g,b);
    ellipse(x,y,d,d);
  }
  
  void move(){
    x = x + vx;
    y = y + vy;
  }
  
  void bounce(){    
    if(x < d/2 || x > width-(d/2)){
      vx = vx*(-1);
      
      r =random(0,255);
      g =random(0,255);
      b =random(0,255);
      
      if (x < d/2){
        ellipse(d/2+1,y,d,d);
      }
      if(x > width - (d/2)){
        ellipse(width-(d/2)-1,y,d,d);
      }
    }
    
    if(y < d/2 || y > height-(d/2)){
      vy = vy*(-1);
      r =random(0,255);
      g =random(0,255);
      b =random(0,255);
      
      if (y < d/2){
        ellipse(x,d/2+1,d,d);
      }
      if (y > height - (d/2)){
        ellipse(x,height-(d/2)-1,d,d);
      }
    }
  }
  
  boolean overlaps(Ball tempB){
    if (dist(x,y,tempB.x,tempB.y) > ((tempB.d)/2+(d/2))){
      return false;
    }
    else{
      return true;
    }
  }
}