class DNA{
  String target;
  ArrayList <Letra> frase;
  
  DNA(String t){
    target = t;
    frase = new ArrayList<Letra>(target.length());
    for (int i = 0; i <= target.length(); i++){
      int aleatorio = int(random(63,122));
      Letra symbol = new Letra(char(aleatorio));
      frase.add(symbol);
    }
  }
  
  void display(){
    Letra l;
    for (int i = 0; i < frase.size(); i++){
      l = frase.get(i);
      l.display();  
    }
    println();
  }
  
  void generateText(int x, int y){
    Letra l;
    String texto="";
    for (int i = 0; i < frase.size(); i++){
      l = frase.get(i);
      texto = texto+l.symbol;
    }
    fill(0);
    textSize(28);
    text(texto,x,y);
  }
  
}