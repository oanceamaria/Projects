double angle1;
double angle2;

String angle1s = "";
String angle2s = "";

String unitA1 = "";
String unitA2 = "";

void angleConverter(){
  strokeWeight(3);
  stroke(#0000ff);
  fill(#0000ff);
  textAlign(CENTER, TOP);
  textSize(height/20);
  imageMode(CORNER);
  rect(0, 0, width, height/9 );
  fill(#ffffff);
  text("Angle Converter", width/2, 40);
  image(backImg, 20, 20, 110, 80);
  
  strokeWeight(6);
  stroke(#b3b3b3);
  fill(#000000);
  noFill();
  
  rect(10, height/7, width/2-40, height/12, 15);
  text("=", width/2, height/6.2);
  fill(#d9d9d9);
  rect(width/2+30, height/7, width/2-40, height/12, 15);
  
  textAlign(LEFT, TOP);
  fill(#000000);
  text(angle1s, 20, height/6.2);  
  text(angle2s, width/2+40, height/6.2);  
  text(unitA1, 20, height/5);  
  text(unitA2, width/2+40, height/4);
  
  angle1s = valueKeyboard;
  
  textSize(height/25);
  rect(10, height/3, width/2-40, 2*height/16);
  rect(width/2+30, height/3, width/2-40, 2*height/16);
  noStroke();
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/3 && mouseY <  height/3+height/16 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/3, width/2-40, height/16);
  fill(#000000);
  text("degrees", 20, height/2.9); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/3+height/16 && mouseY <  height/3+2*height/16 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/3+height/16, width/2-40, height/16);
  fill(#000000);
  text("radians", 20, height/2.9+height/16); 
  
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/3 && mouseY <  height/3+height/16 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/3, width/2-40, height/16);
  fill(#000000);
  text("degrees", width/2+40, height/2.9); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/3+height/16 && mouseY <  height/3+2*height/16 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/3+height/16, width/2-40, height/16);
  fill(#000000);
  text("radians", width/2+40, height/2.9+height/16); 
}

void angleConverterClick(){
  if ( mouseX > 20 && mouseX < 130 && mouseY > 20 && mouseY < 100 ) {
    page = 7;
    activeKeyboard = false;
  }
  
  if ( mouseX > 10 && mouseX < width/2-30 && mouseY > height/7 && mouseY < height/7+height/12 ) activeKeyboard = true;
}