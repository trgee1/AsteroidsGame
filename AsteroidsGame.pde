private Spaceship rocket = new Spaceship();
private Star[] glowies;
private boolean accelerate;
private int hyperspace = 0;
private int hp = 150;
private int hitCount = 0;
private int score = 0;
private ArrayList<Asteroid> meteorite = 
new ArrayList<Asteroid>();
private ArrayList<Bullet> pewPews = 
new ArrayList<Bullet>();

public void setup() 
{
  for(int i = 0; i < 50; i++){
    meteorite.add(i, new Asteroid());
  }
  size(800, 400);
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
  fill(250, 250, 250);
  rocket.show();
  for(int i = 0; i < glowies.length; i++){
    glowies[i].show();
  }
  for(int nI = 0; nI < meteorite.size(); nI++){
  stroke(250, 250, 250);
  noFill();
  meteorite.get(nI).show();
  meteorite.get(nI).move();
  float dizt = dist(meteorite.get(nI).getX(), meteorite.get(nI).getY(), rocket.getX(), rocket.getY());
  if(dizt < 21){
    meteorite.remove(meteorite.get(nI));
    hp = hp - 15;
    hitCount++;
  }
  }
  for(int mI = 0; mI < pewPews.size(); mI++){
    fill(250, 250, 250);
    pewPews.get(mI).move();
    pewPews.get(mI).show();
    if(pewPews.size() >= 10){
      pewPews.remove(mI);
    }
  }
    
  for(int mI = 0; mI < pewPews.size(); mI++){
    for(int nI = 0; nI < meteorite.size(); nI++){
      double bulletDist = dist(pewPews.get(mI).getX(), pewPews.get(mI).getY(), meteorite.get(nI).getX(), meteorite.get(nI).getY());
    if(bulletDist < 21){
      meteorite.remove(meteorite.get(nI));
      pewPews.remove(pewPews.get(mI));
      score += 100;
      break;
    }
    }
  }
  textAlign(LEFT);
  fill(0, 250, 0);
  text("ASTEROIDS LEFT: " + meteorite.size(), 5, 75);
  
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
  
  if(hp <= 0){
    noLoop();
    textAlign(CENTER);
    fill(250, 250, 250);
    textSize(30);
    text("You Died!", 400, 170);
    textSize(15);
    text("Score: " + score, 400, 200);
  }
  if(meteorite.size() <= 0){
    textAlign(CENTER);
    fill(250, 250, 250);
    textSize(30);
    text("YOU WIN!", 400, 170);
    textSize(15);
    text("Score: " + score, 400, 200);
  }
}
public void keyPressed(){
  if(key == 'w'){
    rocket.move();
    rocket.accelerate(0.03);
    accelerate = true;
  }
  if(key == 's'){
    rocket.move();
    rocket.accelerate(-0.03);
    accelerate = true;
  }
  if(key == 'a'){
    rocket.turn(-30);
  }
  if(key == 'd'){
    rocket.turn(30);
  }
  if(key == 'q'){
    rocket.stop();
  }
  if(key == 'h' && hyperspace < 10){
    rocket.hyperspace();
    hyperspace++;
  }
  if(key == ' ' && pewPews.size() < 10){
    pewPews.add(new Bullet(rocket));
  }
}

