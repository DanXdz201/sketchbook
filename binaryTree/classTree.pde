class Tree {
  //Atributos
  Node [] myNodes = new Node[1];

  //Constructor
  Tree(Node root) {
    myNodes[0] = root; //Raíz del árbol
  }
  
  //Métodos
  
  //Agregar nodo a la izquierda
  //Datos del nodo nuevo: (id, valor) + Datos del nodo padre
  void leftNode(int id, int val, Node padre) {
    //Se pone el id del futuro nodo nuevo que estará a la izq de nodo padre
    padre.left = str(id);
    //Se crea el nuevo nodo, se le da un valor, se le asigna un padre y un id
    Node n = new Node(val, int(padre.id), id);
    //Se agrega nuevo nodo al árbol
    myNodes = (Node []) append(myNodes, n);
  }
  
  //Agregar nodo a la derecha
  //Datos del nodo nuevo: (id, valor) + Datos del nodo padre
  void rightNode(int id, int val, Node padre) {
    padre.right = str(id);
    Node n = new Node(val, int(padre.id), id);
    myNodes = (Node []) append(myNodes, n);
  }

  boolean selectSide(int val, int n) {
    boolean empty = false;
    if (val <= int(myNodes[n].value) && myNodes[n].left == null) {
      leftNode(myNodes.length, val, myNodes[n]);
      empty = true;
    }
    if (val > int(myNodes[n].value) && myNodes[n].right == null) {
      rightNode(myNodes.length, val, myNodes[n]);
      empty = true;
    }
    return empty;
  }

  void addValue(int val) {
    int next = 0;
    boolean test = selectSide(val, next);
    while (test == false) {
      if (val <= int(myNodes[next].value)) {
        next = int(myNodes[next].left);
        test = selectSide(val, next);
      } else {
        next = int(myNodes[next].right);
        test = selectSide(val, next);
        
      }
    }
  }
}