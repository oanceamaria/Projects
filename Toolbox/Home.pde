
void home(){
  strokeWeight(3);
  stroke(#0000ff);
  fill(#0000ff);
  textAlign(CENTER, TOP);
  textSize(height/14);
  rect(0, 0, width, height/10 );
  fill(#00ffff);
  text("Toolbox", width/2, 30);
  
  /*
  fill(#ff00ff);
  rect(0, height/8, width/3, height/3.5);
  fill(#ff0000);
  rect(0, height/8+height/3.5+12, width/3, height/3.5);
  fill(#ff00ff);
  rect(0, height/8+2*height/3.5+2, width/3, height/3.5);
  */
  
  textSize(height/35);
  strokeWeight(5);
  stroke(#b3b3b3);
  fill(#000000);
  noFill();
  rect(25, height/8, width/3-50, height/3.5-35);
  image(colorPickerImg, 50, height/7+30, width/3-100, height/8);
  text("Color Piker", width/6, 2*height/7+30);
  
  rect(width/3+25, height/8, width/3-50, height/3.5-35);
  image(soundIntensityImg, width/3+50, height/7+5, width/3-100, height/8);
  text("Sound \nIntensity", width/2, 2*height/7+5);
  
  rect(2*width/3+25, height/8, width/3-50, height/3.5-35);
  image(locationImg, 2*width/3+50, height/7+40, width/3-100, height/8+20);
  text("Location", width-width/6, 2*height/7+20);
  
  rect(25, height/8+height/3.5-5, width/3-50, height/3.5-35);
  image(distanceImg, 50, 3.15*height/7, width/3-100, height/8+20);
  text("Distance", width/6, 4.1*height/7);
  
  rect(width/3+25, height/8+height/3.5-5, width/3-50, height/3.5-35);
  image(inclinationImg, width/3+50, 3.2*height/7, width/3-100, height/8);
  text("Inclination", width/2, 4.1*height/7);
  
  rect(2*width/3+25, height/8+height/3.5-5, width/3-50, height/3.5-35);
  image(bubbleLevelImg, 2*width/3+50, 3.1*height/7, width/3-100, height/8);
  text("Bubble \nLevel", width-width/6, 3.85*height/7);
  
  rect(25, height/8+2*height/3.5-5, width/3-50, height/3.5-35);
  image(converterImg, 50, 5.1*height/7, width/3-100, height/8);
  text("Converter", width/6, 6.1*height/7);
  
  rect(width/3+25, height/8+2*height/3.5-5, width/3-50, height/3.5-35);
  image(pavImg, width/3+50, 4.95*height/7, width/3-100, height/8);
  text("Perimeter \nArea \nVolume", width/2, 5.9*height/7);
  
}