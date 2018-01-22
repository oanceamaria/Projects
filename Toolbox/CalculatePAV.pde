int pagePAV = 0;

void calculatePAV(){
  strokeWeight(3);
  stroke(#0000ff);
  fill(#0000ff);
  textAlign(CENTER, TOP);
  textSize(height/20);
  imageMode(CORNER);
  rect(0, 0, width, height/10 );
  fill(#ffffff);
  text("Calculate P.A.V.", width/2, height/30);
  image(backImg, width/36, height/60, width/6.5, height/15);
  imageMode(CENTER);
  
  textSize(height/25);
  strokeWeight(6);
  stroke(#b3b3b3);
  fill(#000000);
  noFill();
  rect(-2, height/10, width+4, height/10 );
  text("Calculate Perimeter", width/2, height/7.5);
  rect(-2, height/5, width+4, height/10 );
  text("Calculate Area", width/2, height/7.5 + height/10);
  rect(-2, 3*height/10, width+4, height/10 );
  text("Calculate Volume", width/2, height/7.5 + height/5);
}

void calculatePAVClick(){
  if ( mouseX > 20 && mouseX < 130 && mouseY > 20 && mouseY < 100 ) {
    page = 0;
  }
  
  if ( mouseX > 0 && mouseX < width && mouseY > height/10 && mouseY < height/5 ) pagePAV = 1;
  if ( mouseX > 0 && mouseX < width && mouseY > height/5 && mouseY < 3*height/10 ) pagePAV = 2;
  if ( mouseX > 0 && mouseX < width && mouseY > 3*height/10 && mouseY < 2*height/5 ) pagePAV = 3;

}