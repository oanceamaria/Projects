
void unitConverter(){
  strokeWeight(3);
  stroke(#0000ff);
  fill(#0000ff);
  textAlign(CENTER, TOP);
  textSize(height/20);
  imageMode(CORNER);
  rect(0, 0, width, height/10 );
  fill(#ffffff);
  text("Unit Converter", width/2, 40);
  image(backImg, 20, 20, 110, 80);
  imageMode(CENTER);
  
  textSize(height/25);
  strokeWeight(6);
  stroke(#b3b3b3);
  fill(#000000);
  noFill();
  rect(50, height/7, width/1.15, height/10 );
  text("Angle Converter", width/2, height/5.7);
  rect(50, height/7+height/10, width/1.15, height/10 );
  text("Area Converter", width/2, height/5.7+height/10);
  rect(50, height/7+2*height/10, width/1.15, height/10 );
  text("Length Converter", width/2, height/5.7+2*height/10);
  rect(50, height/7+3*height/10, width/1.15, height/10 );
  text("Metric Converter", width/2, height/5.7+3*height/10);
  rect(50, height/7+4*height/10, width/1.15, height/10 );
  text("Temperature Converter", width/2, height/5.7+4*height/10);
  rect(50, height/7+5*height/10, width/1.15, height/10 );
  text("Time Converter", width/2, height/5.7+5*height/10);
  rect(50, height/7+6*height/10, width/1.15, height/10 );
  text("Volume Converter", width/2, height/5.7+6*height/10);
  rect(50, height/7+7*height/10, width/1.15, height/10 );
  text("Weight Converter", width/2, height/5.7+7*height/10);
  
  
}

void unitConverterClick(){
  if ( mouseX > 20 && mouseX <130 && mouseY > 20 && mouseY < 100 ) {
    page = 0;
  }
}