public void setup()
{
  size(1200, 1200);
  smooth();
  fill(50);
}
public void draw()
{
  background(0);
  sierpinski(width / 2, height / 2, 200);
}
public void mouseDragged()//optional
{
}
public void sierpinski(int x, int y, int l, int depth, int base) 
{
  if (depth == base) {
    tri(x,y,l);
  } else {
    tri(x,y,l);
    sierpinski(x, y, l / 2, depth + 1, base);
    sierpinski(x + l / 4, y - sin(PI / 3) * l / 2, l / 2, depth + 1, base);
    sierpinski(x + l / 2, y, l / 2, depth + 1, base);
  }
}
public tri(int x, int y, int l) {
    triangle(x, y, x + l / 2, y - sin(PI / 3) * l, x + l, y);
  }
