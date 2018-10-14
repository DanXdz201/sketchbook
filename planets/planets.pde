//Crear objeto
Planet sun;
Planet earth;

//Estructura principal
void setup(){
  size(600,600);
  sun = new Planet(0,0.0167,80,255,176,0);
}

void draw(){
  background(0);
  sun.showPlanet();
  sun.movePlanet();
}