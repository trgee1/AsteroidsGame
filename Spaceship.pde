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
  
  myColor = 225;   
  myCenterX = 400;
  myCenterY = 400; //holds center coordinates   
  myXspeed = 1; 
  myYspeed = 0; //holds the speed of travel in the x and y directions   
  myPointDirection = 0;
  }

  public void hyperspace(){
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);
  
  }
}
