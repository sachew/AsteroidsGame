//your variable declarations here
Spaceship ship1 = new Spaceship();
Star[] stars = new Star[200];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();

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
    if(dist(asteroids.get(i).getCenterX(),asteroids.get(i).getCenterY(), (float)ship1.getX(), (float)ship1.getY())<20){
      asteroids.remove(i);
    }
  }
  for(int i=0; i<bullets.size(); i++){
    bullets.get(i).show();
    bullets.get(i).move();
    if(bullets.get(i).getX() > width || bullets.get(i).getY() > height){
      bullets.remove(i);
    }
  }
  for(int i=0; i<bullets.size(); i++){
    for(int n=0; n<asteroids.size(); n++){
      if(dist((float)asteroids.get(n).getCenterX(),(float)asteroids.get(n).getCenterY(),(float)bullets.get(i).getX(),(float)bullets.get(i).getY()) < 20){
        bullets.remove(i);
        asteroids.remove(n);
        break;
      }
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
  } else if(key == 's'){
    bullets.add(new Bullet(ship1));
  }
}
