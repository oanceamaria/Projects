double latitude = 0;
double longitude = 0;
double altitude = 0;

void location(){
  strokeWeight(3);
  stroke(#0000ff);
  fill(#0000ff);
  textAlign(CENTER, TOP);
  textSize(height/20);
  imageMode(CORNER);
  rect(0, 0, width, height/10 );
  fill(#ffffff);
  text("Location", width/2, 40);
  image(backImg, 20, 20, 110, 80);
  imageMode(CENTER);
  image(locationImg, width/2, height/3.5);
  
  activity.runOnUiThread(new Runnable(){
      public void run(){
        if ( myLocation.canAccessGPS() ) locManager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 0, 0, myLocation);
      }
    });
  
  textAlign(CORNER, TOP);
  fill(#000000);
  textSize(height/24);
  if (GPSenabeled){
    if (latitude != 0){
      text( "Latitude: " + latitude ,  width/14, height/2.5);
      text( "Longitude: " + longitude ,  width/14, height/2.15);
      text( "Altitude: " + altitude ,  width/14, height/1.9);
    }
    else text( "GPS conecting..." ,  width/14, height/2.5);
  }
  else text( "GPS is not enabled." ,  width/14, height/2.5);
}

void locationClick(){
  if ( mouseX > 20 && mouseX <130 && mouseY > 20 && mouseY < 100 ) {
    page = 0;
  }
}