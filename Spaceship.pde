class Spaceship extends Floater
{
  double space = Math.random()*2-1;
  double myX;
  double myY;
  public Spaceship(){
    corners =3 ;
    xCorners = new int [] {17, -11, -11};
    yCorners = new int [] {0, -10, 15};
    myCenterX = (int)(Math.random()*800)+50;
    myCenterY = (int)(Math.random()*800)+50;
    myXspeed = 0.01;
    myYspeed = -0.01;
    myPointDirection = 0;
    myColor = 250;
  }
 public double getX(){return myCenterX;}
 public double getY(){return myCenterY;}
 public double getPointDirection(){return myPointDirection;}
 public void hyperspace(){
   for(int s = 0; s<3; s++){
   myXspeed = 0;
   myYspeed = 0;
   myCenterX = (int)(Math.random()*800)+50;
   myCenterY = (int)(Math.random()*800)+50;
   }
 }
 public void moveAround(double X, double Y){
   myCenterX = X + (int)(Math.random()*20)+10;
   myCenterY = Y;
 }
}
