int radius, numberPoints;
float angle = 0;
void setup()
{
  size(1000, 730, P3D);
  radius = 200;
  numberPoints = 10;
  strokeWeight(3);
}
void draw()
{
  background(0);
  fill(#E9FF03);
  noStroke();
  float xPos = random(width);
  float yPos = random( height);
  ellipse(xPos, yPos, 15, 15);
  stroke(0, 255, 0);
  fill(0, 0, 255);

  float t = frameCount/70.0;
  beginShape();
  for (int j=0; j<numberPoints; j++)
    for (int p=0; p<numberPoints; p++)
    {
      vertex(width/2 + radius*cos(0.2*t*p*j/numberPoints + t), 
        height/2 + radius*sin(0.2*t*p*j/numberPoints + t));
    }
  endShape(CLOSE);
  {
    ellipseMode(CENTER);

    translate(width/2, height/2);

    pushMatrix();
    rotate(radians(angle));
    stroke(0, 0, 255);
    ellipse(0, 0, 400, 400);
    popMatrix();

    rotate(radians(-angle));

    translate(300, 0);
    fill(#95958F);
    stroke(#3B3B39);
    sphere(50);
    angle = angle + 1;
  }
}
