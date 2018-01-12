String state = "START";

Thread distanceRunner = null;
final Runnable distanceUpdater = new Runnable(){
  public void run(){     
    go();
  };
};
final Handler distnaceHandler = new Handler();

float xCloud1 = width-80;
float yCloud1 = 150;

float xCloud2 = width+420;
float yCloud2 = 200;

float xCloud3 = -100;
float yCloud3 = 180;

void distance(){
  strokeWeight(3);
  stroke(#0000ff);
  fill(#0000ff);
  textAlign(CENTER, TOP);
  textSize(height/20);
  imageMode(CORNER);
  rect(0, 0, width, height/10 );
  fill(#ffffff);
  text("Distance", width/2, 40);
  image(backImg, 20, 20, 110, 80);
  
  if (state == "STOP" ){
    image(clouds[1], xCloud1, yCloud1, 80, 80);
    if (xCloud1 > -80) xCloud1--;
    else xCloud1 = width;
    image(clouds[2], xCloud2, yCloud2, 120, 90);
    if (xCloud2 > -120) xCloud2--;
    else xCloud2 = width;
    image(clouds[3], xCloud3, yCloud3, 60, 60);
    if (xCloud3 > -400) xCloud3--;
    else xCloud3 = width;
  }
  imageMode(CENTER);
  image(mens[posMen], width/2, height/3, 300, 300);
  
  textSize(height/25);
  strokeWeight(5);
  stroke(#b3b3b3);
  noFill();
  rect(width/3, height/8+2*height/3, width/3, height/10);
  fill(#000000);
  text(state, width/2, height/8+2*height/3+40);

}

void distanceClick(){
  if ( mouseX > 20 && mouseX <130 && mouseY > 20 && mouseY < 100 ) {
    page = 0;
  }
  
  if ( mouseX > width/3 && mouseX < 2*width/3 && mouseY > height/8+2*height/3 && mouseY < height/8+2*height/3+height/10 ){
    if (distanceRunner == null){ 
        distanceRunner = new Thread(){
            public void run(){
                while (distanceRunner != null && state == "STOP") {
                    try {
                        Thread.sleep(30);
                    } catch (InterruptedException e) { };
                    distnaceHandler.post(distanceUpdater);
                }
            }
        };
        distanceRunner.start();
    }
  if (state == "STOP"){
    state = "START";
    distanceRunner = null;
    posMen = 1;
  }
  else state = "STOP";
    
  }
}

void go(){
   if (posMen < 20) posMen++;
   else posMen = 1;
}