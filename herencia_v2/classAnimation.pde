class Pikachu{
  //Atributos
  Animation pika;
  float px;
  float py;
  float tx;
  float ty;
  float rate;
  
  Pikachu(){
    pika = new Animation("pik_", 4);
    px = width/2;
    py = height/2;
    tx = pika.getWidth()/2;
    ty = pika.getHeight()/2;
    rate = 0.2;
  }
  
  void mostrar(){
    pika.display(px,py,tx,ty,rate);
  }
  
  void mover(){
    px=px+4;
  }
  
  void trans(){
    if(px > width+tx){
      px = -tx;
    }
  }
}
class Animation {
  PImage[] images;
  int imageCount;
  float frame;
  
  Animation(String imagePrefix, int count) {
    imageCount = count;
    images = new PImage[imageCount];

    for (int i = 0; i < imageCount; i++) {
      // Use nf() to number format 'i' into four digits
      String filename = imagePrefix + nf(i, 1) + ".gif";
      images[i] = loadImage(filename);
    }
  }

  void display(float xpos, float ypos, float xtam, float ytam, float rate) {
    frame = (frame+rate) % imageCount;
    imageMode(CENTER);
    image(images[int(frame)], xpos, ypos, xtam, ytam);
  }
  
  int getWidth() {
    return images[0].width;
  }
  
  int getHeight() {
    return images[0].height;
  }
}