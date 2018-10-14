//Objects
Point p1;
Point p2;

void setup(){
  size(500,500);
  p1 = new Point(this);
  p2 = new Point(this, 250, 250, 30);
}

void draw(){
  background(255);
  p1.display();
  p2.display();
  p2.py++;
  println(p2.py);
}