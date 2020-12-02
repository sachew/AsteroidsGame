
class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
    myColor = color(100,130,190);
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myXspeed = 1;
    myYspeed = 1;
    myPointDirection = 0;
    rotSpeed = 1;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public float getCenterX(){
    return (float)myCenterX;
  }
  public float getCenterY(){
    return (float)myCenterY;
  }
}
