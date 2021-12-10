class Spaceship extends Floater
{
  public Spaceship(){
    corners =3 ;
    xCorners = new int [] {17, -11, -11};
    yCorners = new int [] {0, -10, 15};
    myCenterX = 150;
    myCenterY = 150;
    myXspeed = 0;
    myYspeed = -0.05;
    myPointDirection = 0;
    myColor = 250;
  }
 public double getX(){return myCenterX;}
 public double getY(){return myCenterY;}
 public double getPointDirection(){return myPointDirection;}
}
