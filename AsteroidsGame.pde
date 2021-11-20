Star [] sue;
Spaceship bob;
public void setup() {
  size(400,400);
  background(0);
  sue = new Star[100];
  for(int i = 0; i< sue.length; i++){
   sue[i] = new Star();
  }
  bob = new Spaceship(); 
}
public void draw(){
  background(0);
  for(int i = 0; i< sue.length; i++){
  sue[i].show();
  }
  
  if(keyPressed){
    if(key == 'a' || key =='A'){
      bob. turn(-10);
    }
    if(key == 'd' || key == 'D'){
      bob.turn(10);
    }
    if(key == 'w' || key =='W'){
      bob.accelerate(1);
    }
  }
  bob.move();
  bob.show();
}

