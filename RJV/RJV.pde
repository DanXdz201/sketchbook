int x;

void setup(){
  size(500,500);
}

void draw(){
  if(mousePressed){
    x = int(random(1,7));
    println(x);
    fill(255);
    rect(125,125,250,250);
    switch(x){
      case 1:
      fill(0);
      ellipse(250,250,50,50);
      break;
      case 2:
      fill(0);
      ellipse(155,155,50,50);
      ellipse(345,345,50,50);
      break;
      case 3:
      fill(0);
      ellipse(250,250,50,50);
      ellipse(155,155,50,50);
      ellipse(345,345,50,50);
      break;
      case 4:
      fill(0);
      ellipse(155,155,50,50);
      ellipse(155,345,50,50);
      ellipse(345,155,50,50);
      ellipse(345,345,50,50);
      break;
      case 5:
      fill(0);
      ellipse(155,155,50,50);
      ellipse(155,345,50,50);
      ellipse(345,155,50,50);
      ellipse(345,345,50,50);
      ellipse(250,250,50,50);
      break;
      case 6:
      fill(0);
      ellipse(155,155,50,50);
      ellipse(155,345,50,50);
      ellipse(345,155,50,50);
      ellipse(345,345,50,50);
      ellipse(155,255,50,50);
      ellipse(345,255,50,50);
      break;
      
    }
}
}