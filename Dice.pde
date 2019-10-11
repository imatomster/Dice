void setup()
{
	textAlign(CENTER);
	size(500, 550);
	background(216,71,39);
	frameRate(10);
}
void draw()
{
	background(216,71,39);
	int sum = 0;
	for(int y = 25; y <=500; y+=50){
		for(int x = 25; x <= 500; x+=50){
			Die bob = new Die(x, y);
			bob.roll();
			bob.show();
			sum += bob.count;
		}
	}
	textSize(50);
	text("" + sum, 250, 540);
}
void mousePressed()
{
	noLoop();
}
void mouseReleased(){
	loop();
}

class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, count;
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
		count = (int)(Math.random()*6) + 1;
	}
	void show()
	{
		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		noStroke();
		rect(myX - 25, myY - 25, 50, 50, 20);
		fill(0);
		if(count == 1){
			ellipse(myX, myY, 10, 10);
		}else if (count == 2){
			ellipse(myX-12.5, myY-12.5, 10, 10);
			ellipse(myX+12.5, myY+12.5, 10, 10);
		}else if (count == 3){
			ellipse(myX, myY, 10, 10);
			ellipse(myX+12.5, myY-12.5, 10, 10);
			ellipse(myX-12.5, myY+12.5, 10, 10);
		}else if (count == 4){
			ellipse(myX-12.5, myY-12.5, 10, 10);
			ellipse(myX+12.5, myY+12.5, 10, 10);
			ellipse(myX+12.5, myY-12.5, 10, 10);
			ellipse(myX-12.5, myY+12.5, 10, 10);
		}else if (count == 5){
			ellipse(myX, myY, 10, 10);
			ellipse(myX-12.5, myY-12.5, 10, 10);
			ellipse(myX+12.5, myY+12.5, 10, 10);
			ellipse(myX+12.5, myY-12.5, 10, 10);
			ellipse(myX-12.5, myY+12.5, 10, 10);
		}else if (count == 6){
			ellipse(myX-12.5, myY-12.5, 10, 10);
			ellipse(myX+12.5, myY+12.5, 10, 10);
			ellipse(myX+12.5, myY-12.5, 10, 10);
			ellipse(myX-12.5, myY+12.5, 10, 10);
			ellipse(myX-12.5, myY, 10, 10);
			ellipse(myX+12.5, myY, 10, 10);
		}
	}
}
