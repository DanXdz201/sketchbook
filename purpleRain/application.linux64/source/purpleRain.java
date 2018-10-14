import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class purpleRain extends PApplet {

//1. Crear objeto
Drop[] d = new Drop[500];

//2. Estructura principal
public void setup(){
  
  
  for(int i = 0; i < d.length; i++){
    d[i] = new Drop();
  }
  //d[1] = new Drop();
  //d[2] = new Drop();
  //d[3] = new Drop();
}

public void draw(){
  background(200);
  for(int i = 0; i < d.length; i++){
    d[i].showDrop();
    d[i].moveDrop();
    d[i].repeatDrop();
  }
}
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
  public void showDrop(){
    //fill(178,0,198);
    //text(x,y1,letra);
    stroke(178,0,198,trans);
    //stroke(0,255,0,trans);
    strokeWeight(w);
    line(x,y1,x,y2);
  }
  
  public void moveDrop(){
    y1 = y1 + vely;
    y2 = y2 + vely;
  }
  
  public void repeatDrop(){
    if(y1 > height){
      y1 = -40;
      y2 = -10;
    }
  }
}
  public void settings() {  size(500,500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "purpleRain" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
