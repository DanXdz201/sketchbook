class Tree {
  //Atributos
  Node [] myNodes; //Declarando Array de nodos

  //Constructor
  Tree(Node n) {
    myNodes = new Node[1];
    myNodes[0] = n;
  }
  //Métodos
  String checkSide(int nuevo, int anterior) {
    String res;
    if (nuevo <= anterior) {
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

  void addLeftChild(Node n, int val) {
    n.left = str(val);
  }

  void addRightChild(Node n, int val) {
    n.right = str(val);
  }

  void printData(int i) {
    println(arbolito.myNodes[i].id);
    println(arbolito.myNodes[i].parent);
    println(arbolito.myNodes[i].value);
    println(arbolito.myNodes[i].left);
    println(arbolito.myNodes[i].right);
  }
}