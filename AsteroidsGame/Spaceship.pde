class Spaceship extends Floater {
  private int limit;
  Spaceship() {
    corners = 4;
    myCenterX = 200; myCenterY = 200;
    xCorners = new int[]{16, -8, -4, -8}; 
    yCorners = new int[]{0, -8, 0, 8};
    myColor = color(255,255,255);
    limit = 4;
  }
  public void hyperspace() {
    initBoopy();
    myCenterX = Math.random()*400;
    myCenterY = Math.random()*400;
    myPointDirection = Math.random() * 300;
    myXspeed = 0;
    myYspeed = 0;
  }
  public void speedlimit(double r) {
    if(myXspeed > limit) { myXspeed -= r; }
    if(myXspeed < -limit) { myXspeed += r; }
    if(myYspeed > limit) { myYspeed -= r; }
    if(myYspeed < -limit) { myYspeed += r; }
  }
}
