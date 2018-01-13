import android.app.Activity;
import android.content.Context;
import android.media.MediaRecorder;
import android.os.Handler;
import android.os.Bundle;
import android.Manifest;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.provider.Settings;

import ketai.camera.*;

KetaiCamera camera;

Activity activity;
Context context;

int page = 0;
int posMen = 1;
int posCloud = 1;
PImage colorPickerImg, converterImg, distanceImg, inclinationImg, locationImg, bubbleLevelImg, soundIntensityImg, pavImg, backImg, gridImg, soundMeterImg, needleImg;
PImage [] mens;
PImage [] clouds;

boolean GPSenabeled = false;

void setup(){
  orientation(PORTRAIT); 
  
  activity = this.getActivity();
  context = activity.getApplicationContext();
  camera = new KetaiCamera(this, 950, 540, 24);
  
  activity.requestPermissions(new String[]{Manifest.permission.ACCESS_FINE_LOCATION}, 1);
  activity.requestPermissions(new String[]{Manifest.permission.RECORD_AUDIO}, 1);
  
  locManager = (LocationManager) activity.getSystemService(Context.LOCATION_SERVICE);
  myLocation = new MyLocation();
  
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
  
  mens = new PImage[30];
  for (int i=1;i<=21;i++){
    String imgName = "anim/wolking" + i + ".png";
    mens[i] = loadImage(imgName);
  }
  
  clouds = new PImage[5];
  for (int i=1;i<=3;i++){
    String imgName = "anim/cloud" + i + ".png";
    clouds[i] = loadImage(imgName);
  }
}
  
void draw(){
  background(#ffffff);
  if ( page == 0 ) home();
  if ( page == 1 ) colorPicker();
  if ( page == 2 ) soundIntenity();
  if ( page == 3 ) location();
  if ( page == 4 ) distance();
}

void mousePressed(){
  if (page == 0) homeClick();
  if (page == 1) colorPickerClick();
  if (page == 2) soundIntensityClick();  
  if (page == 3) locationClick();
  if (page == 4) distanceClick();
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


  