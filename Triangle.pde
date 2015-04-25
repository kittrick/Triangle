ArrayList<KochShape> shapes;
int vertexCount;
int kochCount;
float diameter;

void setup() {
  vertexCount = 3;
  kochCount = 1;
  size(600, 600, OPENGL);
  shapes = new ArrayList<KochShape>();
  PVector origin = new PVector(width/2, height/2);
  float diameter = width;
  shapes.add(new KochShape(origin, diameter));
}

void draw() {
  background(255);
  translate(width/2, height/2);
  mouseRotate();
  mouseScale();
  for(KochShape s : shapes) {
    s.display();
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      vertexCount++;
    } else if (keyCode == DOWN) {
      if (vertexCount >= 2) {
        vertexCount--;
      }
    } else if (keyCode == RIGHT) {
      kochCount++;
    } else if (keyCode == LEFT) {
      if (kochCount >= 2) {
        kochCount--;
      }
    }
    println(vertexCount, kochCount);
  }
}

void mouseRotate(){
  int x = mouseX - width/2;
  rotate(radians(x));
}

void mouseScale(){
  int y = mouseY - width/2;
  scale(map(mouseY, 0, height, 0, 1));
}

