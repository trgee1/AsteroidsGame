  myCenterX = 400;
  myCenterY = 250; //holds center coordinates   
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
