class Base {
  //Atributos
  char letra;
  int valor;
  //Constructor
  Base() {
    valor = int(random(63, 123));
    while (valor > 90 && valor < 97) {
      valor = int(random(63, 123));
    }
    if (valor == 63) {
      valor = 32;
    }
    if (valor == 64) {
      valor = 46;
    }
    letra = (char) valor;
  }
  //Métodos
  void showData(){
    print(letra);
  }
}