Die woo;
int totalroll;
void setup()
{
	noLoop();
	size(490,500);
}
void draw()
{
	background(255);
	for(int y=10; y <= 400; y+=60)
	{
		for(int x=10; x <=450; x += 60)
		{
			woo = new Die (x,y);
			woo.show();
		}
	}
			textSize(50);
		text("Total roll = " + totalroll, 20,480);
}

void mousePressed()
{
	redraw();
	totalroll = 0;
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
	void roll()
	{
		r= (int)(Math.random()*6)+1;
	}
	void show()
	{
		fill (255);
		rect(myX, myY, 50,50);
		fill(0);
		if (r==1)
		{
			ellipse(myX + 25, myY + 25,5,5);
			totalroll= totalroll + 1;
		}
		if (r==2)
		{
			ellipse(myX +10, myY + 10,5,5);
			ellipse(myX +40, myY +40,5,5);
			totalroll = totalroll + 2;
		}
		if(r==3)
		{
			ellipse(myX +10, myY + 10,5,5);
			ellipse(myX + 25, myY + 25,5,5);
			ellipse(myX +40, myY +40,5,5);
			totalroll = totalroll + 3;
		}
		if(r==4)
		{
			ellipse(myX +10, myY + 10,5,5);
			ellipse(myX + 10, myY + 40,5,5);
			ellipse(myX +40, myY +10,5,5);
			ellipse(myX +40, myY +40,5,5);
			totalroll = totalroll + 4;
		}
		if(r==5)
		{
			ellipse(myX +10, myY + 10,5,5);
			ellipse(myX + 10, myY + 40,5,5);
			ellipse(myX +40, myY +10,5,5);
			ellipse(myX +40, myY +40,5,5);
			ellipse(myX + 25, myY + 25,5,5);
			totalroll = totalroll + 5;
		}
		if(r==6)
		{
			ellipse(myX +10, myY + 10,5,5);
			ellipse(myX + 10, myY + 40,5,5);
			ellipse(myX +40, myY +40,5,5);
			ellipse(myX + 40, myY + 10,5,5);
			ellipse(myX + 10, myY+25,5,5);
			ellipse(myX + 40, myY+25,5,5);
			totalroll = totalroll + 6;
		}

	}
}
