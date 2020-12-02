//your variable declarations here
Spaceship ship1 = new Spaceship();
Star[] stars = new Star[200];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();

public void setup() 
{
  size(500,500);
  for(int i=0; i<stars.length; i++){
    stars[i] = new Star();
  }
  for(int i=0; i<20; i++){
    asteroids.add(new Asteroid());
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
  for(int i=0; i<asteroids.size()-1; i++){
    asteroids.get(i).show();
    asteroids.get(i).move();
    if(dist(asteroids.get(i).getCenterX(),asteroids.get(i).getCenterY(), ship1.getX(), ship1.getY())<20){
      asteroids.remove(i);
    }
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
