Ball[] balls = new Ball[4];  

int ballCount = 0;
Boolean endGame = false; 

void setup() {
  size(500, 600); 
  balls[0] = new Ball(width, height);
  balls[0].gameStart();
  ballCount = 1;
}

void draw() {
  background(255);
  if (ballCount == balls.length) { 
    ballCount = balls.length;
  }
  for (int i=0; i<ballCount; i++) {
    balls[i].gamePlay();
    balls[i].draw();
   
  }
  if (endGame == true) {
    println("Game is over");
    exit();
  }
  //println("Player 1:", score1, "\tPlayer 2:", score2);
}

void mouseClicked() {
  ballCount++;
  if (ballCount > balls.length) { 
    ballCount = balls.length;
    endGame = true;
  } 
  for (int i=(ballCount-1); i<ballCount; i++) {
    balls[i] = new Ball(width, height);
    balls[i].gameStart();
  }
}
