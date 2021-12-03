import java.util.HashMap;
HashMap <String, Boolean> keys = new HashMap <String, Boolean>();

Spaceship randy;
Star [] boopy;
ArrayList <Asteroid> zach = new ArrayList <Asteroid>();
int turnRight, turnLeft;
double speed;
public void setup() {
  size(1200,800);
  randy = new Spaceship();
  boopy = new Star[100];
  initBoopy();
  frameRate(100);
  speed = .1;
  for(int i = 0; i < 10; i++) {
    initZach();
  }
  keys.put("w", false);
  keys.put("a", false);
  keys.put("d", false);
  keys.put(" ", false);
}
public void draw() {
  background(0);
  checkKeyVal();
  randy.move();
  randy.show();
  for(int i = 0; i < zach.size(); i++) {
    zach.get(i).move();
    zach.get(i).show();
  }
  for(int i = 0; i < boopy.length; i++) {
    fill(255);
    boopy[i].show();
  }
}
public void keyPressed() {
  switch(key) {
    case 'w':
      keys.put("w", true);
      break;
    case 'a':
      keys.put("a", true);
      break;
    case 'd': 
      keys.put("d", true);
      break;
    case ' ': //for bullets
      keys.put(" ", true);
      break;
  }
  if(key == 'q') {
    randy.hyperspace();
  }
}
public void keyReleased() {
  switch(key) {
    case 'w': 
      keys.put("w", false);
    case 'a':
      keys.put("a", false);
      break;
    case 'd':
      keys.put("d", false);
      break;
    case ' ':
      keys.put(" ", false);
      break;
  }
}
public void checkKeyVal() {
  if(keys.get("w") == true) {
    randy.accelerate(speed);
    randy.speedlimit(speed);
  }
  if(keys.get("a") == true) {
    randy.turn(-3);
  }
  if(keys.get("d") == true) {
    randy.turn(3);
  }
  if(keys.get(" ") == true) {
  }
}
public void initBoopy() {
  for(int i = 0; i < boopy.length; i++) {
    boopy[i] = new Star();
  }
}
public void initZach() {
  Asteroid roid = new Asteroid();
  int x1 = -11, x2 = -5, x3 = -11, x4 = 6, x5 = 13, x6 = 7;
  int y1 = -8, y2 = 0, y3 = 8, y4 = 10, y5 = 0, y6 = -7;
  roid.xOfShape(x1, x2, x3, x4, x5, x6);
  roid.yOfShape(y1, y2, y3, y4, y5, y6);
  zach.add(roid);
}
