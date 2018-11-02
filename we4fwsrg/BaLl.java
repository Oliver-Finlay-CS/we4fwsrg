class Ball () {

  float x;
  float y;
  float diameter;
  float ballCount;
  color c;
  float xSpeed;
  float ySpeed;
  float gravity;
  
  Ball (float x, float y, float diameter, float xSpeed, float ySpeed, float gravity){
    this.x = x;
    this.y = y;
    this.c = color( int(random(255)), int(random(255)), int(random(255)) );
    this.diameter = random(diameter*1/50);
    this.xSpeed = random(-5, 5);
    this.ySpeed = random(-5, 5);
    gravity = 0.5;
  }
}
