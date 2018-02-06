float x,y,dy,nfact,scl;

void setup(){
  size(600,600);
  background(255);
  x = -1;
  y = 0;
  nfact = 0;
  scl = 0.00314;
}

void draw(){
  nfact+=scl;
  
  if(x < width)
    x++;
    
  dy = noise(nfact)*(height + 20);
  
  stroke(0,175,186);
  rect(x,y,1,dy);
  
  stroke(186,175,0);
  rect(x,dy,1,height - dy);
}