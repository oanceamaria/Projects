String area1S = "";
String area2S = "";

String unitAr1 = "";
String unitAr2 = "";

void areaConverter(){
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
  textSize(height/35);
  fill(#000000);
  text(area1S, 20, height/5.9);  
  text(area2S, width/2+40, height/5.9);  
  textSize(height/20);
  text(unitAr1, 20, height/4);  
  text(unitAr2, width/2+40, height/4);
  
 if (valueKeyboard.length() <= 15 ) area1S = valueKeyboard; 
 if (unitAr1 != "" && unitAr2 != "" && area1S != "" ) convertsArea();
  
  textSize(height/25);
  rect(10, height/3, width/2-40, 2*height/16);
  rect(width/2+30, height/3, width/2-40, 2*height/16);
  noStroke();
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/3 && mouseY <  height/3+height/16 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/3, width/2-40, height/16);
  fill(#000000);
  text("area (a)", 20, height/2.9); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/3+height/16 && mouseY <  height/3+2*height/16 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/3+height/16, width/2-40, height/16);
  fill(#000000);
  text("hectare (ha)", 20, height/2.9+height/16); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/3+2*height/16 && mouseY <  height/3+3*height/16 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/3+2*height/16, width/2-40, height/16);
  fill(#000000);
  text("cm²", 20, height/2.9+2*height/16); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/3+3*height/16 && mouseY <  height/3+4*height/16 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/3+3*height/16, width/2-40, height/16);
  fill(#000000);
  text("dm²", 20, height/2.9+3*height/16); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/3+4*height/16 && mouseY <  height/3+5*height/16 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/3+4*height/16, width/2-40, height/16);
  fill(#000000);
  text("dam²", 20, height/2.9+4*height/16); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/3+5*height/16 && mouseY <  height/3+6*height/16 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/3+5*height/16, width/2-40, height/16);
  fill(#000000);
  text("ft²", 20, height/2.9+5*height/16); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/3+6*height/16 && mouseY <  height/3+7*height/16 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/3+6*height/16, width/2-40, height/16);
  fill(#000000);
  text("hm²", 20, height/2.9+6*height/16); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/3+7*height/16 && mouseY <  height/3+8*height/16 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/3+7*height/16, width/2-40, height/16);
  fill(#000000);
  text("in²", 20, height/2.9+7*height/16); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/3+8*height/16 && mouseY <  height/3+9*height/16 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/3+8*height/16, width/2-40, height/16);
  fill(#000000);
  text("km²", 20, height/2.9+8*height/16); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/3+9*height/16 && mouseY <  height/3+10*height/16 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/3+9*height/16, width/2-40, height/16);
  fill(#000000);
  text("m²", 20, height/2.9+9*height/16); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/3+10*height/16 && mouseY <  height/3+11*height/16 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/3+10*height/16, width/2-40, height/16);
  fill(#000000);
  text("mm²", 20, height/2.9+10*height/16); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/3+11*height/16 && mouseY <  height/3+12*height/16 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/3+11*height/16, width/2-40, height/16);
  fill(#000000);
  text("square mile²", 20, height/2.9+11*height/16); 
  
  
  
  
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/3 && mouseY <  height/3+height/16 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/3, width/2-40, height/16);
  fill(#000000);
  text("area", width/2+40, height/2.9); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/3+height/16 && mouseY <  height/3+2*height/16 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/3+height/16, width/2-40, height/16);
  fill(#000000);
  text("hectare", width/2+40, height/2.9+height/16); 
}

void areaConverterClick(){
  if ( mouseX > 20 && mouseX < 130 && mouseY > 20 && mouseY < 100 ) {
    page = 7;
    activeKeyboard = false;
    //unitA1 = unitA2 = angle1s = angle2s = valueKeyboard = "";
  }
  
  /*
  if ( mouseX > 10 && mouseX < width/2-30 && mouseY > height/7 && mouseY < height/7+height/12 ) activeKeyboard = true;
  
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/3 && mouseY <  height/3+height/16 ) unitA1 = "degrees";
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/3+height/16 && mouseY <  height/3+2*height/16 ) unitA1 = "radians";
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/3 && mouseY <  height/3+height/16 ) unitA2 = "degrees";
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/3+height/16 && mouseY <  height/3+2*height/16 ) unitA2 = "radians";
  */
}

void convertsArea(){
}