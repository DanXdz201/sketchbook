class Population {
  DNA [] myPop;

  Population(int ind, int genes) {
    myPop = new DNA[ind];
    for (int i = 0; i < ind; i++) {
      myPop[i] = new DNA(genes);
    }
  }
  void showData() {
    for (int i = 0; i < 500/32; i++) {
      genoma = new DNA(19);
      genoma.showData();
      genoma.showText((32*(i+1)));
    }
  }
}