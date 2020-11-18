Spaceship ship1 = new Spaceship();
Star[] stars = new Star[200];

public void setup() 
{
  size(500,500);
  for(int i=0; i<stars.length; i++){
    stars[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  ship1.show();
  ship1.move();
  for(int i=0; i<stars.length; i++){
    stars[i].show();
  }
}
public void keyPressed(){
  if(key=='d'){
    ship1.turn(15);
  } else if(key == 'a'){
    ship1.turn(-15);
    
  } else if(key == ' '){
    ship1.accelerate(.2);
  } else if(key == 'h'){
    ship1.setXspeed(0);
    ship1.setYspeed(0);
    ship1.setX(Math.random()*500);
    ship1.setY(Math.random()*500);
    ship1.setDirection(Math.random()*360);
  }
}
