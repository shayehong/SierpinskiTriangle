int sizetri;
public void setup()
{
	size(700,700);
}
public void draw()
{
	background(255,255,255);
	//sierpinski(5,595,600);
	sierpinski(0,700,700);
}
public void mouseDragged()//optional
{
	sizetri = mouseX;
}
public void sierpinski(int x, int y, int len) 
{
	if(len <= mouseX){
		 //noFill();
		 triangle(x,y,len+x,y,x+(len/2), y-len);
	}

	else{
		stroke(227,23,0);
		fill(220,23,0);
		sierpinski(x,y,len/2);
		stroke(18,36,79);
		fill(13,32,70);
		sierpinski(x+(len/2),y,len/2);
		stroke(46,245,255);
		sierpinski(x+(len/4),y-len/2,len/2);
		//return triangle(x,y,(len+x)/2,y, (x+len)/4, len/2) + sierpinski(x,y,len-1);
	}

}

