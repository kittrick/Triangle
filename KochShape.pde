class KochShape {
  PVector origin;
  float diameter;
  ArrayList<PVector> points;

  KochShape(PVector a, float b) {
    origin = a.get();
    diameter = b;
  }
  
  void generate() {
    points = new ArrayList<PVector>();
    PVector addPoint = new PVector(0, -diameter/2);
    addPoint.sub(origin);
    addPoint.normalize();
    addPoint.setMag(diameter/2);
    for(int i = 0; i <= vertexCount; i++){
      addPoint.rotate(radians(360/vertexCount));
      points.add(addPoint.get());
    }
  }

  void display() {
    this.generate();
    noStroke();
    beginShape();
      int i = 0;
      for(PVector p : points){
        i++;
        float r = map( noise(float(frameCount) / 100 + 32 * i), 0, 1, 0, 255);
        float g = map(noise(float(frameCount) / 100 + 64 * i), 0, 1, 0, 255);
        float b = map(noise(float(frameCount) / 100 + 128 * i), 0, 1, 0, 255);
        fill(r, g, b);
        vertex(p.x, p.y);
      }
    endShape(CLOSE);
  }
}
