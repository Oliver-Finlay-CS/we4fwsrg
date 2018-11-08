void score () {
 
  if (ballX == 0+(ballDiameter/2) || ballX == width-(ballDiameter/2)) { 
    if (ballX == 0+(ballDiameter/2)) { 
      score[1] += 1;
    }
    if (ballX == width-(ballDiameter/2)) { 
      score[0] += 1;
    }
    
   
    ballX = ballStartX;
    ballY = ballStartY;
    

    
    /*
    ballMoveX = int (random (-2, 2)); 
    while (ballMoveX == 0) { 
      ballMoveX = int (random (-2, 2));
    } 
    ballMoveY = int (random (-2, 2)); 
    while (ballMoveY == 0) { 
      ballMoveY = int (random (-2, 2)); 
    }
    */
    
   
    player[1] = height/2 - height/paddleHeightRatio/2;
    
    //Old Debugging Code
    //println ("Score Board is: " + score[0] + " Player-1" + "     " + score[1] + " Player-2");
    //println("Middle: " + player[1]);
  }

  textSize(0.1*width);
  text("Player 1:\n" + score[0], (width*1/5)-(0.2*width), height*1/5); 
  
  text("Player 2:\n" + score[1], (width*3/5)-(0.1*width), height*1/5);
  println ("Score Board is: " + score[0] + " Player-1" + "     " + score[1] + " Player-2");
}
