class Spaceship extends Floater  
{  
   public Spaceship(){
      corners = 3;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      myColor = color(100,130,140);
      myCenterX = 50;
      myCenterY = 50;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
   }
   
   public void setX(double x){
     myCenterX = x;
   }
   public void setY(double x){
     myCenterY = x;
   }
   public void setDirection(double x){
     myPointDirection = x;
   }
   public void setXspeed(double x){
     myXspeed = x;
   }
   public void setYspeed(double x){
     myYspeed = x;
   }
   public double getX(){
     return myCenterX;
   }
   public double getY(){
     return myCenterY;
   }
   public double getDirection(){
     return myPointDirection;
   }
   public double getXspeed(){
     return myXspeed;
   }
   public double getYspeed(){
     return myYspeed;
   }
   
}
