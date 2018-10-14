class Drop{
  //Datos
  float x;
  float y1;
  float y2;
  float vely;
  float w;
  float trans;
  float ts;
  float alpha;
  char letra;
  
  
  //Constructor
  Drop(){
    x = random(0,width);
    y1 = 0;
    y2 = random(5,30);
    vely = random(5,10);
    w = random(2,5);
    trans = random(0,255);
    letra = parseChar(byte(random(33,126)));
    ts = random(10,60);
    alpha = random(30,255);
  }
  
  //Funcionalidad
  void showDrop(){
    fill(0,255,0,alpha);
    textSize(ts);
    text(letra,x,y1);
    //stroke(178,0,198,trans);
    //stroke(0,255,0,trans);
    //strokeWeight(w);
    //line(x,y1,x,y2);
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