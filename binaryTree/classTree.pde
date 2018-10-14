class Tree {
  //Atributos
  Node [] myNodes = new Node[1];

  //Constructor
  Tree(Node root) {
    myNodes[0] = root;
  }

  //Métodos 

  void leftNode(int val, int nodo) {
    myNodes[nodo].left = str(myNodes.length);
    Node n = new Node(val, nodo);
    myNodes = (Node []) append(myNodes, n);
  }
  
  void rightNode(int val, int nodo) {
    myNodes[nodo].right = str(myNodes.length);
    Node n = new Node(val, nodo);
    myNodes = (Node []) append(myNodes, n);
  }

  void addNode(int x) {
    if (x < int(myNodes[0].value)) {
      //Valor menor a la izquierda si esta vacío
      if (myNodes[0].left == null) {
        leftNode(x,0);
      } else {
        if (x < int(myNodes[1].value)) {
          leftNode(x,1);
        } else {
          rightNode(x,1);
        }
      }
    } else {
      //Valor mayor a la derecha si esta vacío
      if (myNodes[0].right == null) {
        myNodes[0].right = str(myNodes.length);
        Node n = new Node(x);
        myNodes = (Node []) append(myNodes, n);
      } else {
        if (x < int(myNodes[2].value)) {
          myNodes[2].left = str(myNodes.length);
          Node n = new Node(x, 2);
          myNodes = (Node []) append(myNodes, n);
        } else {
          myNodes[2].right = str(myNodes.length);
          Node n = new Node(x, 2);
          myNodes = (Node []) append(myNodes, n);
        }
      }
      //myNodes = (Node []) append(myNodes, n);
    }
    println("My Tree:");
    for (int i = 0; i < myNodes.length; i++) {
      print("Node ", i, ":");
      print(" Val: ", myNodes[i].value, ", ");
      print("Left: ", myNodes[i].left, ", ");
      print("Right: ", myNodes[i].right, ", ");
      println("Parent: ", myNodes[i].parent);
      println("-----------------------");
    }
  }
}