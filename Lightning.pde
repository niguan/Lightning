int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
int boltStartX = 100;
int boltStartY = 100;
int boltEndX = 100;
int boltEndY = 100;
void setup()
{
  size(300,600);
  background(0);
  strokeWeight(3);
}
void draw()
{
	while(endY < 575)
	{
		stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		endX = startX + (int)(Math.random() * 9);
		endY = startY + (int)((Math.random()*18) - 9); 
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
	fill(199,199,14);
	arc (600,endX,boltStartX,boltStartY,PI/2,3*PI/2);		
}
void mousePressed()
{
	background(0);
	startX=0;
	startY=150;
	endX = 0;
	endY= 150;
	if (boltStartX > 300)
	  {
		boltStartX = 100;
	  }	
	else  
	  {
	 	boltStartX = boltStartX + 15;		
	  }
	if (boltStartY > 300)
	  {
		boltStartY = 100;
	  }	
	else  
	  {
	 	boltStartY = boltStartY + 15;		
	  }
}
