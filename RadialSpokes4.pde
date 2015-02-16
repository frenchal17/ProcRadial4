void setup(){
  size(500,500);
  background(0,0,0);
}

  float x = 0.1;
  float r = 0;
  float c = 0;
  float x2 = 0.15;
  float comp = 10;
  float c2 = 0;
  float c3 = 0;
  float c4 = 0;
  

void draw(){
 
 if (mousePressed){
   stroke(255,255,255);
   r = r + x;
   c = c + x2;
   c2 = c + PI / 2;
   c3 = c + PI;
   c4 = c + PI * 3 / 2;
   point(mouseX + r * sin(c), mouseY + r * cos(c));
   point(mouseX + r * sin(c2), mouseY + r * cos(c2));
   point(mouseX + r * sin(c3), mouseY + r * cos(c3));
   point(mouseX + r * sin(c4), mouseY + r * cos(c4));
   point(mouseX, mouseY + r);
   point(mouseX, mouseY - r);
   point(mouseX + r, mouseY);
   point(mouseX - r, mouseY);  
   
   if (r / comp >= 1){
     x = x + 0.1;
     comp = comp + 10;
   }
   
  }
 
 else {
  r = 0;
  x = 1;
  comp = 10;
}

}

void keyPressed(){
  if (key == ' '){
    background(0,0,0);
  }
}
