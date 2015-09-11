Die woo;
void setup()
{
	noLoop();
	size(490,500);
}
void draw()
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

void mousePressed()
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
