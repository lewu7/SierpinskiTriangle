public void setup(){
  background(175,182,219);
  size(500,500);
}

public void draw(){
  sierpinski(0, 500, 500);
  /*rectMode(CENTER);
  fill(255);
  rect(250, 250, 100, 100);*/
}
public void mouseDragged(){
  
}

public void sierpinski(int x, int y, int len){
  if(len <= 20){
    triangle(x, y, x+len, y, (x+x+len)/2, y-len);
    //rect(x, y, len, len);
  } else {
    noStroke();
    fill(133,148,234);
    sierpinski(x, y, len/2);
    fill(106,119,188);
    sierpinski(x+len/2, y, len/2);
    fill(119,134,211);
    sierpinski(x+len/4, y-len/2, len/2);
    
  }
}


