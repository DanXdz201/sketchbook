class Node {
  //Atributos
  String id;
  String parent;
  String value;
  String left;
  String right;
  //Constructor para un nodo raíz
  Node(int v) {
    id = "0";
    parent = null;
    value = str(v);
    left = null;
    right = null;
  }

  Node(int i, int p, int v) {
    id = str(i);
    parent = str(p);
    value = str(v);
    left = null;
    right = null;
  }

  //Métodos
}