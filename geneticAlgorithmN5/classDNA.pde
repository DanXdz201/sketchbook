class DNA{
  //Atributos
  Base [] myGenes;
  
  //Constructor
  DNA(int tam){
    myGenes = new Base[tam];
    for(int i = 0; i < tam; i++){
      myGenes[i] = new Base();
    }
  }
  
  //Métodos
  void showData(){
    for(int i = 0; i < myGenes.length; i++){
      myGenes[i].showData();
    }
    println();
  }
}