MediaRecorder mRecorder;
Thread soundRunner;
int soundDB = 0;
int amplitude = 0;

final Runnable soundUpdater = new Runnable(){
    public void run(){          
        updateValue();
    };
};
final Handler soundHendler = new Handler();

void soundIntenity(){
  strokeWeight(3);
  stroke(#0000ff);
  fill(#0000ff);
  textAlign(CENTER, TOP);
  textSize(height/20);
  imageMode(CORNER);
  rect(0, 0, width, height/10 );
  fill(#ffffff);
  text("Sound Intensity", width/2, 40);
  image(backImg, 20, 20, 110, 80);
  
  imageMode(CENTER);
  image(soundMeterImg, width/2, height/2.5, width-100, height/2);
  
  pushMatrix();
  translate(width/2, height/2.5);
  rotate(radians(soundDB*2.5));
  image(needleImg, 0, 0, height/2, width-100);
  popMatrix();
  
  textAlign(CENTER, TOP);
  fill(#000000);
  textSize(height/24);
  text( "Sound intensity: " + soundDB + "dB",  width/2, height/1.42);
  text( "Sound amplitude: " + amplitude,  width/2, height/1.3);

}

public void startRecorder(){
  if (mRecorder == null){
    mRecorder = new MediaRecorder();
    mRecorder.setAudioSource(MediaRecorder.AudioSource.MIC);
    mRecorder.setOutputFormat(MediaRecorder.OutputFormat.THREE_GPP);
    mRecorder.setAudioEncoder(MediaRecorder.AudioEncoder.AMR_NB);
    mRecorder.setOutputFile("/dev/null"); 
    try{           
      mRecorder.prepare();
    }catch (java.io.IOException ioe) {}
    catch (java.lang.SecurityException e) {}
    try{           
      mRecorder.start();
     }catch (java.lang.SecurityException e) {}
    }
}

public void stopRecorder() {
  if (mRecorder != null) {
    mRecorder.stop();       
    mRecorder.release();
    mRecorder = null;
  }
}

public void updateValue(){
  if (mRecorder != null){
    amplitude = (int) (mRecorder.getMaxAmplitude());
    soundDB = (int) (20 * Math.log10( (double) (amplitude)/0.9 ) );
  } else {
    soundDB = 0;
    amplitude = 0;
  }
}

void soundIntensityClick(){
  if ( mouseX > 20 && mouseX <130 && mouseY > 20 && mouseY < 100 ) {
    page = 0;
  }
}