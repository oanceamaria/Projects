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
  text("Area Converter", width/2, 40);
  image(backImg, 20, 20, 110, 80);
  
  strokeWeight(6);
  stroke(#b3b3b3);
  fill(#000000);
  noFill();
  
  rect(10, height/7.5, width/2-40, height/20, 15);
  text("=", width/2, height/7.3);
  fill(#d9d9d9);
  rect(width/2+30, height/7.5, width/2-40, height/20, 15);
  
  textAlign(LEFT, TOP);
  textSize(height/35);
  fill(#000000);
  text(area1S, 20, height/6.8);  
  text(area2S, width/2+40, height/6.8);  
  textSize(height/25);
  text(unitAr1, 20, height/5);  
  text(unitAr2, width/2+40, height/5);

 if (valueKeyboard.length() <= 15 ) area1S = valueKeyboard; 
 if (unitAr1 != "" && unitAr2 != "" && area1S != "" ) convertsArea();
  
  textSize(height/35);
  noFill();
  rect(10, height/4, width/2-40, 10*height/20);
  rect(width/2+30, height/4, width/2-40, 10*height/20);
  noStroke();
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4 && mouseY <  height/4+height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4, width/2-40, height/20);
  fill(#000000);
  text("mm²", 20, height/3.8); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+height/20 && mouseY <  height/4+2*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+height/20, width/2-40, height/20);
  fill(#000000);
  text("cm²", 20, height/3.8+height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+2*height/20 && mouseY <  height/4+3*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+2*height/20, width/2-40, height/20);
  fill(#000000);
  text("in²", 20, height/3.8+2*height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+3*height/20 && mouseY <  height/4+4*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+3*height/20, width/2-40, height/20);
  fill(#000000);
  text("dm²", 20, height/3.8+3*height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+4*height/20 && mouseY <  height/4+5*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+4*height/20, width/2-40, height/20);
  fill(#000000);
  text("ft²", 20, height/3.8+4*height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+5*height/20 && mouseY <  height/4+6*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+5*height/20, width/2-40, height/20);
  fill(#000000);
  text("m²", 20, height/3.8+5*height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+6*height/20 && mouseY <  height/4+7*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+6*height/20, width/2-40, height/20);
  fill(#000000);
  text("are(a) / dam²", 20, height/3.8+6*height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+7*height/20 && mouseY <  height/4+8*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+7*height/20, width/2-40, height/20);
  fill(#000000);
  text("hectare(ha) / hm²", 20, height/3.8+7*height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+8*height/20 && mouseY <  height/4+9*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+8*height/20, width/2-40, height/20);
  fill(#000000);
  text("km²", 20, height/3.8+8*height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+9*height/20 && mouseY <  height/4+10*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+9*height/20, width/2-40, height/20);
  fill(#000000);
  text("square mile", 20, height/3.8+9*height/20); 
  
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4 && mouseY <  height/4+height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4, width/2-40, height/20);
  fill(#000000);
  text("mm²", width/2+40, height/3.8); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+height/20 && mouseY <  height/4+2*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+height/20, width/2-40, height/20);
  fill(#000000);
  text("cm²", width/2+40, height/3.8+height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+2*height/20 && mouseY <  height/4+3*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+2*height/20, width/2-40, height/20);
  fill(#000000);
  text("in²", width/2+40, height/3.8+2*height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+3*height/20 && mouseY <  height/4+4*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+3*height/20, width/2-40, height/20);
  fill(#000000);
  text("dm²", width/2+40, height/3.8+3*height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+4*height/20 && mouseY <  height/4+5*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+4*height/20, width/2-40, height/20);
  fill(#000000);
  text("ft²", width/2+40, height/3.8+4*height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+5*height/20 && mouseY <  height/4+6*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+5*height/20, width/2-40, height/20);
  fill(#000000);
  text("m²", width/2+40, height/3.8+5*height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+6*height/20 && mouseY <  height/4+7*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+6*height/20, width/2-40, height/20);
  fill(#000000);
  text("are(a) / dam²", width/2+40, height/3.8+6*height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+7*height/20 && mouseY <  height/4+8*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+7*height/20, width/2-40, height/20);
  fill(#000000);
  text("hectare(ha) / hm²", width/2+40, height/3.8+7*height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+8*height/20 && mouseY <  height/4+9*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+8*height/20, width/2-40, height/20);
  fill(#000000);
  text("km²", width/2+40, height/3.8+8*height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+9*height/20 && mouseY <  height/4+10*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+9*height/20, width/2-40, height/20);
  fill(#000000);
  text("square mile", width/2+40, height/3.8+9*height/20); 
}

void areaConverterClick(){
  if ( mouseX > 20 && mouseX < 130 && mouseY > 20 && mouseY < 100 ) {
    page = 7;
    activeKeyboard = false;
    unitAr1 = unitAr2 = area1S = area2S = valueKeyboard = "";
  }

  if ( mouseX > 10 && mouseX < width/2-30 && mouseY > height/7 && mouseY < height/7+height/12 ) activeKeyboard = true;
  /*
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/3 && mouseY <  height/3+height/16 ) unitA1 = "degrees";
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/3+height/16 && mouseY <  height/3+2*height/16 ) unitA1 = "radians";
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/3 && mouseY <  height/3+height/16 ) unitA2 = "degrees";
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/3+height/16 && mouseY <  height/3+2*height/16 ) unitA2 = "radians";
  */
}

void convertsArea(){
}