
void home(){
  strokeWeight(3);
  stroke(#ffffff);
  fill(#ffffff);
  textAlign(CENTER, TOP);
  textSize(height/14);
  text("Toolbox", width/2, 30);
  line(0, height/10, width, height/10 );
  /*
  fill(#ff00ff);
  rect(0, height/8, width/3, height/3.5);
  fill(#ff0000);
  rect(0, height/8+height/3.5+12, width/3, height/3.5);
  fill(#ff00ff);
  rect(0, height/8+2*height/3.5+2, width/3, height/3.5);
  */
  textSize(height/30);
  image(colorPickerImg, 50, height/7, width/3-100, height/8);
  text("Color Piker", width/6, 2*height/7);
  
  image(soundIntensityImg, width/3+50, height/7, width/3-100, height/8);
  text("Sound \nIntensity", width/2, 2*height/7);
  
  image(locationImg, 2*width/3+80, height/7, width/3-100, height/8);
  text("Location", width-width/6, 2*height/7);
  
  image(distanceImg, 50, 3.05*height/7, width/3-100, height/8+20);
  text("Distance", width/6, 3.9*height/7);
  
  image(inclinationImg, width/3+50, 3*height/7, width/3-100, height/8);
  text("Inclination", width/2, 3.9*height/7);
  
  image(bubbleLevelImg, 2*width/3+50, 3.45*height/7, width/3-100, height/8);
  text("Bubble \nLevel", width-width/6, 3.9*height/7);
  
  image(converterImg, 50, 5*height/7, width/3-100, height/8+20);
  text("Converter", width/6, 6.2*height/7);
  
  image(pavImg, width/3+50, 5*height/7, width/3-100, height/8+40);
  text("Calculates \nPerimeter, \nArea, Volume", width/2, 6.2*height/7);
  
}