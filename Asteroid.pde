class Asteroid extends Floater
{
double rockSpeed;
  public Asteroid(){
    corners =5 ;
    xCorners = new int [] {(int)(Math.random()*15)+30, (int)(Math.random()*12)+24, (int)(Math.random()*14)-7,-20,-15,0};
    yCorners = new int [] {(int)(Math.random()*13)+26, (int)(Math.random()*24)-12, (int)(Math.random()*36)-18,1,(int)(Math.random()*18)+36,(int)(Math.random()*18)+36};
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);
    myXspeed = 2;
    myYspeed = 2;
    myPointDirection = 0;
    myColor = 255;
    myStroke = 250;
    rockSpeed = Math.random()*2-1;
  }
  
  public void move (){
  turn(rockSpeed); 
  super.move(); 
  }
  public double getX(){return myCenterX;}
 public double getY(){return myCenterY;}
 public double getPointDirection(){return myPointDirection;}
}

  
