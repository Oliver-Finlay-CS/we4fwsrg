class LeftPaddle {
}

int paddleWidthRatio = 10; 
int paddleHeightRatio = 10;
int [] paddle = {0, 0}; 
int [] player = new int [4]; 
int [] score = {0, 0}; {


paddleWidthRatio = int(width/10);
paddle[0] = paddleWidthRatio; 
paddle[1] = height/paddleHeightRatio; 
player[0] = 0;
player[1] = height/2 - height/paddleHeightRatio/2; 
int section = width / paddleWidthRatio; 
player[2] = width*(section-1)/section; 
player[3] = height/2;

}
