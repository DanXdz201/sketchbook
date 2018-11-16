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
  
  void showData(){
    for(int i = 0; i < myGenes.length; i++){
      myGenes[i].showData();
    }
    println();
  }
  
  void showText(int posy){
    textSize(32);
    String texto = "";
    for(int i = 0; i < myGenes.length; i++){
      texto = texto + str(myGenes[i].letra);
    }
    text(texto, 75, posy);
  }
}