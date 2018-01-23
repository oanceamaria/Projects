String aTr = "";
String bTr= "";
String cTr = "";
String perimeterTr = "";
String areaTr = "";

void perimeterTriangle(){
  strokeWeight(3);
  stroke(#0000ff);
  fill(#0000ff);
  textAlign(CENTER, TOP);
  textSize(height/20);
  imageMode(CORNER);
  rect(0, 0, width, height/10 );
  fill(#ffffff);
  text("Triangle", width/2, height/30);
  image(backImg, width/36, height/60, width/6.5, height/15);
  
  imageMode(CENTER);
  image(triangleImg, width/2, height/4.8, width/1.5, height/5);
  
  textSize(height/30);
  textAlign(LEFT, TOP);
  fill(#000000);
  strokeWeight(6);
  stroke(#b3b3b3);
  noFill();
  text("Enter the value:", 20, height/3.2);
  text("a = ", 20, height/2.72);
  rect(width/8, height/2.8, width/2-40, height/20, 15);
  text (aTr, width/7, height/2.72);
  text("b = ", 20, height/2.35);
  rect(width/8, height/2.4, width/2-40, height/20, 15);
  text (bTr, width/7, height/2.35);
  text("c = ", 20, height/2.05);
  rect(width/8, height/2.1, width/2-40, height/20, 15);
  text (cTr, width/7, height/2.05);
  
  textSize(height/25);
  text("P = ", 20, height/1.75);
  text (perimeterTr, width/6.5, height/1.75);
  text("A = ", 20, height/1.6);
  text (areaTr, width/6.5, height/1.6);
}

void perimeterTriangleClick(){
  if ( mouseX > width/36 && mouseX < width/36+width/6.5 && mouseY > height/60 && mouseY < height/60+height/15 ) {
    page = -2;
    pagePAV = 1;
    pagePA = 0;
  }

 
}