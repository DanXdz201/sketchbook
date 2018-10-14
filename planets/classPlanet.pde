class Planet{
  //1. Datos
  float x,y,diam;
  float R,G,B;
  float radius,a,e,theta;
  
  //2. Constructor
  Planet(float tempA,float tempE,float tempD,float tempR,float tempG,float tempB){
    //x = tempX;
    //y = tempY;
    diam = tempD;
    R = tempR;
    G = tempG;
    B = tempB;
    a = tempA;
    e = tempE;
    theta = 0;
  }
  //3. Funcionalidad
  void showPlanet(){
    smooth();
    fill(R,G,B);
    ellipse(x,y,diam,diam);
  }
  
  void movePlanet(){
    radius = (a*(1-pow(e,2)))/(1+(e*cos(radians(theta))));
    x = (width/2)+10*radius*cos(radians(theta));
    y = (height/2)+10*radius*sin(radians(theta));
    theta = theta + 5;
    println(x,y);
  }
  
}