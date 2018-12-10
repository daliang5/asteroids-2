class Asteroids extends Floater{
  private int rotSpeed;
          int pointDirection = (int)(Math.random()*360);
        
  public Asteroids(){
    rotSpeed = (int)(Math.random()*6)-3;
    myCenterX = 0;
    myCenterY = 0;
    myColor = 100;
    myPointDirection = (int)(Math.random()*360);
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -20;
    yCorners[0] = -20;
    xCorners[1] = 20;
    yCorners[1] = -20;
    xCorners[2] = 20;
    yCorners[2] = 20;
    xCorners[3] = -20;
    yCorners[3] = 20;
  }
  public void move(){  
    turn(rotSpeed);
    super.move();
    //super.accelerate(.1);
    accelerated(3);
  }
   public void accelerated (double dAmount)   
  {
    double dRadians =pointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myDirectionX = ((dAmount) * Math.cos(dRadians));    
    myDirectionY = ((dAmount) * Math.sin(dRadians));      
  }   

  public void setX(int x){myCenterX = x;}
  public void setY(int y){myCenterY = y;}
  public int getX(){return (int)myCenterX;}
  public int getY(){return (int)myCenterY;}
  public void setDirectionX(double x){myDirectionX = x;}
  public double getDirectionX(){return myDirectionX;}
  public void setDirectionY(double y){myDirectionY = y;}
  public double getDirectionY(){return myDirectionY;}
  public void setPointDirection(int degrees){myPointDirection = degrees;}
  public double getPointDirection(){return myPointDirection;}
}
