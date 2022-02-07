import java.util.HashMap;
HashMap <String, Boolean> keys = new HashMap <String, Boolean>();

int bulletPoints = 1;
int base = 300 / (2*bulletPoints);
int x = 550;
ArrayList <Bullets> boop = new ArrayList <Bullets>();
ArrayList <Enemies> angry = new ArrayList <Enemies>();
public void setup() {
  size(1200, 800);
  background(0);
  noStroke();
  angry.add(new Enemies());
  angry.add(new Enemies());
  keys.put("a", false);
  keys.put("d", false);
  //keys.put(" ", false);
}
public void draw() {
  background(0);
  //fill((int)(Math.random() * 255));
  checkKeyVal();
  sierpinski(x, 750, 100);
  for(int i = 0; i < boop.size(); i++) {
    boop.get(i).move();
    boop.get(i).show();
  }
  for(int i = 0; i < angry.size(); i++) {
    angry.get(i).move();
    angry.get(i).show();
  }
  for(int i = 0; i < boop.size(); i++) {
    for(int x = 0; x < angry.size(); i++) {
      float d = dist(boop.get(i).getX(), boop.get(i).getY(), angry.get(x).getX(), angry.get(x).getY());
      if(d < 30) {
        angry.get(x).backZero();
      }
    }
  }
}
public void sierpinski(int x, int y, int len) {
  if(len <= base) {
    triangle(x, y, x+len, y, x+len/2, y-len);
  }
  else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
public void keyPressed() {
  switch(key) {
    case 'a':
      keys.put("a", true);
      break;
    case 'd':
      keys.put("d", true);
      break;
  }
  if(key == ' ' && bulletPoints >= 1) {
    bulletPoints--;
    boop.add(new Bullets(x));
    if(boop.size() > 30) {
      boop.remove(0);
    }
  }
}
public void keyReleased() {
  switch(key) {
    case 'a':
      keys.put("a", false);
      break;
    case 'd':
      keys.put("d", false);
      break;
  }
}
public void checkKeyVal() {
  if(keys.get("a") == true && x >= 10) {
    x -= 10;
  }
  if(keys.get("d") == true && x <= 1090) {
    x += 10;
  }
  /*
  if(keys.get(" ") == true) {
    boop.add(new Bullets(x));
    if(boop.size() > 30) {
      boop.remove(0);
    }
  }
  */
}
