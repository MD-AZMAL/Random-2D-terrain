float x,y,dy,nfact,scl;

void setup(){
  size(600,600);
  background(255);
  x = -1; // x1, x2 co-ordinate of lines
  y = 0;  // y co-ordinate of lines 
  nfact = 0; // noise factor
  scl = 0.00314; // noise factor increment
}

void draw(){
  nfact+=scl; // shifting the noise factor by the incrementing value
  
  if(x < width)
    x++; // increment x until it passes the width of window
    
  dy = noise(nfact)*height; // determining y2 co-ordinate of line 1 and y1 co-ordinate of line 2
  
  stroke(0,175,186);
  line(x,y,x,dy); // line 1 with y1 = y, y2 = dy
  
  stroke(186,175,0);
  line(x,dy,x,height); // line 2 with y1 = dy, y2 = height of the window
}
