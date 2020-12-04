class Spaceship extends Floater  
{   
  public Spaceship(){
  corners = 3;  //the number of corners, a triangular floater has 3   
  xCorners = new int[corners];   
  yCorners = new int[corners];   
  xCorners[0] = -10;
  yCorners[0] = -8;
  xCorners[1] = 22;
  yCorners[1] = 0;
  xCorners[2] = -10;
  yCorners[2] = 8;
  
  myColor = 250;   
  myCenterX = 400;
  myCenterY = 200; //holds center coordinates   
  myXspeed = 0; 
  myYspeed = 0; //holds the speed of travel in the x and y directions   
  myPointDirection = 0;
  }

  public void hyperspace(){
    myCenterX = (int)(Math.random()*700)+50;
    myCenterY = (int)(Math.random()*400)+50;
    myXspeed = 0; 
    myYspeed = 0;
  }
  int getX(){
    return (int)myCenterX;
  }
  int getY(){
    return (int)myCenterY;
  }
}
