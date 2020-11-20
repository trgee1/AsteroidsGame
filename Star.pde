class Star
{
  private int myX, myY, mySiz;
  public Star(){
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
    mySiz = (int)(Math.random()*2);
    
  }
  public void show(){
    fill(250, 250, 250);
    ellipse(myX, myY, mySiz + (int)(Math.random()*2), mySiz);
  }
}
