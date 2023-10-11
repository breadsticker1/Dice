void setup()
{
  background(#FFDBF5);
  size(700, 750);
  noLoop();
}
void draw()
{
  background(#FFDBF5);
  int x = 20;
  int y = 20;
  int total = 0;

  for (int i = 0; i< 5; i++) {
    for (int z = 0; z < 5; z++) {
      Die one = new Die(x, y);
      one.show();
      y = y+140;
      total = total + one.number;
    }
    x = x + 140;
    y =20;
  }
  fill(255);
  textSize(25);
  text("Total: " + total, 265, 730);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY, number;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    number = (int)(Math.random()*6)+1;
    if (number == 1) {
      fill(#F085D2);
      ellipse(myX+50, myY+50, 15, 15);
    }
    if (number == 2) {
      fill(#F085D2);
      ellipse(myX+25, myY+25, 15, 15);
      ellipse(myX+75, myY+75, 15, 15);
    }
    if (number == 3) {
      fill(#F085D2);
      ellipse(myX+25, myY+25, 15, 15);
      ellipse(myX+50, myY+50, 15, 15);
      ellipse(myX+75, myY+75, 15, 15);
    }
    if (number == 4) {
      fill(#F085D2);
      ellipse(myX+25, myY+25, 15, 15);
      ellipse(myX+75, myY+25, 15, 15);
      ellipse(myX+25, myY+75, 15, 15);
      ellipse(myX+75, myY+75, 15, 15);
    }
    if (number == 5) {
      fill(#F085D2);
      ellipse(myX+25, myY+25, 15, 15);
      ellipse(myX+75, myY+25, 15, 15);
      ellipse(myX+50, myY+50, 15, 15);
      ellipse(myX+25, myY+75, 15, 15);
      ellipse(myX+75, myY+75, 15, 15);
    }
    if (number == 6) {
      fill(#F085D2);
      ellipse(myX+25, myY+25, 15, 15);
      ellipse(myX+25, myY+50, 15, 15);
      ellipse(myX+75, myY+25, 15, 15);
      ellipse(myX+75, myY+50, 15, 15);
      ellipse(myX+25, myY+75, 15, 15);
      ellipse(myX+75, myY+75, 15, 15);
    }
  }
  void show()
  {
    fill(#FFB2E9);
    noStroke();
    rect(myX, myY, 100, 100, 15);
    roll();
  }
}
