void setup()
{
  size (1000, 1000);
  background (200, 0, 0);
}
void draw()
{
  if (keyPressed && key==' ')
  {
    ellipse (mouseX, mouseY, 300, 300);
    fill (random(255), random(255), random(255));
    text("Eli",mouseX,mouseY);
  }
  else if (keyPressed && key=='c'){background (255, 0, 0);}
  else {
    fill (random(255), random(255), random(255));
    ellipse (310, 300, 300, 300);
  }
}

