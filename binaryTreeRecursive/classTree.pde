class Tree {

  Node [] myNodes; //Declarando array

  //Plantando árbol: Definiendo nodo raíz
  Tree(Node n) {
    myNodes = new Node[1]; //Inicializando array
    myNodes[0] = n;
  }

  //Métodos
  String checkSide(int newVal, Node n) {
    String lado;
    if (newVal < int(n.value)) {
      lado = "left";
    } else {
      lado = "right";
    }
    return lado;
  }

  boolean checkNull(Node n, String lado) {
    boolean empty = false;
    if (lado == "left"){
      if(n.left == null){
        empty = true;
      }
    }
    if (lado == "right"){
      if(n.right == null){
        empty = true;
      }
    }
    return empty;
  }

  void printNodeData(int val) {
    println(myNodes[val].id);
    println(myNodes[val].parent);
    println(myNodes[val].value);
    println(myNodes[val].left);
    println(myNodes[val].right);
    println("----------------");
  }

  void addLeftChild(Node n) {
    n.left = str(myNodes.length);
  }
  
  void addRightChild(Node n) {
    n.right = str(myNodes.length);
  }
 
  void createNode(int nodeVal, Node parent){
    if(checkSide(nodeVal, parent) == "left"){
      if (checkNull(parent,"left")){
        addLeftChild(parent);
        Node n = new Node(myNodes.length, nodeVal, int(parent.id));
        myNodes = (Node[]) append(myNodes, n);
      }
      else{
        createNode(nodeVal, myNodes[int(parent.left)]); //Recursivo
      }
    }
    if(checkSide(nodeVal, parent) == "right"){
      if (checkNull(parent,"right")){
        addRightChild(parent);
        Node n = new Node(myNodes.length, nodeVal, int(parent.id));
        myNodes = (Node[]) append(myNodes, n);
      }
      else{
        createNode(nodeVal, myNodes[int(parent.right)]); //Recursivo
      }
    }
  }
 
}