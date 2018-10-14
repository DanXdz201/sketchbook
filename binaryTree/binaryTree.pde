int [] x = {2, 1, 10, 9, 8, 7, 12, 6, 3};
Node root;
Tree arbolito;

void setup() {
  root = new Node(x[0]);
  arbolito = new Tree(root);
  arbolito.addNode(x[1]);
  arbolito.addNode(x[2]);
  arbolito.addNode(x[3]);
}

void draw() {
}