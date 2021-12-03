class Asteroid extends Floater {
  private double rotSpeed;
  Asteroid() {
    myColor = color(255);
    corners = 6;
    myCenterX = Math.random() * width; myCenterY = Math.random() * height;
    rotSpeed = 2;
    myPointDirection = (Math.random() * Math.PI);
    myXspeed = Math.random() * 6 - 3;
    myYspeed = Math.random() * 6 - 3;
  }
  public void xOfShape(int x1, int x2, int x3, int x4, int x5, int x6) {
    xCorners = new int[]{x1, x2, x3, x4, x5, x6};
  }
  public void yOfShape(int y1, int y2, int y3, int y4, int y5, int y6) {
    yCorners = new int[]{y1, y2, y3, y4, y5, y6};
  }
  public void move() {
    turn(rotSpeed);
    super.move();
  }
}
