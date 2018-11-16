class Ball {

  int ballX;
  int ballY;
  final int ballStartX;
  final int ballStartY;
  final int ballDiameter;
  int ballMoveX;
  int ballMoveY;
  int directionX;
  int directionY;
  int ballSpeedX;
  int ballSpeedY;
  color c;
  int scorePlayer1 = 0;
  int scorePlayer2 = 0;

  Ball(float width, float height) {
    ballStartX = int(width/2);
    ballStartY = int(height/2);
    this.ballX = ballStartX;
    this.ballY = ballStartY;
    ballDiameter = int(width/70); 
    this.ballSpeedX = int (random (1, 5));
    this.ballSpeedY = int (random (1, 5));
    this.c = color(int(random(255)), int(random(255)), int(random(255)));
  } 

  void draw() {
   
    fill(c);
    ellipse(ballX, ballY, ballDiameter, ballDiameter);
  }

  void gameStart() {
    
    directionX = int (random (-2, 2));
    while (directionX == 0) {
      directionX = int (random (-2, 2));
    }
    directionY = int (random (-2, 2));
    while (directionY == 0) {
      directionY = int (random (-2, 2));
    }
  } 

  void gamePlay() {

    
    if (ballY <= 0 || ballY >= height) { 
    } else {
      if ( (ballY > 0 && ballY <= 0+(ballDiameter) ) || ( ballY < height && ballY >= height-(ballDiameter) )   ) { //BallMoveX & Y are too big for radii measure
        directionY = directionY * (-1);
      }
      if (ballY <= 0+(ballDiameter/2) ) { 
        ballY = 0+(ballDiameter/2);
      }
      if (ballY >= height-(ballDiameter/2) ) { 
        ballY = height-(ballDiameter/2);
      }
    }

    if (ballX < 0) { 
      scorePlayer1++;
      ballX = 0;
      ballY = ballY;
    }
    if (ballX > width) {
      scorePlayer2++;
      ballX = width;
      ballY = height;
    }

    if (ballX <= 0) {  
    } else {
      ballMoveX = ballSpeedX*directionX;
      ballMoveY = ballSpeedY*directionY;
      ballX += ballMoveX;
      ballY += ballMoveY;
    }
    println("Player 1:", scorePlayer1, "\tPlayer 2:", scorePlayer2);
  }

}
