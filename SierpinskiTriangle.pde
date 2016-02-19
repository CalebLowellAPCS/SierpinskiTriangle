public void setup()
{
size(512, 512);
fill(100, 100, 100);
}
int len = 100;
public void draw()
{
sierpinski(0, 512, len);
}
public void mouseDragged()//optional
{
    len = mouseX;
}
public void sierpinski(int x, int y, int len) 
{
    if(len<=10){
    triangle(x, y, x+len, y, x + len/2, y-len);
	}
	else{
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
	} 

}