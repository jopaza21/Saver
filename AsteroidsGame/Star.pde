class Star {
  private float myX, myY, mySize, myColor;
  Star() {
    myX = (float)(Math.random()*width);
    myY = (float)(Math.random()*height);
    mySize = (float)(Math.random()*3 + 1);
    myColor = color(255);
  }
  public void show() {
    ellipse(myX, myY, mySize, mySize);
  }
}
