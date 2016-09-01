int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
int boltStartX = 0;
int boltStartY = 0;
int boltEndX = 0;
int boltEndY = 0;
void setup()
{
  size(400,600);
  background(88,91,92);
  strokeWeight(3);
}
void draw()
{
	while(endY < 580)
	{
		stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		endY = startY + (int)(Math.random() * 9);
		endX = startX + (int)((Math.random()*18) - 9); 
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
	stroke(63,143,64);
	fill(63,143,64);
	rect(0,550,400,50);
	stroke(199,199,14);
	fill(199,199,14);
	arc (endX,550,boltStartX,boltStartY,PI,2*PI);		
	noStroke();
	fill(255,255,255,250);
	ellipse(300,100,50,50);
}

void mousePressed()
{
	background(88,91,92);
	startX=150;
	startY=0;
	endX = 150;
	endY= 0;
	if (boltStartX > 350)
	  {
		boltStartX = 0;
	  }	
	else  
	  {
	 	boltStartX = boltStartX + 15;		
	  }
	if (boltStartY > 350)
	  {
		boltStartY = 0;
	  }	
	else  
	  {
	 	boltStartY = boltStartY + 15;		
	  }
}
