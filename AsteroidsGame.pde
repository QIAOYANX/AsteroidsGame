Star [] sue;
Spaceship bob;
Asteroid ship;
ArrayList <Asteroid> fleet = new ArrayList <Asteroid>();
public void setup() {
  size(800,800);
  background(0);
  sue = new Star[100];
  for(int i = 0; i< sue.length; i++){
   sue[i] = new Star();
  }
  for(int k = 0; k<25; k++){
  ship = new Asteroid();
  fleet.add(k, ship);
  }
  bob = new Spaceship(); 
}
public void draw(){
  background(0);
  for(int i = 0; i< sue.length; i++){
  sue[i].show();
  }
  for(int k = 0;k < fleet.size(); k++){
    fleet.get(k).show();
    fleet.get(k).move();
   float d = dist((float)(bob.getX()),(float)(bob.getY()),(float)(fleet.get(k).getX()),(float)(fleet.get(k).getY()));
    if(d<25){
    fleet.remove(k);
    }
  }
  //for(int t = 0; t<fleet.size()/2; t++){
  //  ((Asteroid)(fleet.get(t))).turn(1);
  //}
  //for(int w = fleet.size()/2; w < fleet.size(); w++){
  //  ((Asteroid)(fleet.get(w))).turn(-1);
  //}
 // for(int k = 0; k<ship.length; k++){
    //ship[k].show();
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
    if(key == 'h' || key == 'H'){
     fleet.get(a).hyperspace();
    }
  }
  bob.move();
  bob.show();
}
