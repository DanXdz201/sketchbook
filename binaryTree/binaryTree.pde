//Título: Árbol Binario
//Autor: Víctor de Jesús Medrano Zarazúa
//Parte 1: Estructura del árbol

int [] x = {2, 1, 10, 9, 8, 7, 12, 6, 3};
Node root;
Tree arbolito;

void setup() {
  root = new Node(x[0]);
  arbolito = new Tree(root);
  for(int i = 1; i < x.length; i++){ 
    arbolito.addValue(x[i]);
  }
  int nodo = 7;
  println("Id: ", arbolito.myNodes[nodo].id);
  println("Padre: ", arbolito.myNodes[nodo].parent);
  println("Valor: ", arbolito.myNodes[nodo].value);
  println("Izq: ", arbolito.myNodes[nodo].left);
  println("Der: ", arbolito.myNodes[nodo].right);
}

void draw() {
}