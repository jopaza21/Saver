class Enemies {
  private int myX, myY, mySpeed;
  Enemies() {
    myX = (int)(Math.random() * 1200);
    mySpeed = (int)(Math.random() * 5 + 2);
    myY = 0;
  }
  public void move() {
    myY += mySpeed;
    if(myY > 800) {
      myY = 0;
      mySpeed = (int)(Math.random() * 5 + 2);
    }
  }
  public void show() {
    ellipse(myX, myY, 50, 50);
  }
  public int getY() {
    return myY;
  }
  public int getX() {
    return myX;
  }
  public void backZero() {
    myY = 0;
  }
}
