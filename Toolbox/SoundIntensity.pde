int s=50;

void soundIntenity(){
  strokeWeight(3);
  stroke(#0000ff);
  fill(#0000ff);
  textAlign(CENTER, TOP);
  textSize(height/20);
  imageMode(CORNER);
  rect(0, 0, width, height/10 );
  fill(#ffffff);
  text("Sound Intensity", width/2, 40);
  image(backImg, 20, 20, 110, 80);
  
  imageMode(CENTER);
  image(soundMeterImg, width/2, height/2.5, width-100, height/2);
  
  pushMatrix();
  translate(width/2, height/2.5);
  rotate(radians(s*2.5));
  image(needleImg, 0, 0, height/2, width-100);
  popMatrix();

}

void soundIntensityClick(){
  if ( mouseX > 20 && mouseX <130 && mouseY > 20 && mouseY < 100 ) {
    page = 0;
  }
}