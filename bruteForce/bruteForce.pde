DNA miCromosoma;
ArrayList <DNA> chromSwarm = new ArrayList<DNA>(16); 
int y = 30;
int desp = 0;

void setup() {
  size(500, 500);
  frameRate(30);
  background(255);
  for (int i = 0; i < 16; i++) {
    miCromosoma = new DNA("To be or not to be");
    chromSwarm.add(miCromosoma);
    //miCromosoma.display();
    miCromosoma.generateText(100, y);
    y= y+30;
  }
}

void draw() {
  if(desp > 30){
    chromSwarm.remove(0);
    miCromosoma = new DNA("To be or not to be"); 
    chromSwarm.add(miCromosoma);
    desp = 0;
  }
  
  for (int i = 0; i < 16; i++) {
    if (y>500) {
      y = 30;
      background(255);
    }
    miCromosoma = chromSwarm.get(i);
    miCromosoma.generateText(80, y-desp);
    y= y+30;
  }  
  desp = desp+10;
  //delay(80);
}