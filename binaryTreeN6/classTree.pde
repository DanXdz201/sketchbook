class Tree {
  //Atributos
  Node [] myNodes; //Declarando Array de nodos

  //Constructor
  Tree(Node n) {
    myNodes = new Node[1];
    myNodes[0] = n;
  }
  //Métodos
  String checkSide(Node n, int val) {
    String res;
    if (val <= int(n.value)) {
      res = "left";
    } else {
      res = "right";
    }
    return res;
  }

  boolean checkEmpty(Node n, String side) {
    boolean empty = false;
    if (side == "left") {
      if (n.left == null) {
        empty = true;
      }
    }
    if (side == "right") {
      if (n.right == null) {
        empty = true;
      }
    }
    return empty;
  }

  void addLeftChild(Node n) {
    n.left = str(myNodes.length);
  }

  void addRightChild(Node n) {
    n.right = str(myNodes.length);
  }
  
  void createNode(Node n, int val){
    String lado;
    lado = checkSide(n, val);
    if(lado == "left"){
      boolean vacio;
      vacio = checkEmpty(n, lado);
      if(vacio == true){
        addLeftChild(n);
        Node nuevo;
        nuevo = new Node(myNodes.length,int(n.id),val);
        myNodes = (Node []) append(myNodes, nuevo);
      }
      else{
        createNode(myNodes[int(n.left)],val);
      }
    }
    
    if(lado == "right"){
      boolean vacio;
      vacio = checkEmpty(n, lado);
      if(vacio == true){
        addRightChild(n);
        Node nuevo;
        nuevo = new Node(myNodes.length,int(n.id),val);
        myNodes = (Node []) append(myNodes, nuevo);
      }
      else{
        createNode(myNodes[int(n.right)],val);
      }
    }
  }

  void printData(int i) {
    println(arbolito.myNodes[i].id);
    println(arbolito.myNodes[i].parent);
    println(arbolito.myNodes[i].value);
    println(arbolito.myNodes[i].left);
    println(arbolito.myNodes[i].right);
  }
}