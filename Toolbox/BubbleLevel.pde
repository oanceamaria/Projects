float xBL, yBL, xBLV, yBLV, xBLH, yBLH;
void bubbleLevel(){
  strokeWeight(3);
  stroke(#0000ff);
  fill(#0000ff);
  textAlign(CENTER, TOP);
  textSize(height/20);
  imageMode(CORNER);
  rect(0, 0, width, height/10 );
  fill(#ffffff);
  text("Bubble Level", width/2, 40);
  image(backImg, 20, 20, 110, 80);
  
  xBLH = width/2 + ax * 25;
  
  xBL = width/2.7 + ax * 15;
  yBL = height/2.2 + ay *15;
  
  yBLV = height/1.9 + ay * 25;
  
  imageMode(CENTER);
  image(BLhorizontal, width/2+3, height/5.8, width/1.1, height/9);
  image(bubble, xBLH, yBLH, height/14, height/16);
  
  image(bubbleLevel, width/2.7, height/2.2, width/1.5, width/1.5);
  image(bubble, xBL, yBL, height/17, height/17);
  
  image(BLvertical, width-width/6, height/1.9-2, height/9, width/1.1);
  image(bubble, xBLV, yBLV, height/16, height/14);

}

void bubbleLevelClick(){
  if ( mouseX > 20 && mouseX <130 && mouseY > 20 && mouseY < 100 ) {
    page = 0;
  }
}