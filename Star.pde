class Star
{
  int myX,myY,myColor;
  Star(){
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  public void show(){
    fill(myColor);
    ellipse(myX,myY,5,5);
  }
}
Star [] sue;
public void setup() {
  size(400,400);
  background(0);
  sue = new Star[100];
  for(int i = 0; i< sue.length; i++){
   sue[i] = new Star();
  }
}
public void draw(){
  background(0);
  for(int i = 0; i< sue.length; i++)
  sue[i].show();
}
