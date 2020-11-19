private Spaceship rocket = new Spaceship();
private Star[] glowies;
private boolean accelerate;
private int hyperspace = 0;

public void setup() 
{
  size(800, 800);
  background(0);
  frameRate(60);
  glowies = new Star[150];
  for(int i = 0; i < glowies.length; i++){
    glowies[i] = new Star();
  }
  if(accelerate == true){
    
  }
}
public void draw() 
{
  background(25,10,30);
  rocket.show();
  for(int i = 0; i < glowies.length; i++){
    glowies[i].show();
  }
  if(accelerate == true){
    rocket.move();
  }
  textSize(20);
  //This is for later parts
  //text("HP: ", 5, 20);
  text("TELEPORTS LEFT: " + (int)(5-hyperspace), 5, 50);
}
public void keyPressed(){
  if(key == 'w'){
    rocket.move();
    rocket.accelerate(0.05);
    accelerate = true;
  }
  else if(key == 's'){
    rocket.move();
    rocket.accelerate(-0.05);
    accelerate = true;
  }
  else if(key == 'a'){
    rocket.turn(-10);
  }
  else if(key == 'd'){
    rocket.turn(10);
  }
  else if(key == 'h' && hyperspace < 5){
    rocket.hyperspace();
    hyperspace++;
  }
}


