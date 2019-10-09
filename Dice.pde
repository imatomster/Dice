void setup()
{
	size(500, 500);
	noLoop();
}
void draw()
{
	Die bob = new Die(100, 100);
	bob.roll();
	bob.show();
}
void mousePressed()
{
	redraw();
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
		fill(255);
		noStroke();
		rect(myX - 25, myY - 25, 50, 50);
		fill(0);
		if(count == 1){
			ellipse(myX, myY, 10, 10);
		}else if (count == 2){

		}else if (count == 3){
			
		}else if (count == 4){
			
		}else if (count == 5){
			
		}else if (count == 6){
			
		}
	}
}
