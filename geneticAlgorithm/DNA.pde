class DNA{
  char [] myGenes; //Array de Genes
  
  DNA(int numElements){
    myGenes = new char[numElements];
    for (int i = 0; i < numElements; i++){
      int aleatorio = int(random(63,122)); 
      if(aleatorio == 63){
        myGenes[i] = 32;
      }
      else if (aleatorio == 64){
        myGenes[i] = 46;
      }
      else{
        myGenes[i] = char(aleatorio);
      }
    }
  }
  
  void printData(){
    for (int i = 0; i < myGenes.length-1; i++){
      print(myGenes[i]);
    }
    println(myGenes[myGenes.length-1]);
  }
  
  int calcFitness(String target){
    int score = 0;
    for (int i = 0; i < target.length(); i++){
      if(target.charAt(i) == myGenes[i]){
        score++;
      }
    }
    return score;
  }
}