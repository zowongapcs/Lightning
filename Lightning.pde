int startX = 0;
int startY = (int)(Math.random()*500);
int endX = 0;
int endY = 150;

void setup()
{
  background(250,250,250);
  size(500,500);
  strokeWeight(5);
  fill(0,200,0);
  stroke(0,200,0);
  int triangleX = 250;
  int triangleY = 10;
  int w = 50;
  while(triangleY<160){
  triangle(triangleX,triangleY,triangleX-w,triangleY+w,triangleX+w,triangleY+w);
  triangleY += 20;
  w += 50;
  }
}
void draw()
{
int r = (int)(Math.random()*255);
int g = (int)(Math.random()*255);
int b = (int)(Math.random()*255);
int r2 = (int)(Math.random()*255);
int g2 = (int)(Math.random()*255);
int b2 = (int)(Math.random()*255);

while(endX<=500 && endX >=0){
  stroke(r, g, b);
  for (int i=0; i<10; i++){
  endX = startX + ((int)(Math.random()*10));
  endY = startY + ((int)((Math.random()*19)-10));
  line(startX,startY,endX,endY);
  startX = endX;
  startY = endY;
  }
  stroke(r2,g2,b2);
  fill(r2,g2,b2);
  ellipse(endX, endY+((int)((Math.random()*20)-10)), 10, 20);
}
stroke(250,250,250);
fill(250,250,250);

triangle(0,0,255,0,0,255);
triangle(0,62,210,62,0,272);
triangle(0,129,165,129,0,294);
triangle(0,196,120,196,0,316);
triangle(0,268,65,268,0,333);
triangle(0,345,10,345,0,355);

triangle(500,0,245,0,500,255);
triangle(500,62,290,62,500,272);
triangle(500,129,335,129,500,294);
triangle(500,196,380,196,500,316);
triangle(500,268,435,268,500,333);
triangle(500,345,490,345,500,355);
}
void mousePressed()
{
startX = 0;
startY = (int)(Math.random()*500);
endX = 0;
endY = 150;
}
