class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    rotSpeed = ((double)(Math.random()*2)-1)*3;
    myXspeed = (double)(Math.random()*3)-1.5;
    myYspeed = (double)(Math.random()*3)-1.5;
    myColor = (int)(Math.random()*125)+75;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random()*-26)-10;
    yCorners[0] = (int)(Math.random()*-14)-10;
    xCorners[1] = (int)(Math.random()*18)+10;
    yCorners[1] = (int)(Math.random()*-20)-10;
    xCorners[2] = (int)(Math.random()*20)+10;
    yCorners[2] = (int)(Math.random()*0)+10;
    xCorners[3] = (int)(Math.random()*10)+10;
    yCorners[3] = (int)(Math.random()*22)+10;
    xCorners[4] = (int)(Math.random()*-12)-10;
    yCorners[4] = (int)(Math.random()*16)+10;
    xCorners[5] = (int)(Math.random()*-10)-10;
    xCorners[5] = (int)(Math.random()*-10)-10;
  }
  public void move(){
    super.move();
    super.turn(rotSpeed);
  }
  int getX(){
    return (int)myCenterX;
  }
  int getY(){
    return (int)myCenterY;
  }
}
