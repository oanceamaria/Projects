
void colorPicker(){
  strokeWeight(3);
  stroke(#0000ff);
  fill(#0000ff);
  textAlign(CENTER, TOP);
  textSize(height/20);
  imageMode(CORNER);
  rect(0, 0, width, height/10 );
  fill(#ffffff);
  text("Color Piker", width/2, 40);
  image(backImg, 20, 20, 110, 80);
  
  if (camera != null && camera.isStarted()){
    imageMode(CENTER);
    pushMatrix();
    translate(width/2, height/2.5);
    rotate(HALF_PI);
    image(camera, 0, 0, height/2, width-100);
    image(gridImg, 0, 0, height/2, width-100);
    popMatrix();

    PImage imgCamera = get(0, 0, width, height);
    color getColor = imgCamera.get( (int)(width/2), (int)(height/2.5) );
    stroke(#000000);
    fill(getColor);
    rect(width/15+5, height/1.48 ,width/5 ,height/12);
    fill(#000000);
    textAlign(LEFT, TOP);
    textSize(height/28);
    text( "Color: #" + hex(getColor, 6),  width/3, height/1.42);
    fill(#ff0000);
    text( "Red: "+red(getColor),  width/15+5, height/1.2);
    fill(#00ff00);
    text( "Green: "+green(getColor),  width/15+5, height/1.15);
    fill(#0000ff);
    text( "Blue: " +blue(getColor),  width/15+5, height/1.1);
  }
  else
  {
    if (camera != null) camera.start();
  }
}

void colorPickerClick(){
  if ( mouseX > 20 && mouseX <130 && mouseY > 20 && mouseY < 100 ) {
    page = 0;
    camera.stop();
  }
}