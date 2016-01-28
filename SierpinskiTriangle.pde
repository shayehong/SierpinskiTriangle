public void setup()
{
	size(600,600);
}
public void draw()
{
	sierpinski(10,-600,200);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 200){
		 triangle(x,y,len+x,y,x+len/2,-len);
	}

	else{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,(y-len)/2,len/4);
		//return triangle(x,y,(len+x)/2,y, (x+len)/4, len/2) + sierpinski(x,y,len-1);
	}

}