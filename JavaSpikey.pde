float yoff = 0.0;

void setup() {
  size(800, 800);
}

void draw() {
  noStroke();
  fill(123, 16, 196);
  background(252, 239, 117);

  translate(width / 2, height / 2);

  float radius = 300;

  beginShape();
  float xoff = 0;
  for (float a = 0; a < TWO_PI; a += 0.0009) {
    float offset = map(noise(xoff, yoff), 0, 1, -200, 50);
    float r = radius + offset;
    float x = r * cos(a);
    float y = r * sin(a);
    vertex(x, y);
    xoff += 0.1;
    //ellipse(x, y, 4, 4);
  }
  endShape();

  yoff += 0.01;
}
