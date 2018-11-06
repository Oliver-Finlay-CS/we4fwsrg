class Firework {
  
  float x;
  float y;
  color c;
  float diameter;
  float xSpeed;
  float ySpeed;
  float gravity;
  //int count = 1000000;
  
  Firework (float width, float height) {
    
    this.x = random (width);
    println(x);
    this.y = random (height);
    println(y);
    this.c = color( int(random(255)), int(random(255)), int(random(255)) );
    println(c);
    this.diameter = random(width*1/1);
    println (diameter);
    this.xSpeed = random(-500, 500);
    this.ySpeed = random(-500, 500);
    gravity = 0.5;
  } 
  
  void draw() {
    fill(c);
    ellipse(x, y, diameter, diameter);
  }
  
  void step() {
    x+= xSpeed;
    y+= ySpeed;
    
    ySpeed += gravity;
  }
}
