class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    rotSpeed = ((double)(Math.random()*2)-1)*3;
    myXspeed = (double)(Math.random()*3)-1.5;
    myYspeed = (double)(Math.random()*3)-1.5;
    myColor = (int)(Math.random()*150)+50;
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -26;
    yCorners[0] = -14;
    xCorners[1] = 18;
    yCorners[1] = -14;
    xCorners[2] = 18;
    yCorners[2] = 30;
    xCorners[3] = -26;
    yCorners[3] = 30;
  }
  public void move(){
    super.move();
    super.turn(rotSpeed);
  }
  float getX(){
    return (float)myCenterX;
  }
  float getY(){
    return (float)myCenterY;
  }
}class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    rotSpeed = ((double)(Math.random()*2)-1)*3;
    myXspeed = (double)(Math.random()*3)-1.5;
    myYspeed = (double)(Math.random()*3)-1.5;
    myColor = (int)(Math.random()*150)+50;
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -26;
    yCorners[0] = -14;
    xCorners[1] = 18;
    yCorners[1] = -14;
    xCorners[2] = 18;
    yCorners[2] = 30;
    xCorners[3] = -26;
    yCorners[3] = 30;
  }
  public void move(){
    super.move();
    super.turn(rotSpeed);
  }
  float getX(){
    return (float)myCenterX;
  }
  float getY(){
    return (float)myCenterY;
  }
}
