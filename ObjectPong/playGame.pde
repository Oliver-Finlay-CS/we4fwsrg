void playGame () {

  background(0); //This here be black

  
  ballX += ballMoveX; //origonally x+1 operation
  ballY += ballMoveY; //origonally x+1 operation

  
  if (ballX == paddle[0]+(ballDiameter/2) && ballY >= player[1] & ballY <= player[1] + paddle[1]) {
    ballMoveX *= (-1);
  }
  if (ballX == player[2]-(ballDiameter/2) && ballY >= player[3] & ballY <= player[3] + paddle[1]) {
    ballMoveX *= (-1); 
  }

 
  if (ballY == 0+(ballDiameter/2) || ballY == height-(ballDiameter/2) ) {
    ballMoveY = ballMoveY * (-1);
  }

  ballSquish(); 

 
  if (keyPressed == true & key == CODED) { 
    if (keyCode == UP) { 
      if (player[1] >= 5) { 
        player[1] -= 5; 
      }
      if (player[1] < 0) { 
        player[1] = 0;
      }
    }

    if (keyCode == DOWN) {
      if (player[1] + paddle[1] <= height) {
        player[1] += 5; 
      }
      if (player[1] + paddle[1] > height) {
        player[1] = height - paddle[1] - 1; 
      }
    }
  } 


  if (mouseY >=0 || mouseY - paddle[1] < height) {
    player[3] = mouseY;
  }
  if (mouseY >= height - paddle[1]) {
    player[3] = height - paddle[1] - 1;
  }
  
  

 
  fill(#ff00ff); //This here be fuchsia 
  ellipse(ballX, ballY, ballDiameter, ballDiameter);

  
  fill(#ffffff); //This here be white
  rect(player[0], player[1], paddle[0], paddle[1]);
  rect(player[2], player[3], paddle[0], paddle[1]);
  fill(#00ffff); //This here be aqua
}
