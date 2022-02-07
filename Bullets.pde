class Bullets {
  private float myX, myY;
  Bullets(int x) {
    myX = x + 50;
    myY = 650;
  }
  public void move() {
    myY -= 5;
  }
  public void show() {
    ellipse(myX, myY, 10, 10);
  }
  public int getY() {
    return (int)myY;
  }
  public int getX() {
    return (int)myX;
  }
}
