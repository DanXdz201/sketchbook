class Population{
  //Atributos
  DNA[] myPop;
  
  Population(int ind, int genes){
    myPop = new DNA[ind];
    for(int i = 0; i < ind; i++){
      myPop[i] = new DNA(genes);
    }
  }
  
  void showData(){
    for(int i = 0; i < myPop.length; i++){
      myPop[i].showData();
    }
  }
}