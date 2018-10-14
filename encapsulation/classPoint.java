import processing.core.*;

class Point{
  //Attributes
  private PApplet app;
  float g;
  private float px;
  float py;
  
  //Constructor
  Point(PApplet app_){
    app = app_;
    g = 20;
    px = 100;
    py = 100;
  }
  
  Point(PApplet app_, float px_, float py_, float g_){
    app = app_;
    g = g_;
    px = px_;
    py = py_;
  }
  //Methods
  void display(){
    app.strokeWeight(g);
    app.point(px,py);
  }
  
}