int pagePAV = 0;
boolean okPerimeter = true;
boolean okVolume = true;

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
  text("Calculate Perimeter/Area", width/2, height/7.5);
  rect(-2, height/5, width+4, height/10 );
  text("Calculate Area / Volume", width/2, height/7.5 + height/10);
}

void calculatePAVClick(){
  if ( mouseX > width/36 && mouseX < width/36+width/6.5 && mouseY > height/60 && mouseY < height/60+height/15 ) {
    page = 0;
  }
  
  if ( mouseX > 0 && mouseX < width && mouseY > height/10 && mouseY < height/5 ) {
    pagePAV = 1;
    page = -2;
    pagePA = 0;
    okPerimeter = false;
    thread("threadPerimeterArea");

  }
  if ( mouseX > 0 && mouseX < width && mouseY > height/5 && mouseY < 3*height/10 ) {
    pagePAV = 2;
    page = -2;
    pageAV = 0;
    okVolume = false;
    thread("threadAreaVolume");
  }
  
}

void threadPerimeterArea(){
  delay(500);
  okPerimeter = true;
}

void threadAreaVolume(){
  delay(500);
  okVolume = true;
}