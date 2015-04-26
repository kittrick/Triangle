ArrayList<KochShape> shapes;
ArrayList<KochLine> lines;
float vertexCount;
float kochCount;
float radius;

void setup() {
  vertexCount = 3;
  kochCount = 1;
  size(600, 600, OPENGL);
  shapes = new ArrayList<KochShape>();
  PVector origin = new PVector(width/2, height/2);
  float radius = width/2;
  shapes.add(new KochShape(origin, radius));
}

void draw() {
  background(255);
  text("Verticies: " + int(vertexCount), 10, 15);
  text("Koch Triangles: " + int(kochCount), 10, 30);
  translate(width/2, height/2);
  rotate(radians(float(frameCount)/4));
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
      if (vertexCount >= 4) {
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

