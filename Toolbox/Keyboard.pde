boolean activeKeyboard = false;

void keyboard(){
  noStroke();
  textAlign(CENTER, TOP);
  textSize(height/18);
  fill(0);
  rect(0, height-height/2.1, width, height/2.1);
  
  if (mouseX > 25 && mouseX < width/3-25 && mouseY > height-height/2.22 && mouseY <  height-height/2.22+height/14 ) fill(#aaaaaa);
  else fill(#636363); 
  rect(25, height-height/2.22, width/3-50, height/14, 10);
  fill(#ffffff);
  text("1", width/6, height-height/2.3);
  
  if (mouseX > width/3+25 && mouseX < 2*width/3-25 && mouseY > height-height/2.22 && mouseY <  height-height/2.22+height/14 ) fill(#aaaaaa);
  else fill(#636363); 
  rect(width/3+25, height-height/2.22, width/3-50, height/14, 10);
  fill(#ffffff);
  text("2", width/2, height-height/2.3);
  
  if (mouseX > 2*width/3+25 && mouseX < width-25 && mouseY > height-height/2.22 && mouseY <  height-height/2.22+height/14 ) fill(#aaaaaa);
  else fill(#636363); 
  rect(2*width/3+25, height-height/2.22, width/3-50, height/14, 10);
  fill(#ffffff);
  text("3", width-width/6, height-height/2.3);
  
  if (mouseX > 25 && mouseX < width/3-25 && mouseY > height-height/2.8 && mouseY <  height-height/2.8+height/14 ) fill(#aaaaaa);
  else fill(#636363); 
  rect(25, height-height/2.8, width/3-50, height/14, 10);
  fill(#ffffff);
  text("4", width/6, height-height/2.9);
  
  if (mouseX > width/3+25 && mouseX < 2*width/3-25 && mouseY > height-height/2.8 && mouseY <  height-height/2.8+height/14 ) fill(#aaaaaa);
  else fill(#636363); 
  rect(width/3+25, height-height/2.8, width/3-50, height/14, 10);
  fill(#ffffff);
  text("5", width/2, height-height/2.9);
  
  if (mouseX > 2*width/3+25 && mouseX < width-25 && mouseY > height-height/2.8 && mouseY <  height-height/2.8+height/14 ) fill(#aaaaaa);
  else fill(#636363); 
  rect(2*width/3+25, height-height/2.8, width/3-50, height/14, 10);
  fill(#ffffff);
  text("6", width-width/6, height-height/2.9);
  
  if (mouseX > 25 && mouseX < width/3-25 && mouseY > height-height/3.8 && mouseY <  height-height/3.8+height/14 ) fill(#aaaaaa);
  else fill(#636363); 
  rect(25, height-height/3.8, width/3-50, height/14, 10);
  fill(#ffffff);
  text("7", width/6, height-height/4);
  
  if (mouseX > 25+width/3 && mouseX < 2*width/3-25 && mouseY > height-height/3.8 && mouseY <  height-height/3.8+height/14 ) fill(#aaaaaa);
  else fill(#636363); 
  rect(width/3+25, height-height/3.8, width/3-50, height/14, 10);
  fill(#ffffff);
  text("8", width/2, height-height/4);
   
  if (mouseX > 2*width/3+25 && mouseX < width-25 && mouseY > height-height/3.8 && mouseY <  height-height/3.8+height/14 ) fill(#aaaaaa);
  else fill(#636363); 
  rect(2*width/3+25, height-height/3.8, width/3-50, height/14, 10);
  fill(#ffffff);
  text("9", width-width/6, height-height/4);
  
  if (mouseX > 25 && mouseX < width/3-25 && mouseY > height-height/6 && mouseY <  height-height/6+height/14 ) fill(#aaaaaa);
  else fill(#636363); 
  rect(25, height-height/6, width/3-50, height/14, 10);
  fill(#ffffff);
  text(".", width/6, height-height/6.5);
  
  if (mouseX > width/3+25 && mouseX < 2*width/3-50 && mouseY > height-height/6 && mouseY <  height-height/6+height/14 ) fill(#aaaaaa);
  else fill(#636363); 
  rect(width/3+25, height-height/6, width/3-50, height/14, 10);
  fill(#ffffff);
  text("0", width/2, height-height/6.5);
  
  if (mouseX > 2*width/3+25 && mouseX < width-25 && mouseY > height-height/6 && mouseY <  height-height/6+height/14 ) fill(#aaaaaa);
  else fill(#333333); 
  rect(2*width/3+25, height-height/6, width/3-50, height/14, 10);
  fill(#ffffff);
  text("X", width-width/6, height-height/6.5);
  
  if (mouseX > 25 && mouseX < width-25 && mouseY > height-height/13  && mouseY < height-height/13+height/14 ) fill(#aaaaaa);
  else fill(#333333);
  rect(25, height-height/13, width-50, height/14, 50);
  fill(#ffffff);
  text("Done", width/2, height-height/13+15);
}

void keyboardClick(){
  //if ( mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height-height/2.5 && activeKeyboard ){ activeKeyboard = false;println("d");}
  
  if (mouseX > 25 && mouseX < width-25 && mouseY > height-height/13  && mouseY < height-height/13+height/14 ) activeKeyboard = false;
}