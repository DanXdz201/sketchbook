void tablero(){
  for (int j=0; j<8; j++) {
    for (int i=0; i<8; i++) {
      if ((i+j) % 2 == 0) {
        fill(R, G, B);
      } 
      else {
        fill(W);
      }
      rect(i*height/8, j*height/8, height/8, height/8);
     }
   }
}

float promedio(float a, float b){
  float res = (a+b)/2;
  return res;
}

boolean signo(float x){
  if(x > 0){
    boolean res = true;
    return res;
  }
  else{
    boolean res = false;
    return res;
  }
}