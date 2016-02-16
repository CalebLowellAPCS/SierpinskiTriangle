public void setup()
{
size(512, 512);
}
public void draw()
{
sierpinski(300, 300, 15);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len<20){
		triangle(x, y, x + len, y, x + len/2, y + len);
	}
	else{
		sierpinski(x, y, len/2);
		sierpinski(len/2, y, len/2);
		sierpinski(len/4, len/2, len/2);
	}

}