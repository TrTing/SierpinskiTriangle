public void setup()
{
background(0);
size(400,400);
}
public void draw()
{
sierpinski(200, 50, 300);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
if(len<=30){
	stroke(0,0,200);
	fill((int)(Math.random()*150), (int)(Math.random()*150), (int)(Math.random()*150));
	triangle(x, y, x-(len/2), y+len, x+(len/2), y+len);
	}
else
	{
	sierpinski(x,y,len/2);
	sierpinski(x-(len/4),y+(len/2),len/2);
	sierpinski(x+(len/4),y+(len/2),len/2);
}
}
