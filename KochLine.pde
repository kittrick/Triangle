class KochLine {
  PVector start;
  PVector end;
  
  KochLine(PVector a, PVector b) {
    start = a.get();
    end = b.get();
  }
  
  void display() {
    vertex(start.x, start.y, end.x, end.y);
  }
}
