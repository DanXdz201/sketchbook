class Population{
  DNA [] myPop;
  int [] popScore;
  
  Population(int numInd, int numElements){
    myPop = new DNA[numInd];
    popScore = new int[numInd];
    for (int i = 0; i < myPop.length; i++){
      myPop[i] = new DNA(numElements);
    }
  }
  
  void printAll(){
    for(int i = 0; i < myPop.length; i++){
      myPop[i].printData();
      println(popScore[i]);
      println("-----------------------");
    }
  }
  
  void calcPopFitness(String miFrase){
    for(int i = 0; i < myPop.length; i++){
      popScore[i] = myPop[i].calcFitness(miFrase);
    }
  }
}