Star [] sue;
Spaceship bob;
Asteroid ship;
double X;
double Y;
ArrayList <Asteroid> fleet = new ArrayList <Asteroid>();
ArrayList <Spaceship> group = new ArrayList <Spaceship>();
int move = (int)(Math.random())-1;
//double hyperspace = Math.random()*800;
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
  for(int s = 0; s<3; s++){
  bob = new Spaceship(); 
  group.add(s, bob);
  }
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
  for(int s = 0; s<group.size(); s++){
    group.get(s).show();
    group.get(s).move();
  }
  for(int t = 0; t<fleet.size(); t++){
   ((Floater)(fleet.get(t))).turn(move);
  }
 // for(int w = fleet.size()/2; w < fleet.size(); w++){
   // ((Floater)(fleet.get(w))).turn(-1);
 // }
 // for(int k = 0; k<ship.length; k++){
    //ship[k].show();
for(int a = 0; a<3; a++){
  if(keyPressed){
    if(key == 'a' || key =='A'){
      group.get(a).turn(-10);
    }
    if(key == 'd' || key == 'D'){
      group.get(a).turn(10);
    }
    if(key == 'w' || key =='W'){
      group.get(a).accelerate(1);
    }
    if(key == 'h' || key == 'H'){
     group.get(0).hyperspace();
     X = (group.get(0).getX());
     Y = (group.get(0).getY());
     //get 0's x coordinate
     //get 0's my coorindate
     //set 1's x coordnatiet ot be 0's x coordinate + 40
     //set 12s x coordnatiet ot be 0's x coordinate + 40
     group.get(1).moveAround(X,Y);
     group.get(2).moveAround(X,Y);
   }
  }
  group.get(a).move();
  group.get(a).show();
 }
 }
