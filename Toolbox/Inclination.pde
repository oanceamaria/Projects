float inclination;

void inclination(){
  strokeWeight(3);
  stroke(#0000ff);
  fill(#0000ff);
  textAlign(CENTER, TOP);
  textSize(height/20);
  imageMode(CORNER);
  rect(0, 0, width, height/10 );
  fill(#ffffff);
  text("Inclination", width/2, 40);
  image(backImg, 20, 20, 110, 80);
  
  inclination = atan( ay / (sqrt(pow(ax,2) + pow(az,2))));
  inclination *= 180.00;
  inclination /= PI;
  
  image(line1, width/6, height/1.8, width/1.5, height/30);
  pushMatrix();
  translate(width/6, height/1.8 + height/30);
  if ( inclination >= 0) rotate( radians( 270 - inclination ) );
  else rotate( radians( 270 ) );
  image(line2, 0, 0, height/30, width/1.5);
  popMatrix();
  
}

void inclinationClick(){
  if ( mouseX > 20 && mouseX <130 && mouseY > 20 && mouseY < 100 ) {
    page = 0;
  }
}