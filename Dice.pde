Die first;
void setup()
{
  noLoop();
  size(1000,1000);
  first = new Die(200,200);
  
}
void draw()
{
  background(250);
  int sum = 0;
  for (int y = 50; y <=700; y=y+250){
    for (int x = 100; x <= 800; x = x+300){
      Die first = new Die(x,y);
      first.roll();
      first.show();
      
      if (first.random == 1){
        sum = sum +1;
     }
     if (first.random == 2){
       sum = sum +2;
     }
     if (first.random == 3){
       sum = sum +3;
     }
     if (first.random == 4){
       sum = sum +4;
   
     }
     if (first.random == 5){
      sum = sum +5;
     }
     if (first.random == 6) {
       sum = sum +6;
     }
     
      
    }
  }
  textSize(25);
  text("Total dice value:"+ sum, 400, 800);
  
}
void mousePressed()
{
 
  redraw();
}
class Die //models one single dice cube
{
  int myValue, myX,myY,random;//member variable declarations here
  
  Die(int x, int y) //constructor
  {
    roll();
    myX= x;
    myY=y;
  }
  void roll()
  {
    random = (int)(Math.random()*6+1);
     if (random < 2){
       myValue = 1;
     }
     if (random < 3){
       myValue = 2;
     }
     if (random < 4){
       myValue = 3;
     }
     if (random < 5){
       myValue = 4;
     }
     if (random < 6){
       myValue = 5;
     }
     else {
       myValue = 6;
     }
     
  }
  void show()
  {
    fill(250);
    square(myX, myY, 200);
    if (random == 1){
      fill(0);
      ellipse(myX+100, myY+100,20,20); 
     }
     if (random == 2){
       fill(0);
       ellipse(myX+50, myY+30, 20,20);
       ellipse(myX+150,myY+170,20,20);
     }
     if (random == 3){
       fill(0);
       ellipse(myX+30, myY+30,20,20);
       ellipse(myX+100,myY+100,20,20);
       ellipse(myX+170, myY+170,20,20);
     }
     if (random == 4){
       fill(0);
       ellipse(myX+50, myY+50, 20,20);
       ellipse(myX+150, myY+50,20,20);
       ellipse(myX+50, myY+150, 20,20);
       ellipse(myX+150, myY+150, 20,20);
   
     }
     if (random == 5){
      fill(0);
      ellipse(myX+50, myY+50, 20,20);
      ellipse(myX+150, myY+50,20,20);
      ellipse(myX+50, myY+150, 20,20);
      ellipse(myX+150, myY+150, 20,20);
      ellipse(myX+100,myY+100, 20,20);
     }
     if (random == 6) {
       fill(0);
       ellipse(myX+50, myY+30, 20,20);
       ellipse(myX+50, myY+100,20,20);
       ellipse(myX+50, myY+170,20,20);
       ellipse(myX+150, myY+30,20,20);
       ellipse(myX+150, myY+100,20,20);
       ellipse(myX+150,myY+170,20,20);
       
     }
   
  }
}
