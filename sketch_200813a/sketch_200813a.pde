float Top = 700;
float But = 720;

float y1 = Top;
float y2 = But;
float y3 = Top;
float y4 = But;
float y5 = Top;
float x = 350;

float yOct = 600;

float speed = 0.5;
float speed1 = 0.5;
float speed2 = 0.5;
float speed3 = 0.5;
float speed4 = 0.5;
float speedOct = 0.25;

float arm;

float PointX = 1350;

float farve = 0;

void setup()
{
  frameRate(50);
  size(1500,1000);
}

void draw()
{
  clear();
  background(150,200,255);
  text(speed,20,20);
  noStroke();
  fill(farve*0.5,0,farve*0.1+150);
  ellipse(750,yOct,500,500);
  ellipse(PointX,mouseY,100,50);
  //triangle(700,yOct,800,yOct,mouseX,mouseY);
  quad(700,yOct,PointX-0.5*arm,mouseY-30,PointX,mouseY,PointX-0.5*arm,mouseY+30);
  fill(255);
  ellipse(650,yOct-50,75,75);
  ellipse(850,yOct-50,75,75);
  fill(0);
  ellipse(660,yOct-60,40,40);
  ellipse(860,yOct-60,40,40);
  
  arm = dist(PointX,mouseY,700,yOct);
  farve = mouseY*0.5-50;
  
  fill(100,100,255);
  rect(0,750,1500,1000);
ellipse(x*0,y1,500,250);
ellipse(x*1,y2,500,250);
ellipse(x*2,y3,500,250);
ellipse(x*3,y4,500,250);
ellipse(x*4,y5,500,250);

// bølger
y1 += speed; if (y1 <= Top){speed = -speed;} if (y1 >= But){speed = -speed;}
y2 += speed1; if (y2 <= Top){speed1 = -speed1;} if (y2 >= But){speed1 = -speed1;}
y3 += speed2; if (y3 <= Top){speed2 = -speed2;} if (y3 >= But){speed2 = -speed2;}
y4 += speed3; if (y4 <= Top){speed3 = -speed3;} if (y4 >= But){speed3 = -speed3;}
y5 += speed4; if (y5 <= Top){speed4 = -speed4;} if (y5 >= But){speed4 = -speed4;}
yOct += speedOct; if (yOct <= 600){speedOct = -speedOct;} if (yOct >= 630){speedOct = -speedOct;}

}
