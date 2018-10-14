class Drop{
  //Datos
  float x;
  float y1;
  float y2;
  float vely;
  float w;
  float trans;
  char letra;
  
  //Constructor
  Drop(){
    x = random(0,width);
    y1 = 0;
    y2 = random(5,30);
    vely = random(5,10);
    w = random(2,5);
    trans = random(0,255);
    letra = 'v';
  }
  
  //Funcionalidad
  void showDrop(){
    //fill(178,0,198);
    //text(x,y1,letra);
    stroke(178,0,198,trans);
    //stroke(0,255,0,trans);
    strokeWeight(w);
    line(x,y1,x,y2);
  }
  
  void moveDrop(){
    y1 = y1 + vely;
    y2 = y2 + vely;
  }
  
  void repeatDrop(){
    if(y1 > height){
      y1 = -40;
      y2 = -10;
    }
  }
}