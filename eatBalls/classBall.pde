class Ball{
  //Attributes
  float px;
  float py;
  float px_p;
  float py_p;
  float vx;
  float vy;
  float r;
  boolean mouse;
  
  //Constructor
  Ball(){
    px = random(r+2,width-r-1);
    py = random(r+2,height-r-1);
    r = 25;
    vx = 2;
    vy = 5;
  }
  
  Ball(float mx, float my){
    px = mx;
    py = my;
    r = 25;
    vx = 2;
    vy = 5;
  }
  //Methods
  void display(){
    ellipseMode(RADIUS);
    ellipse(px,py,r,r);
  }
  
  void move(){
    px_p = px;
    py_p = py;
    
    px = px + vx;
    py = py + vy;
    
    if (abs(px_p - px) < vx){
      px = r+1;
    }
    
    if (abs(py_p - py) < vy){
      py = r+1;
    }
  }
  
  void bounce(){
    if(px < r || px > 500-r){
      vx = vx*-1;
    }
    
    if(py < r || py > 500-r){
      vy = vy*-1;
    }
  }
  
  void change(){
    if (abs(mouseX-px) <= r && abs(mouseY-py) < r){
      fill(random(0,256),random(0,256),random(0,256));
      //delay(1000);
    }
  }
  
  void drag(float mx, float my){
    if(mousePressed && abs(mx-px)< r && abs(my-py) < r){
      px = mx;
      py = my;
    }
  }
  
}