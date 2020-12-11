class Bullet extends Floater{
  public Bullet(Spaceship rocket){
    myCenterX = rocket.getX();
    myCenterY = rocket.getY();
    myXspeed = rocket.getxSpd();
    myYspeed = rocket.getySpd();
    myPointDirection = rocket.getPointDirection();
    accelerate(5);
  }
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;  
  }
  float getX(){
    return (float)myCenterX;
  }
  float getY(){
    return (float)myCenterY;
  }
}
  
