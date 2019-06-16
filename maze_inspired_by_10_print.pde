int offset = 12;

void setup() {
  size(500, 500);
  background(233, 220, 188);
  noLoop();
  strokeWeight((int)random(0,7));

}

void draw() {
  strokeWeight((int)random(0,7));
  background(233, 220, 188);
  for (int i=0; i<width; i=i+offset) {
    for (int j=0; j<height; j=j+offset) {
      int r =(int)random(0, 2);
      if (r==0) {
        line(i, j, i+offset, j+offset);
      } else {
        line(i, j+offset, i+offset, j);
      }
    }
  }
}
void keyReleased() {
  if (key == 's' || key == 'S') saveFrame("##.png");
}
void mousePressed() {
  redraw();
}
