Spaceshipclass Spaceship extends Floater
{
  public Spaceship(){
    corners =3 ;
    xCorners = new int [] {-5, -3, 5};
    yCorners = new int [] {-5, 3, -5};
    myCenterX = 150;
    myCenterY = 150;
    myXspeed = 0;
    myYspeed = -5;
    myPointDirection = 0;
  }
}
