-int [] x = {13,3,4,19,10,17};
Node root; //Declarando nodo
Tree arbolito;

void setup(){
  root = new Node(x[0]); //Inicializar nodo
  arbolito = new Tree(root);
  //println(arbolito.checkSide(x[1],x[0]));
  for(int i = 1; i < x.length; i++){
    arbolito.createNode(arbolito.myNodes[0], x[i]);
  }
  
  for(int i = 0; i < x.length; i++){
    arbolito.printData(i);
    println("-----------");
  }
}

void draw(){
}