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
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.content.ClipboardManager;
import android.content.ClipData;
import android.widget.Toast;
import android.net.Uri; 


import ketai.camera.*;

KetaiCamera camera;

Activity activity;
Context context;


Accelerometer accelerometer;

int page = 0;
int posMen = 1;
int posCloud = 1;
PImage colorPickerImg, converterImg, distanceImg, inclinationImg, locationImg, bubbleLevelImg, soundIntensityImg, pavImg, backImg, gridImg, soundMeterImg, needleImg, line1, line2;
PImage bubble, bubbleLevel, BLvertical, BLhorizontal, tastClear, logoUC, iconUC, triangleImg, circleImg, ellipseImg, squareImg, rectangleImg, diamondImg, parallelogramImg, trapezeImg;
PImage pentagonImg, hexagonImg;
PImage [] mens;
PImage [] clouds;

boolean GPSenabeled = true;

void setup(){
  orientation(PORTRAIT); 
  
  activity = this.getActivity();
  context = activity.getApplicationContext();
  camera = new KetaiCamera(this, 950, 540, 24);
  
  activity.requestPermissions(new String[]{Manifest.permission.ACCESS_FINE_LOCATION}, 1);
  activity.requestPermissions(new String[]{Manifest.permission.RECORD_AUDIO}, 1);
  
  locManager = (LocationManager) activity.getSystemService(Context.LOCATION_SERVICE);
  myLocation = new MyLocation();
  
  managerA = (SensorManager)context.getSystemService(Context.SENSOR_SERVICE);
  sensorA = managerA.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
  accelerometer = new Accelerometer();
  managerA.registerListener(accelerometer, sensorA, SensorManager.SENSOR_DELAY_GAME);
  
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
  line1 = loadImage("line1.png");
  line2 = loadImage("line2.png");
  bubble = loadImage("bula.png");
  bubbleLevel = loadImage("rotund.png");
  BLvertical = loadImage("vertical.png");
  BLhorizontal = loadImage("orizontal.png");
  tastClear = loadImage("tastClear.png");
  iconUC = loadImage("iconUC.png");
  logoUC = loadImage("logoUC.png");
  triangleImg = loadImage("triunghi.png");
  circleImg = loadImage("circle.png");
  ellipseImg = loadImage("ellipse.png");
  squareImg = loadImage("patrat.png");
  rectangleImg = loadImage("dreptunghi.png");
  diamondImg = loadImage("romb.png");
  parallelogramImg = loadImage("paralelogram.png");
  trapezeImg = loadImage("trapez.png");
  pentagonImg = loadImage("pentagon.png");
  hexagonImg = loadImage("hexagon.png");
  
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
  if ( page == 5 ) inclination();
  if ( page == 6 ) bubbleLevel();
  if ( page == 7 ) unitConverter();
  if ( page == 8 ) calculatePAV();
  if ( page == -1 && pageUC == 1 ) angleConverter();
  if ( page == -1 && pageUC == 2 ) areaConverter();
  if ( page == -1 && pageUC == 3 ) lengthConverter();
  if ( page == -1 && pageUC == 4 ) metricConverter();
  if ( page == -1 && pageUC == 5 ) temperatureConverter();
  if ( page == -1 && pageUC == 6 ) timeConverter();
  if ( page == -1 && pageUC == 7 ) volumeConverter();
  if ( page == -1 && pageUC == 8 ) weightConverter();
  if ( page == -2 && pagePAV == 1 && pagePA == 0) calculatePerimeterArea();
  if ( page == -2 && pagePAV == 1 && pagePA == 1) circlePA();
  if ( page == -2 && pagePAV == 1 && pagePA == 2) ellipsePA();
  if ( page == -2 && pagePAV == 1 && pagePA == 3) trianglePA();
  if ( page == -2 && pagePAV == 1 && pagePA == 4) squarePA();
  if ( page == -2 && pagePAV == 1 && pagePA == 5) rectanglePA();
  if ( page == -2 && pagePAV == 1 && pagePA == 6) diamondPA();
  if ( page == -2 && pagePAV == 1 && pagePA == 7) parallelogramPA();
  if ( page == -2 && pagePAV == 1 && pagePA == 8) trapezePA();
  if ( page == -2 && pagePAV == 1 && pagePA == 9) pentagonPA();
  if ( page == -2 && pagePAV == 1 && pagePA == 10) hexagonPA();
  
  if(activeKeyboard) keyboard();
  
}

void mousePressed(){
  if ( page == 0 ) homeClick();
  if ( page == 1 ) colorPickerClick();
  if ( page == 2 ) soundIntensityClick();  
  if ( page == 3 ) locationClick();
  if ( page == 4 ) distanceClick();
  if ( page == 5 ) inclinationClick();
  if ( page == 6 ) bubbleLevelClick();
  if ( page == 7 ) unitConverterClick();  
  if ( page == 8 ) calculatePAVClick();
  if (activeKeyboard) keyboardClick();
  if ( page == -1 && pageUC == 1 ) angleConverterClick();
  if ( page == -1 && pageUC == 2 ) areaConverterClick();
  if ( page == -1 && pageUC == 3 ) lengthConverterClick();
  if ( page == -1 && pageUC == 4 ) metricConverterClick();
  if ( page == -1 && pageUC == 5 ) temperatureConverterClick(); 
  if ( page == -1 && pageUC == 6 ) timeConverterClick();
  if ( page == -1 && pageUC == 7 ) volumeConverterClick();
  if ( page == -1 && pageUC == 8 ) weightConverterClick();
  if ( page == -2 && pagePAV == 1 && pagePA == 0 && okPerimeter) calculatePerimeterAreaClick();
  if ( page == -2 && pagePAV == 1 && pagePA == 1) circlePAClick();
  if ( page == -2 && pagePAV == 1 && pagePA == 2) ellipsePAClick();
  if ( page == -2 && pagePAV == 1 && pagePA == 3) trianglePAClick();
  if ( page == -2 && pagePAV == 1 && pagePA == 4) squarePAClick(); 
  if ( page == -2 && pagePAV == 1 && pagePA == 5) rectanglePAClick();
  if ( page == -2 && pagePAV == 1 && pagePA == 6) diamondPAClick();
  if ( page == -2 && pagePAV == 1 && pagePA == 7) parallelogramPAClick();  
  if ( page == -2 && pagePAV == 1 && pagePA == 8) trapezePAClick();
  if ( page == -2 && pagePAV == 1 && pagePA == 9) pentagonPAClick();
  if ( page == -2 && pagePAV == 1 && pagePA == 10) hexagonPAClick();

}

void keyReleased() {
    if (key == CODED && keyCode == android.view.KeyEvent.KEYCODE_BACK) {
      if (page >= 1) page = 0;
      if (page == -1) {
        page = 7;
        activeKeyboard = false;
      }
      if (page == -2 && pagePA == 0) {
        page = 8;
        pagePAV = 0;
        activeKeyboard = false;
      }
      if (page == -2 && pagePAV == 1 && pagePA >= 1) {
        page = -2;
        pagePAV = 1;
        pagePA = 0;
        activeKeyboard = false;
      }
    }
}

void onCameraPreviewEvent()
{
  camera.read();
}

public void onPause() {
  super.onPause();
  if (camera != null && camera.isStarted()) camera.stop();
}

  