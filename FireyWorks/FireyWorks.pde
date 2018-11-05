//Must create main program to handle class, basic level
Firework[] firework =  new Firework[25];

//Global Variables

void setup() {
  size(500,600);
  for (int i=0; i < 
  firework[i] = new Firework(width, height);
}

void draw() {
  background(255);
  firework.step();
  firework.draw();
}
