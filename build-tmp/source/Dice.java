import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Dice extends PApplet {

Die woo;
public void setup()
{
	noLoop();
	size(490,500);
}
public void draw()
{
	background(0);
	for(int y=10; y <= 400; y+=60)
	{
		for(int x=10; x <=450; x += 60)
		{
			woo = new Die (x,y);
			woo.show();
		}
	}
}

public void mousePressed()
{
	redraw();
}
class Die
{
	int myX, myY, r;
	Die(int x, int y)
	{
		myX = x;
		myY = y;
		r= (int)(Math.random()*6)+1;
	}
	public void roll()
	{
		r= (int)(Math.random()*6)+1;
	}
	public void show()
	{
		fill (255);
		rect(myX, myY, 50,50);
		fill(0);
		if (r==1)
		{
			ellipse(myX + 25, myY + 25,5,5);
		}
		if (r==2)
		{
			ellipse(myX +10, myY + 10,5,5);
			ellipse(myX +40, myY +40,5,5);
		}
		if(r==3)
		{
			ellipse(myX +10, myY + 10,5,5);
			ellipse(myX + 25, myY + 25,5,5);
			ellipse(myX +40, myY +40,5,5);
		}
		if(r==4)
		{
			ellipse(myX +10, myY + 10,5,5);
			ellipse(myX + 10, myY + 40,5,5);
			ellipse(myX +40, myY +10,5,5);
			ellipse(myX +40, myY +40,5,5);
		}
		if(r==5)
		{
			ellipse(myX +10, myY + 10,5,5);
			ellipse(myX + 10, myY + 40,5,5);
			ellipse(myX +40, myY +10,5,5);
			ellipse(myX +40, myY +40,5,5);
			ellipse(myX + 25, myY + 25,5,5);
		}
		if(r==6)
		{
			ellipse(myX +10, myY + 10,5,5);
			ellipse(myX + 10, myY + 40,5,5);
			ellipse(myX +40, myY +40,5,5);
			ellipse(myX + 40, myY + 10,5,5);
			ellipse(myX + 10, myY+25,5,5);
			ellipse(myX + 40, myY+25,5,5);
		}
	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Dice" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
