float doorX, doorY; 
float doorW = 145;
float doorH = 186; 

float borderLX = 100;
float borderLY = 150;
float borderW = 300;
float borderH = 200;

void setup(){
  size(500,500);
  doorX = borderLX + 7.5;
  doorY = borderLY + 7.5;
}

void draw(){
  background(253,223,137);
  
  // border
  noFill();
  stroke(255,255,255);
  strokeWeight(5);
  rect(borderLX,borderLY,borderW,borderH);
  
  // door
  fill(255,255,255);
  noStroke();
  rect(doorX,doorY,doorW,doorH);
  
  // select door
  if(mousePressed == true && mouseX >= doorX && mouseX <= doorX+doorW && mouseY>=doorY && mouseY <= doorY+doorH){
    doorX = doorX+(mouseX-pmouseX);
  }
  if(doorX <= borderLX + 7.5) doorX = borderLX + 7.5;
  if(doorX > borderLX+borderW-doorW) doorX = borderLX+borderW-doorW-7.5;
  
}
