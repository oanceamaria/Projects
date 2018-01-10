
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
    popMatrix();

    /*
    PImage cI = get(0, 200, 600,400);
    color c = cI.get(300,200);
    stroke(#ff0000);
    noFill();
    rect(295,395,10,10);
    fill(c);
    rect(width-380,0,200,200);
    text("R:"+red(c)+" \nG:"+green(c)+" \nB:" +blue(c),width-300,300);
    println(hex(c, 6));*/
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