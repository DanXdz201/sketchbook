class Node {
  //Atributos
  String id;
  String value;
  String left;
  String right;
  String parent;

  //Constructor for a root node
  Node(int x) {
    id = "0";
    parent = null;
    value = str(x);
    left = null;
    right = null;
  }
  
  //Constructor for a child node
  Node(int x, int p, int i) {
    id = str(i);
    parent = str(p);
    value = str(x);
    left = null;
    right = null;
  }
}