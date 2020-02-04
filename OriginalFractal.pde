float max_depth = 1;

final float initialX = 250;
final float initialY = 250;

final float len = 20;

final int base_color = 50;

void setup() {
  background(10);
  size(500, 500);
  frac(initialX, initialY, 3 * PI / 2.0, 0);
  noLoop();
}

void draw() {
  background(10);
  frac(initialX, initialY, 3 * PI / 2.0, 0);
}

void keyPressed() {
  max_depth++;
  redraw();
}

void frac(float x, float y, float theta, int depth) {
  final float endX = x + len * cos(theta);
  final float endY = y + len * sin(theta);
  
  final float col = (255 - base_color) * (depth / max_depth) + base_color;
  
  if (depth < max_depth) {
      frac(endX, endY, theta - PI / 5.0, depth + 1);
      frac(endX, endY, theta + PI / 5.0, depth + 1);
      frac(endX, endY, theta + PI / 10.0, depth + 1);
      frac(endX, endY, theta + PI / 10.0, depth + 1);
  }
  stroke(col, 50, 50);

  line(x, y, endX, endY);
}

  
