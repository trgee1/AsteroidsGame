private Spaceship rocket = new Spaceship();
private Star[] glowies;
private boolean accelerate;
private int hyperspace = 0;
private int hp = 150;
private int hitCount = 0;
private int score = 0;
private ArrayList<Asteroid> meteorite = 
new ArrayList<Asteroid>();

public void setup() 
{
  for(int i = 0; i < 20; i++){
    meteorite.add(i, new Asteroid());
  }
  size(800, 500);
  background(0);
  frameRate(60);
  glowies = new Star[75];
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
  for(int nI = 0; nI < meteorite.size(); nI++){
  stroke(250, 250, 250);
  noFill();
  meteorite.get(nI).show();
  meteorite.get(nI).move();
  if(dist(meteorite.get(nI).getX(), meteorite.get(nI).getX(), (float)rocket.getX(), (float)rocket.getY()) < 20){
    meteorite.remove(meteorite.get(nI));
    hp = hp - 15;
    hitCount++;
  }
  }
  if(accelerate == true){
    rocket.move();
  }
  textSize(15);
  fill(0,250,0);
  textAlign(LEFT);
  text("TELEPORTS REMAINING: " + (int)(10-hyperspace), 5, 50);
  text("HP: ", 5, 25);
  noStroke();
  fill(0, 250, 0);
  rect(40, 15, 150, 10);
  fill(250, 0, 0);
  rect(190-(15*hitCount), 15, 15*hitCount, 10);
  
  if(hp == 0){
    noLoop();
    textAlign(CENTER);
    fill(250, 250, 250);
    textSize(30);
    text("You Died!", 400, 250);
    textSize(15);
    text("Score: " + score, 400, 280);
  }
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
    rocket.turn(-30);
  }
  else if(key == 'd'){
    rocket.turn(30);
  }
  else if(key == 'q'){
    accelerate = false;
  }
  else if(key == 'h' && hyperspace < 10){
    rocket.hyperspace();
    hyperspace++;
  }
}


