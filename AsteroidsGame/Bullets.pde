class Bullets extends Floater {
  public Bullets(Spaceship zacky) {
    myCenterX = zacky.getX();
    myCenterY = zacky.getY();
    myPointDirection = zacky.getPointDirection();
    accelerate(5);
  }
  public void show() {
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  public float getX() { return (float)myCenterX; }
  public float getY() { return (float)myCenterY; }
}
