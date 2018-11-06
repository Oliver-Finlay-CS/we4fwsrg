//Must create main program to handle class, basic level
Firework[] fireworks =  new Firework[100];

//Global Variables

void setup() {
  size(1000,1000);
  for (int i=0; i < fireworks.length; i++){
  fireworks[i] = new Firework(width, height);
  }
}


void draw() {
  background(255);
  for (int i=0; i < fireworks.length; i++) {
  fireworks[i].step();
  fireworks[i].draw();


}

}
  void mouseClicked() {
    for (int i=0; i < fireworks.length; i++){
      fireworks[i] = new Firework (width, height);
    }
  }
