class Geometric {
  int pointCount;
  
  void Geometric(){
    pointCount = 3;
  }
  
  void display() {
    translate(width/2,height/2);
    beginShape();
      vertex(pointOne.x, pointOne.y);
      vertex(pointTwo.x, pointTwo.y);
      vertex(pointThree.x, pointThree.y);
    endShape(CLOSE);
  }
}

void setup() {
  size(600, 600);
  background(255);
}

void draw() {
  background(255);
 
  PVector pointOne = new PVector(width/2, 0);
  PVector center = new PVector(width/2,height/2);
  pointOne.sub(center);
  //In this example, after the vector is normalized, it is multiplied by 50 so that it is viewable onscreen. Note that no matter where the pointOne is, the vector will have the same length (50) due to the normalization process.
  pointOne.normalize();
  pointOne.mult(width/3);
  PVector pointTwo = pointOne.get();
          pointTwo.rotate(radians(120));
  PVector pointThree = pointTwo.get();
          pointThree.rotate(radians(120));
  translate(width/2,height/2);
  beginShape();
    vertex(pointOne.x, pointOne.y);
    vertex(pointTwo.x, pointTwo.y);
    vertex(pointThree.x, pointThree.y);
  endShape(CLOSE);
}
