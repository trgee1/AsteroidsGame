private Spaceship rocket = new Spaceship();
private Star[] glowies;
private boolean accelerate;
private int hyperspace = 0;
private ArrayList<Asteroid> meteorite = 
new ArrayList<Asteroid>();

public void setup() 
{
  for(int i = 0; i <= 30; i++){
    meteorite.add(i, new Asteroid());
  }
  size(1000, 1000);
  background(0);
  frameRate(60);
  glowies = new Star[200];
  for(int i = 0; i < glowies.length; i++){
    glowies[i] = new Star();
  }
  if(accelerate == true){
    
  }
}
public void draw() 
{
  background(30,10,50);
  rocket.show();
  for(int i = 0; i < glowies.length; i++){
    glowies[i].show();
  }
  for(int i = 0; i < meteorite.size(); i++){
  stroke(250, 250, 250);
  meteorite.get(i).show();
  meteorite.get(i).move();
  }
  if(accelerate == true){
    rocket.move();
  }
  textSize(15);
  //This is for later parts
  //text("HP: ", 5, 20);
  fill(250,250,250);
  text("TELEPORTS REMAINING: " + (int)(10-hyperspace), 5, 50);
}
public void keyPressed(){
  if(key == 'w'){
    rocket.move();
    rocket.accelerate(0.03);
    accelerate = true;
  }
  else if(key == 's'){
    rocket.move();
    rocket.accelerate(-0.03);
    accelerate = true;
  }
  else if(key == 'a'){
    rocket.turn(-25);
  }
  else if(key == 'd'){
    rocket.turn(25);
  }
  else if(key == 'q'){
    accelerate = false;
  }
  else if(key == 'h' && hyperspace < 10){
    rocket.hyperspace();
    hyperspace++;
  }
}


