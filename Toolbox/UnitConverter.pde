int pageUC = 0;

void unitConverter(){
  strokeWeight(3);
  stroke(#0000ff);
  fill(#0000ff);
  textAlign(CENTER, TOP);
  textSize(height/20);
  imageMode(CORNER);
  rect(0, 0, width, height/8.9 );
  fill(#ffffff);
  text("Unit Converter", width/2, 40);
  image(backImg, 20, 20, 110, 80);
  imageMode(CENTER);
  
  textSize(height/25);
  strokeWeight(6);
  stroke(#b3b3b3);
  fill(#000000);
  noFill();
  //rect(-2, height/9, width+4, height/8.9 );
  text("Angle Converter", width/2, height/7);
  rect(-2, height/10 + height/8.9, width+4, height/8.9 );
  text("Area Converter", width/2, height/7 + height/8.9);
  rect(-2, height/10 + 2*height/8.9, width+4, height/8.9 );
  text("Length Converter", width/2, height/7 + 2*height/8.9);
  rect(-2, height/10 + 3*height/8.9, width+4, height/8.9 );
  text("Metric Converter", width/2, height/7 + 3*height/8.9);
  rect(-2, height/10 + 4*height/8.9, width+4, height/8.9 );
  text("Temperature Converte", width/2, height/7 + 4*height/8.9);
  rect(-2, height/10 + 5*height/8.9, width+4, height/8.9 );
  text("Time Converter", width/2, height/7 + 5*height/8.9);
  rect(-2, height/10 + 6*height/8.9, width+4, height/8.9 );
  text("Volume Converter", width/2, height/7 + 6*height/8.9);
  rect(-2, height/10 + 7*height/8.9, width+4, height/8.9 );
  text("Weight Converter", width/2, height/7 + 7*height/8.9);
}

void unitConverterClick(){
  if ( mouseX > 20 && mouseX < 130 && mouseY > 20 && mouseY < 100 ) {
    page = 0;
  }
  
  if ( mouseX > 0 && mouseX < width && mouseY > height/10 && mouseY < height/10 + height/8.9 ) {
    pageUC = 1;
    page = -1;
  }
  if ( mouseX > 0 && mouseX < width && mouseY > height/10 + height/8.9 && mouseY < height/10 + 2*height/8.9 ) {
    pageUC = 2;
    page = -1;
  }
  if ( mouseX > 0 && mouseX < width && mouseY > height/10 + 2*height/8.9 && mouseY < height/10 + 3*height/8.9 ) {
    pageUC = 3;
    page = -1;
  }
  if ( mouseX > 0 && mouseX < width && mouseY > height/10 + 3*height/8.9 && mouseY < height/10 + 4*height/8.9 ) pageUC = 4;
  if ( mouseX > 0 && mouseX < width && mouseY > height/10 + 4*height/8.9 && mouseY < height/10 + 5*height/8.9 ) pageUC = 5;
  if ( mouseX > 0 && mouseX < width && mouseY > height/10 + 5*height/8.9 && mouseY < height/10 + 6*height/8.9 ) pageUC = 6;
  if ( mouseX > 0 && mouseX < width && mouseY > height/10 + 6*height/8.9 && mouseY < height/10 + 7*height/8.9 && pageUC==0) pageUC = 7;
  if ( mouseX > 0 && mouseX < width && mouseY > height/10 + 7*height/8.9 && mouseY < height/10 + 8*height/8.9 ) pageUC = 8;

}