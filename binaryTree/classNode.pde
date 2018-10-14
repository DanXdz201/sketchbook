class Node {
  //Atributos
  String value;
  String left;
  String right;
  String parent;

  //Constructor for a root node
  Node(int x) {
    parent = null;
    value = str(x);
    left = null;
    right = null;
  }
  
  Node(int x, int p) {
    parent = str(p);
    value = str(x);
    left = null;
    right = null;
  }

  //Métodos
  int factorial(int num) {
    int res;
    if (num == 0) {
      res = 1;
    } else {
      res = num * factorial(num-1);
    }
    return res;
  }
}