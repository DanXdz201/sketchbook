class Population {
  DNA [] myPop;
  int ind;
  int genes;

  Population(int i_, int g_) {
    ind = i_;
    genes = g_;
    myPop = new DNA[ind];
    for (int i = 0; i < ind; i++) {
      myPop[i] = new DNA(genes);
    }
  }
  void showText() {
    for (int i = 0; i < 500/32; i++) {
      myPop[i].showData();
      myPop[i].showText((32*(i+1)));
    }
  }
  
  void showFitness(String target){
    for (int i = 0; i < 500/32; i++) {
      println(myPop[i].calcFitness(target));
    }
  }
  
  void showTextFit(String target) {
    for (int i = 0; i < 500/32; i++) {
      print(myPop[i].calcFitness(target));
      print(", ");
      myPop[i].showData();
      myPop[i].showText((32*(i+1)));
    }
  }
  
  void createPool(){
    
  }
}