class Tree {
  //Atributos
  Node [] myNodes; //Declarar un array

  //Constructor
  Tree(Node root) {
    myNodes = new Node[1];//Inicializar array
    myNodes[0] = root;
  }

  //Métodos
  void printData(int id) {
    println(arbolito.myNodes[id].id);
    println(arbolito.myNodes[id].parent);
    println(arbolito.myNodes[id].value);
    println(arbolito.myNodes[id].left);
    println(arbolito.myNodes[id].right);
  }
  
  String checkSide(Node n, int val){
    String result;
    if(val <= int(n.value)){
      result = "left";
    }
    else{
      result = "right";
    }
    return result;
  }
  
  boolean checkEmpty(String side, Node n){
    boolean empty = false;
    if(side == "left"){
      if(n.left == null){
        empty  = true;
      }
    }
    
    if(side == "right"){
      if(n.right == null){
        empty  = true;
      }
    }
    return empty;
  }
  
  void addLeftChild(Node n, int val){
    n.left = str(val); 
  }
  
  void addRightChild(Node n, int val){
    n.right = str(val); 
  }
  
  void createNode(Node n, int val){
    String lado = checkSide(n, val);
    if(lado == "left"){
      if(checkEmpty("left",n)){
        Node nuevo;
        nuevo = new Node(myNodes.length,val,int(n.id));
      }
    }
  }
  
}