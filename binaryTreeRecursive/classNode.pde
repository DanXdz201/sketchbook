class Node{
  String id;
  String parent;
  String value;
  String left;
  String right;
  
  //Constructor del nodo raíz
  Node(int i, int v){
    id = str(i);
    parent = null;
    value = str(v);
    left = null;
    right = null;
  }
  
  //Constructor para otros nodos
  Node(int i, int v, int p){
    id = str(i);
    parent = str(p);
    value = str(v);
    left = null;
    right = null;
  }
  
}