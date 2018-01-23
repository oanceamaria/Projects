int pageP = 0;

void calculatePerimeter(){
  strokeWeight(3);
  stroke(#0000ff);
  fill(#0000ff);
  textAlign(CENTER, TOP);
  textSize(height/20);
  imageMode(CORNER);
  rect(0, 0, width, height/10 );
  fill(#ffffff);
  text("Unit Converter", width/2, height/30);
  image(backImg, width/36, height/60, width/6.5, height/15);
  imageMode(CENTER);
  
  textSize(height/25);
  strokeWeight(6);
  stroke(#b3b3b3);
  fill(#000000);
  noFill();
  rect(-2, height/10, width+4, height/12 );
  text("Circle", width/2, height/8);
  rect(-2, height/10+height/12, width+4, height/12 );
  text("Ellipse", width/2, height/8+height/12);
  rect(-2, height/10+2*height/12, width+4, height/12 );
  text("Triangle", width/2, height/8+2*height/12);
  rect(-2, height/10+3*height/12, width+4, height/12 );
  text("Square", width/2, height/8+3*height/12);
  rect(-2, height/10+4*height/12, width+4, height/12 );
  text("Rectangle", width/2, height/8+4*height/12);
  rect(-2, height/10+5*height/12, width+4, height/12 );
  text("Diamond", width/2, height/8+5*height/12);
  rect(-2, height/10+6*height/12, width+4, height/12 );
  text("Parallelogram", width/2, height/8+6*height/12);
  rect(-2, height/10+7*height/12, width+4, height/12 );
  text("Trapeze", width/2, height/8+7*height/12);
  rect(-2, height/10+8*height/12, width+4, height/12 );
  text("Pentagon", width/2, height/8+8*height/12);
  rect(-2, height/10+9*height/12, width+4, height/12 );
  text("Hexagon", width/2, height/8+9*height/12);
}

void calculatePerimeterClick(){
  if ( mouseX > width/36 && mouseX < width/36+width/6.5 && mouseY > height/60 && mouseY < height/60+height/15 ) {
    page = 0;
  }

  if ( mouseX > 0 && mouseX < width && mouseY > 20 && mouseY < 100 ) ;
}