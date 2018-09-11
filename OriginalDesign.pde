int y = 0;
int Y_AXIS = 1;
int X_AXIS = 2;
color b1, b2, c1, c2;


void setup()
{
   size(500,290); 
   frameRate(60);
   b1 = color(255);
   b2 = color(0);
   c1 = color(204, 102, 0);
   c2 = color(0, 102, 153);
   

}
void draw()
{
   setGradient(0, 0, width/2, height, b1, b2, X_AXIS);
  setGradient(width/2, 0, width/2, height, b2, b1, X_AXIS);
  setGradient(0,0,500,300, c2, c1, Y_AXIS);
  bg();
   engine(y);
   rocket(y);
   y = y - 2;
   if (y < -400)
   {
      y = 0; 
   }
}
void rocket(int y)
{
    rect(235,y+190,30,100);
    fill(140);
    triangle(250,y+140,235,y+190,265,y+190);
    fill(255);
    quad(215,y+300,230,y+300,235,y+290,235,y+240);
    quad(285,y+300,270,y+300,265,y+290,265,y+240);
    fill(0);
    ellipse(250,y+220,15,40);
    fill(100);
    quad(235,y+300,239,y+280,261,y+280,265,y+300);
    line(244,y+280,240,y+300);
    line(256,y+280,260,y+300);
    line(248,y+280,246,y+300);
    line(252,y+280,254,y+300);
}
void engine(int y)
{
    fill(90);
    quad(200,300,220,280,280,280,300,300);
    noStroke();
    fill(#F7A455);
    beginShape();
      vertex(235,y+300);
      vertex(232,y+318);
      vertex(240,y+314);
      vertex(242,y+335);
      vertex(247,y+330);
      vertex(252,y+350);
      vertex(255,y+328);
      vertex(263,y+335);
      vertex(261,y+314);
      vertex(270,y+318);
      vertex(265,y+300);
    endShape();
    fill(#FFC903);
    beginShape();
      vertex(240,y+300);
      vertex(237,y+312);
      vertex(243,y+308);
      vertex(245,y+326);
      vertex(249,y+322);
      vertex(251,y+335);
      vertex(255,y+323);
      vertex(257,y+328);
      vertex(259,y+309);
      vertex(264,y+311);
      vertex(262,y+300);
    endShape();
    stroke(1);
    fill(255);
}
void bg()
{
  
  //background
    noStroke();
    fill(#FC7F00);
   ellipse(250,300,100,100);
   stroke(1);
   
   //control tower
   fill(#A7FFF8);
   ellipse(60,145,50,50);
   fill(#F7D77D);
   quad(40,170,30,160,90,160,80,170);
   quad(30,130,40,120,80,120,90,130);
   fill(190);
   rect(40,170,40,270);
   quad(50,120,55,115,65,115,70,120);
   line(75,120,75,90);
   line(57,115,57,85);
   line(61,115,61,97);
   quad(80,230,80,300,110,300,110,250);
   quad(40,200,40,300,30,300,30,220);
   
}

void setGradient(int x, int d, float w, float h, color c1, color c2, int axis ) {

  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = d; i <= d+h; i++) {
      float inter = map(i, d, d+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }  
}