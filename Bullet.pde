class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myColor = color(200,0,0);
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getDirection();
    accelerate(3.0);
  }
  
  public void show(){
    fill(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 7, 7);
  }
  public void move(){
     //change the x and y coordinates by myXspeed and myYspeed       
     myCenterX += myXspeed;    
     myCenterY += myYspeed;  
   }
  
  public double getX(){
    return myCenterX;
  }
  
  public double getY(){
    return myCenterY;
  }
}
