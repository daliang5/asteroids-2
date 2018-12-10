//your variable declarations here
Spaceship ship = new Spaceship();
Star[] space = new Star[200];
ArrayList<Asteroids> ass = new ArrayList<Asteroids>();

int numAss = 10;

boolean left = false;
boolean gas = false;
boolean right = false;
boolean brake = false;

public void setup() 
{
  size(1000, 600);
  ship.setX(width/2);
  ship.setY(height/2);
  for(int i = 0; i< space.length;i++) space[i] = new Star();
  for(int i = 0; i< numAss ;i++) ass.add(new Asteroids());
}
public void draw() 
{
  background(0);
  ship.move();
  ship.show();
  
  for(int i = 0; i< space.length;i++) space[i].show();
  
  if(left == true) ship.turn(-5);
  if(right == true) ship.turn(5);
  if(gas == true) ship.accelerate(.5);
  if(brake == true) ship.accelerate(-.5);

  for(int i = 0; i< ass.size();i++){    
    if(dist(ship.getX(),ship.getY(),ass.get(i).getX(),ass.get(i).getY()) <= 45.0)
      ass.remove(i);
    ass.get(i).move();
    ass.get(i).show();
  }
}

  public void keyPressed() 
 {
   if (keyCode == 37) left=true;
   if (keyCode == 38) gas=true;
   if(keyCode == 40) brake = true;
   if (keyCode == 39) right = true;
   if (key == 'c') ship.hyperspace();
 }
 public void keyReleased()
 {
   if (keyCode == 37) left=false;
   if (keyCode==38) gas=false;
   if(keyCode == 40) brake = false;
   if (keyCode == 39) right = false;   
} 
