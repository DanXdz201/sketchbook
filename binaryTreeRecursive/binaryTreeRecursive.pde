int [] x = {13, 3, 4, 19, 10, 17};
Node root;
Tree miArbol;

void setup(){
  root = new Node(0, x[0]); //Creando nodo raíz
  miArbol = new Tree(root);
  for (int i = 1; i < x.length; i++){
    miArbol.createNode(x[i],miArbol.myNodes[0]);
  }
  ////println(miArbol.myNodes.length);
  for (int i = 0; i < x.length; i++){
    miArbol.printNodeData(i);
  }
}

void draw(){
}