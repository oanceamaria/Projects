import android.app.Activity;
import android.content.Context;

import ketai.camera.*;

KetaiCamera camera;

Activity activity;
Context context;

int page = 0;
PImage colorPickerImg, converterImg, distanceImg, inclinationImg, locationImg, bubbleLevelImg, soundIntensityImg, pavImg, backImg, gridImg, soundMeterImg, needleImg;

void setup(){
  orientation(PORTRAIT); 
  
  activity = this.getActivity();
  context = activity.getApplicationContext();
  camera = new KetaiCamera(this, 950, 540, 24);
  
  colorPickerImg = loadImage("colorPicker.png");
  converterImg = loadImage("convertor.png");
  distanceImg = loadImage("distanta.png");
  inclinationImg = loadImage("inclinare.png");
  locationImg = loadImage("locatie.png");
  bubbleLevelImg = loadImage("poloboc.png");
  soundIntensityImg = loadImage("sunet.png");
  pavImg = loadImage("volum.png");
  backImg = loadImage("back.png");
  gridImg = loadImage("grid.png");
  soundMeterImg = loadImage("soundMeter.png");
  needleImg = loadImage("ac.png");
}
  
void draw(){
  background(#ffffff);
  if ( page == 0 ) home();
  if ( page == 1 ) colorPicker();
  if ( page == 2 ) soundIntenity();
}

void mousePressed(){
  if (page == 0) homeClick();
  if (page == 1) colorPickerClick();
  if (page == 2) soundIntensityClick();
}

void keyReleased() {
    if (key == CODED && keyCode == android.view.KeyEvent.KEYCODE_BACK) {
      page = 0;
    }
}

void onCameraPreviewEvent()
{
  camera.read();
}


  