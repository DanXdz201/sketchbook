int [] x = {13,23,4,19,10,17};
Node root; //Declarando nodo
Tree arbolito;

void setup(){
  root = new Node(x[0]); //Inicializar nodo
  arbolito = new Tree(root);
  //println(arbolito.checkSide(x[1],x[0]));
  String lado;
  lado = arbolito.checkSide(x[1],int(arbolito.myNodes[0].value));
  if(arbolito.checkEmpty(arbolito.myNodes[0],lado) == true && lado == "left"){
    arbolito.addLeftChild(arbolito.myNodes[0],x[1]);
  }
  if(arbolito.checkEmpty(arbolito.myNodes[0],lado) == true && lado == "right"){
    arbolito.addRightChild(arbolito.myNodes[0],x[1]);
  }
  arbolito.printData(0);
}

void draw(){
}