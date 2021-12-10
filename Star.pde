class Star
{
  private int myX,myY,myColor;
  public Star(){
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  public void show(){
    fill(myColor);
    ellipse(myX,myY,5,5);
  }
}

