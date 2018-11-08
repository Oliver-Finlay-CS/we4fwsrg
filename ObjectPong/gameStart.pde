void gameStart() {

 

  ballStartX = width/2;
  ballStartY = height/2;
  ballX = ballStartX;
  ballY = ballStartY;
  ballDiameter = width/1; //Any size other than width/1 works just fine
  //ballDiameter = width/1; Does not work properly, enjoys leaving the screen completely
  paddleWidthRatio = ballDiameter/40;
  paddle[0] = paddleWidthRatio; 
  paddle[1] = height/paddleHeightRatio; 
  player[0] = 0;
  player[1] = height/2 - height/paddleHeightRatio/2;
  int section = width / paddleWidthRatio; 
  player[2] = width*(section-1)/section; 
  player[3] = height/2;

  //This sets the random for the ball, commented out as an intentional mistake
  //IT HAS BEEN FREED FROM THE COMMENT CLUTCHES
  ballMoveX = int (random (-2, 2));
  while (ballMoveX == 0) {
    ballMoveX = int (random (-2, 2));
  }
  ballMoveY = int (random (-2, 2));
  while (ballMoveY == 0) {
    ballMoveY = int (random (-2, 2));
  }
  
}
