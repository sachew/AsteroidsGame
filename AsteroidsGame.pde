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
