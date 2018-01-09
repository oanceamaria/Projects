
 
int page = 0;
PImage colorPickerImg, converterImg, distanceImg, inclinationImg, locationImg, bubbleLevelImg, soundIntensityImg, pavImg;

void setup(){
  orientation(PORTRAIT); 
  colorPickerImg = loadImage("colorPicker.png");
  converterImg = loadImage("convertor.png");
  distanceImg = loadImage("distanta.png");
  inclinationImg = loadImage("inclinare.png");
  locationImg = loadImage("locatie.png");
  bubbleLevelImg = loadImage("poloboc.png");
  soundIntensityImg = loadImage("sunet.png");
  pavImg = loadImage("volum.png");
}
  
void draw(){
  background(0);
  if ( page == 0 ) home();
  if(page == 1) background(#ffffff);
}

void mousePressed(){
  if(mouseX>0 && mouseX<width/3 && mouseY>height/8 && mouseY<height/8+height/3.5 ) page=1;
}
 public void keyPressed() {
 if (key == CODED) {
 if (keyCode == android.view.KeyEvent.KEYCODE_BACK) {

 page=0;  // don't quit by default
 }
 }
 }