Population myPop;

void setup(){
  myPop = new Population(10,19);
  myPop.calcPopFitness("To be or not to be.");
  myPop.printAll();
}

void draw(){
}