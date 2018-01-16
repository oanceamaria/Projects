boolean activeKeyboard = false;

void keyboard(){
  noStroke();
  fill(0);
  rect(0, height-height/2.5, width, height/2.5);
  fill(#4d4d4d);
  rect(25, height-height/2.4, width/3-50, height/7.3);
  rect(25, height-height/2.4+height/7.3, width/3-50, height/7.3);

}

void keyboardClick(){
  //if ( mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height-height/2.5 && activeKeyboard ){ activeKeyboard = false;println("d");}
}