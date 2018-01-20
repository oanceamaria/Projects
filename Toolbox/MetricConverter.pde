String metric1S = "";
String metric2S = "";

String unitM1 = "";
String unitM2 = "";

void metricConverter(){
  strokeWeight(3);
  stroke(#0000ff);
  fill(#0000ff);
  textAlign(CENTER, TOP);
  textSize(height/20);
  imageMode(CORNER);
  rect(0, 0, width, height/9 );
  fill(#ffffff);
  text("Length Converter", width/2+20, 40);
  image(backImg, 20, 20, 110, 80);
  
  strokeWeight(6);
  stroke(#b3b3b3);
  fill(#000000);
  noFill();
  
  rect(10, height/7.5, width/2-40, height/20, 15);
  text("=", width/2, height/7.3);
  fill(#d9d9d9);
  rect(width/2+30, height/7.5, width/2-40, height/20, 15);
  
  textAlign(LEFT, TOP);
  textSize(height/35);
  fill(#000000);
  text(metric1S, 20, height/6.8);  
  text(metric2S, width/2+40, height/6.8);  
  textSize(height/30);
  text(unitM1, 20, height/5);  
  text(unitM2, width/2+40, height/5);

 if (valueKeyboard.length() <= 15 ) metric1S = valueKeyboard; 
 if (unitM1 != "" && unitM2 != "" && metric1S != "" ) convertsMetric();
  
  textSize(height/35);
  noFill();
  rect(10, height/4, width/2-40, 13*height/20);
  rect(width/2+30, height/4, width/2-40, 13*height/20);
  noStroke();
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4 && mouseY <  height/4+height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4, width/2-40, height/20);
  fill(#000000);
  text("pico (p)", 20, height/3.8); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+height/20 && mouseY <  height/4+2*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+height/20, width/2-40, height/20);
  fill(#000000);
  text("nano (n)", 20, height/3.8+height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+2*height/20 && mouseY <  height/4+3*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+2*height/20, width/2-40, height/20);
  fill(#000000);
  text("micro (µ)", 20, height/3.8+2*height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+3*height/20 && mouseY <  height/4+4*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+3*height/20, width/2-40, height/20);
  fill(#000000);
  text("milli (m)", 20, height/3.8+3*height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+4*height/20 && mouseY <  height/4+5*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+4*height/20, width/2-40, height/20);
  fill(#000000);
  text("centi (c)", 20, height/3.8+4*height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+5*height/20 && mouseY <  height/4+6*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+5*height/20, width/2-40, height/20);
  fill(#000000);
  text("deci (d)", 20, height/3.8+5*height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+6*height/20 && mouseY <  height/4+7*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+6*height/20, width/2-40, height/20);
  fill(#000000);
  text("base", 20, height/3.8+6*height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+7*height/20 && mouseY <  height/4+8*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+7*height/20, width/2-40, height/20);
  fill(#000000);
  text("deka (da)", 20, height/3.8+7*height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+8*height/20 && mouseY <  height/4+9*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+8*height/20, width/2-40, height/20);
  fill(#000000);
  text("hecto (h)", 20, height/3.8+8*height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+9*height/20 && mouseY <  height/4+10*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+9*height/20, width/2-40, height/20);
  fill(#000000);
  text("kilo (k)", 20, height/3.8+9*height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+10*height/20 && mouseY <  height/4+11*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+10*height/20, width/2-40, height/20);
  fill(#000000);
  text("mega (M)", 20, height/3.8+10*height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+11*height/20 && mouseY <  height/4+12*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+11*height/20, width/2-40, height/20);
  fill(#000000);
  text("giga (G)", 20, height/3.8+11*height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+12*height/20 && mouseY <  height/4+13*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+12*height/20, width/2-40, height/20);
  fill(#000000);
  text("tera (T)", 20, height/3.8+12*height/20); 
  
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4 && mouseY <  height/4+height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4, width/2-40, height/20);
  fill(#000000);
  text("pico (p)", width/2+40, height/3.8); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+height/20 && mouseY <  height/4+2*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+height/20, width/2-40, height/20);
  fill(#000000);
  text("nano (n)", width/2+40, height/3.8+height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+2*height/20 && mouseY <  height/4+3*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+2*height/20, width/2-40, height/20);
  fill(#000000);
  text("micro (µ)", width/2+40, height/3.8+2*height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+3*height/20 && mouseY <  height/4+4*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+3*height/20, width/2-40, height/20);
  fill(#000000);
  text("milli (m)", width/2+40, height/3.8+3*height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+4*height/20 && mouseY <  height/4+5*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+4*height/20, width/2-40, height/20);
  fill(#000000);
  text("centi (c)", width/2+40, height/3.8+4*height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+5*height/20 && mouseY <  height/4+6*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+5*height/20, width/2-40, height/20);
  fill(#000000);
  text("deci (d)", width/2+40, height/3.8+5*height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+6*height/20 && mouseY <  height/4+7*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+6*height/20, width/2-40, height/20);
  fill(#000000);
  text("base", width/2+40, height/3.8+6*height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+7*height/20 && mouseY <  height/4+8*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+7*height/20, width/2-40, height/20);
  fill(#000000);
  text("deka (da)", width/2+40, height/3.8+7*height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+8*height/20 && mouseY <  height/4+9*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+8*height/20, width/2-40, height/20);
  fill(#000000);
  text("hecto (h)", width/2+40, height/3.8+8*height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+9*height/20 && mouseY <  height/4+10*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+9*height/20, width/2-40, height/20);
  fill(#000000);
  text("kilo (k)", width/2+40, height/3.8+9*height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+10*height/20 && mouseY <  height/4+11*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+10*height/20, width/2-40, height/20);
  fill(#000000);
  text("mega (M)", width/2+30, height/3.8+10*height/20); 
  if (mouseX > width/2+40 && mouseX < width-10 && mouseY > height/4+11*height/20 && mouseY <  height/4+12*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+11*height/20, width/2-40, height/20);
  fill(#000000);
  text("giga (G)", width/2+40, height/3.8+11*height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+12*height/20 && mouseY <  height/4+13*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+12*height/20, width/2-40, height/20);
  fill(#000000);
  text("tera (T)", width/2+40, height/3.8+12*height/20); 
}

void metricConverterClick(){
  if ( mouseX > 20 && mouseX < 130 && mouseY > 20 && mouseY < 100 ) {
    page = 7;
    activeKeyboard = false;
    unitM1 = unitM2 = metric1S = metric2S = valueKeyboard = "";
  }

  if ( mouseX > 10 && mouseX < width/2-30 && mouseY > height/7 && mouseY < height/7+height/12 ) activeKeyboard = true;
  
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4 && mouseY <  height/4+height/20 ) unitM1 = "pico (p)";
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+height/20 && mouseY <  height/4+2*height/20 ) unitM1 = "nano (n)";
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+2*height/20 && mouseY <  height/4+3*height/20 ) unitM1 = "micro (µ)";
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+3*height/20 && mouseY <  height/4+4*height/20 ) unitM1 = "milli (m)";
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+4*height/20 && mouseY <  height/4+5*height/20 ) unitM1 = "centi (c)";
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+5*height/20 && mouseY <  height/4+6*height/20 ) unitM1 = "deci (d)";
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+6*height/20 && mouseY <  height/4+7*height/20 ) unitM1 = "base";
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+7*height/20 && mouseY <  height/4+8*height/20 ) unitM1 = "deka (da)";
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+8*height/20 && mouseY <  height/4+9*height/20 ) unitM1 = "hecto (h)"; 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+9*height/20 && mouseY <  height/4+10*height/20 ) unitM1 = "kilo (k)"; 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+10*height/20 && mouseY <  height/4+11*height/20 ) unitM1 = "mega (M)";   
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+11*height/20 && mouseY <  height/4+12*height/20 ) unitM1 = "giga (G)"; 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+12*height/20 && mouseY <  height/4+13*height/20 ) unitM1 = "tera (T)"; 
  
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4 && mouseY <  height/4+height/20 ) unitM2 = "pico (p)";
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+height/20 && mouseY <  height/4+2*height/20 ) unitM2 = "nano (n)";
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+2*height/20 && mouseY <  height/4+3*height/20 ) unitM2 = "micro (µ)";
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+3*height/20 && mouseY <  height/4+4*height/20 ) unitM2 = "milli (m)";
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+4*height/20 && mouseY <  height/4+5*height/20 ) unitM2 = "centi (c)";
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+5*height/20 && mouseY <  height/4+6*height/20 ) unitM2 = "deci (d)";
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+6*height/20 && mouseY <  height/4+7*height/20 ) unitM2 = "base";
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+7*height/20 && mouseY <  height/4+8*height/20 ) unitM2 = "deka (da)";
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+8*height/20 && mouseY <  height/4+9*height/20 ) unitM2 = "hecto (h)"; 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+9*height/20 && mouseY <  height/4+10*height/20 ) unitM2 = "kilo (k)";  
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+10*height/20 && mouseY <  height/4+11*height/20 ) unitM2 = "mega (M)"; 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+11*height/20 && mouseY <  height/4+12*height/20 ) unitM2 = "giga (G)"; 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+12*height/20 && mouseY <  height/4+13*height/20 ) unitM2 = "tera (T)";
  
}

void convertsMetric(){
  /*
  if ( unitM1 == "pico (p)" && unitM2 == "pico (p)" ) metric2S = metric1S;
  if ( unitM1 == "pico (p)" && unitM2 == "nano (n)" ) metric2S = str( float(metric1S) * 0.1 );
  if ( unitM1 == "pico (p)" && unitM2 == "micro (µ)" ) metric2S = str( float(metric1S) * 0.0393700787 );
  if ( unitM1 == "pico (p)" && unitM2 == "milli (m)" ) metric2S = str( float(metric1S) * 0.001 );
  if ( unitM1 == "pico (p)" && unitM2 == "centi (c)" ) metric2S = str( float(metric1S) * 0.0032808399 );
  if ( unitM1 == "pico (p)" && unitM2 == "deci (d)" ) metric2S = str( float(metric1S) * 1.0 * pow(10, -3) );
  if ( unitM1 == "pico (p)" && unitM2 == "base" ) metric2S = str( float(metric1S) * 1.0 * pow(10, -4) );
  if ( unitM1 == "pico (p)" && unitM2 == "deka (da)" ) metric2S = str( float(metric1S) * 1.0 * pow(10, -5) ); 
  if ( unitM1 == "pico (p)" && unitM2 == "hecto (h)" ) metric2S = str( float(metric1S) * 1.0 * pow(10, -6) );
  if ( unitM1 == "pico (p)" && unitM2 == "kilo (k)" ) metric2S = str( float(metric1S) * 6.21371192  * pow(10, -7) );
  
  if ( unitM1 == "nano (n)" && unitM2 == "pico (p)" ) metric2S = str( float(metric1S) * 10 );
  if ( unitM1 == "nano (n)" && unitM2 == "nano (n)" ) metric2S = metric1S;
  if ( unitM1 == "nano (n)" && unitM2 == "micro (µ)" ) metric2S = str( float(metric1S) * 0.393700787 );
  if ( unitM1 == "nano (n)" && unitM2 == "milli (m)" ) metric2S = str( float(metric1S) * 0.1 );
  if ( unitM1 == "nano (n)" && unitM2 == "centi (c)" ) metric2S = str( float(metric1S) * 0.032808399 );
  if ( unitM1 == "nano (n)" && unitM2 == "deci (d)" ) metric2S = str( float(metric1S) * 1.0 * pow(10, -2) );
  if ( unitM1 == "nano (n)" && unitM2 == "base" ) metric2S = str( float(metric1S) * 1.0 * pow(10, -3) );
  if ( unitM1 == "nano (n)" && unitM2 == "deka (da)" ) metric2S = str( float(metric1S) * 1.0 * pow(10, -4) ); 
  if ( unitM1 == "nano (n)" && unitM2 == "hecto (h)" ) metric2S = str( float(metric1S) * 1.0 * pow(10, -5) );
  if ( unitM1 == "nano (n)" && unitM2 == "kilo (k)" ) metric2S = str( float(metric1S) * 6.21371192 * pow(10, -6) );
  
  if ( unitM1 == "micro (µ)" && unitM2 == "pico (p)" ) metric2S = str( float(metric1S) * 25.4 );
  if ( unitM1 == "micro (µ)" && unitM2 == "nano (n)" ) metric2S = str( float(metric1S) * 2.54 );
  if ( unitM1 == "micro (µ)" && unitM2 == "micro (µ)" ) metric2S = metric1S;
  if ( unitM1 == "micro (µ)" && unitM2 == "milli (m)" ) metric2S = str( float(metric1S) * 0.254 );
  if ( unitM1 == "micro (µ)" && unitM2 == "centi (c)" ) metric2S = str( float(metric1S) * 0.0833333333 );
  if ( unitM1 == "micro (µ)" && unitM2 == "deci (d)" ) metric2S = str( float(metric1S) * 0.0254 );
  if ( unitM1 == "micro (µ)" && unitM2 == "base" ) metric2S = str( float(metric1S) * 0.00254 );
  if ( unitM1 == "micro (µ)" && unitM2 == "deka (da)" ) metric2S = str( float(metric1S) * 2.54 * pow(10, -4) ); 
  if ( unitM1 == "micro (µ)" && unitM2 == "hecto (h)" ) metric2S = str( float(metric1S) * 2.54 * pow(10, -5) );
  if ( unitM1 == "micro (µ)" && unitM2 == "kilo (k)" ) metric2S = str( float(metric1S) * 1.57828283 * pow(10, -5) );
  
  if ( unitM1 == "milli (m)" && unitM2 == "pico (p)" ) metric2S = str( float(metric1S) * 100 );
  if ( unitM1 == "milli (m)" && unitM2 == "nano (n)" ) metric2S = str( float(metric1S) * 10 );
  if ( unitM1 == "milli (m)" && unitM2 == "micro (µ)" ) metric2S = str( float(metric1S) * 3.93700787 );
  if ( unitM1 == "milli (m)" && unitM2 == "milli (m)" ) metric2S = metric1S;
  if ( unitM1 == "milli (m)" && unitM2 == "centi (c)" ) metric2S = str( float(metric1S) * 0.32808399  );
  if ( unitM1 == "milli (m)" && unitM2 == "deci (d)" ) metric2S = str( float(metric1S) * 0.1 );
  if ( unitM1 == "milli (m)" && unitM2 == "base" ) metric2S = str( float(metric1S) * 0.001 );
  if ( unitM1 == "milli (m)" && unitM2 == "deka (da)" ) metric2S = str( float(metric1S) * 1.0 * pow(10, -3) ); 
  if ( unitM1 == "milli (m)" && unitM2 == "hecto (h)" ) metric2S = str( float(metric1S) * 1.0 * pow(10, -4) );
  if ( unitM1 == "milli (m)" && unitM2 == "kilo (k)" ) metric2S = str( float(metric1S) * 6.21371192 * pow(10, -5) );
  
  if ( unitM1 == "centi (c)" && unitM2 == "pico (p)" ) metric2S = str( float(metric1S) * 304.8 );
  if ( unitM1 == "centi (c)" && unitM2 == "nano (n)" ) metric2S = str( float(metric1S) * 30.48 );
  if ( unitM1 == "centi (c)" && unitM2 == "micro (µ)" ) metric2S = str( float(metric1S) * 12 );
  if ( unitM1 == "centi (c)" && unitM2 == "milli (m)" ) metric2S = str( float(metric1S) * 3.048 );
  if ( unitM1 == "centi (c)" && unitM2 == "centi (c)" ) metric2S = metric1S;
  if ( unitM1 == "centi (c)" && unitM2 == "deci (d)" ) metric2S = str( float(metric1S) * 0.3048 );
  if ( unitM1 == "centi (c)" && unitM2 == "base" ) metric2S = str( float(metric1S) *0.03048 );
  if ( unitM1 == "centi (c)" && unitM2 == "deka (da)" ) metric2S = str( float(metric1S) * 3.048 * pow(10, -3) ); 
  if ( unitM1 == "centi (c)" && unitM2 == "hecto (h)" ) metric2S = str( float(metric1S) * 3.048 * 1.0 * pow(10, -4) );
  if ( unitM1 == "centi (c)" && unitM2 == "kilo (k)" ) metric2S = str( float(metric1S) * 0.000189393939 );
  
  if ( unitM1 == "deci (d)" && unitM2 == "pico (p)" ) metric2S = str( float(metric1S) * 1000 );
  if ( unitM1 == "deci (d)" && unitM2 == "nano (n)" ) metric2S = str( float(metric1S) * 100 );
  if ( unitM1 == "deci (d)" && unitM2 == "micro (µ)" ) metric2S = str( float(metric1S) * 39.3700787 );
  if ( unitM1 == "deci (d)" && unitM2 == "milli (m)" ) metric2S = str( float(metric1S) * 10 );
  if ( unitM1 == "deci (d)" && unitM2 == "centi (c)" ) metric2S = str( float(metric1S) * 3.2808399 );
  if ( unitM1 == "deci (d)" && unitM2 == "deci (d)" ) metric2S = metric1S;
  if ( unitM1 == "deci (d)" && unitM2 == "base" ) metric2S = str( float(metric1S) * 0.1 );
  if ( unitM1 == "deci (d)" && unitM2 == "deka (da)" ) metric2S = str( float(metric1S) * 0.01 ); 
  if ( unitM1 == "deci (d)" && unitM2 == "hecto (h)" ) metric2S = str( float(metric1S) * 0.001 );
  if ( unitM1 == "deci (d)" && unitM2 == "kilo (k)" ) metric2S = str( float(metric1S) * 0.000621371192 );
  
  if ( unitM1 == "base" && unitM2 == "pico (p)" ) metric2S = str( float(metric1S) * 1.0 * pow(10, 4) );
  if ( unitM1 == "base" && unitM2 == "nano (n)" ) metric2S = str( float(metric1S) * 1.0 * pow(10, 3) );
  if ( unitM1 == "base" && unitM2 == "micro (µ)" ) metric2S = str( float(metric1S) * 393.700787 );
  if ( unitM1 == "base" && unitM2 == "milli (m)" ) metric2S = str( float(metric1S) * 100 );
  if ( unitM1 == "base" && unitM2 == "centi (c)" ) metric2S = str( float(metric1S) * 32.808399 );
  if ( unitM1 == "base" && unitM2 == "deci (d)" ) metric2S = str( float(metric1S) * 10 );
  if ( unitM1 == "base" && unitM2 == "base" ) metric2S = metric1S;
  if ( unitM1 == "base" && unitM2 == "deka (da)" ) metric2S = str( float(metric1S) * 0.1 ); 
  if ( unitM1 == "base" && unitM2 == "hecto (h)" ) metric2S = str( float(metric1S) * 0.01 );
  if ( unitM1 == "base" && unitM2 == "kilo (k)" ) metric2S = str( float(metric1S) * 0.00621371192 );
  
  if ( unitM1 == "deka (da)" && unitM2 == "pico (p)" ) metric2S = str( float(metric1S) * 1.0 * pow(10, 5) );
  if ( unitM1 == "deka (da)" && unitM2 == "nano (n)" ) metric2S = str( float(metric1S) * 1.0 * pow(10, 4) );
  if ( unitM1 == "deka (da)" && unitM2 == "micro (µ)" ) metric2S = str( float(metric1S) * 3937.00787 );
  if ( unitM1 == "deka (da)" && unitM2 == "milli (m)" ) metric2S = str( float(metric1S) * 1.0 * pow(10, 3));
  if ( unitM1 == "deka (da)" && unitM2 == "centi (c)" ) metric2S = str( float(metric1S) * 328.08399 );
  if ( unitM1 == "deka (da)" && unitM2 == "deci (d)" ) metric2S = str( float(metric1S) * 100 );
  if ( unitM1 == "deka (da)" && unitM2 == "base" ) metric2S = str( float(metric1S) * 10 );
  if ( unitM1 == "deka (da)" && unitM2 == "deka (da)" ) metric2S = metric1S; 
  if ( unitM1 == "deka (da)" && unitM2 == "hecto (h)" ) metric2S = str( float(metric1S) * 0.1 );
  if ( unitM1 == "deka (da)" && unitM2 == "kilo (k)" ) metric2S = str( float(metric1S) * 0.0621371192 );
  
  if ( unitM1 == "hecto (h)" && unitM2 == "pico (p)" ) metric2S = str( float(metric1S) * 1.0 * pow(10, 6) );
  if ( unitM1 == "hecto (h)" && unitM2 == "nano (n)" ) metric2S = str( float(metric1S) * 1.0 * pow(10, 5) );
  if ( unitM1 == "hecto (h)" && unitM2 == "micro (µ)" ) metric2S = str( float(metric1S) * 39370.0787 );
  if ( unitM1 == "hecto (h)" && unitM2 == "milli (m)" ) metric2S = str( float(metric1S) * 1.0 * pow(10, 4));
  if ( unitM1 == "hecto (h)" && unitM2 == "centi (c)" ) metric2S = str( float(metric1S) * 3280.8399 );
  if ( unitM1 == "hecto (h)" && unitM2 == "deci (d)" ) metric2S = str( float(metric1S) * 1.0 * pow(10, 3) );
  if ( unitM1 == "hecto (h)" && unitM2 == "base" ) metric2S = str( float(metric1S) * 100 );
  if ( unitM1 == "hecto (h)" && unitM2 == "deka (da)" ) metric2S = str( float(metric1S) * 10 );
  if ( unitM1 == "hecto (h)" && unitM2 == "hecto (h)" ) metric2S = metric1S; 
  if ( unitM1 == "hecto (h)" && unitM2 == "kilo (k)" ) metric2S = str( float(metric1S) * 0.621371192 );
  
  if ( unitM1 == "kilo (k)" && unitM2 == "pico (p)" ) metric2S = str( float(metric1S) * 1609344  );
  if ( unitM1 == "kilo (k)" && unitM2 == "nano (n)" ) metric2S = str( float(metric1S) * 160934.4 );
  if ( unitM1 == "kilo (k)" && unitM2 == "micro (µ)" ) metric2S = str( float(metric1S) * 63360 );
  if ( unitM1 == "kilo (k)" && unitM2 == "milli (m)" ) metric2S = str( float(metric1S) * 16093.44  );
  if ( unitM1 == "kilo (k)" && unitM2 == "centi (c)" ) metric2S = str( float(metric1S) * 5280 );
  if ( unitM1 == "kilo (k)" && unitM2 == "deci (d)" ) metric2S = str( float(metric1S) * 1609.344 );
  if ( unitM1 == "kilo (k)" && unitM2 == "base" ) metric2S = str( float(metric1S) * 160.9344 );
  if ( unitM1 == "kilo (k)" && unitM2 == "deka (da)" ) metric2S = str( float(metric1S) * 16.09344 );
  if ( unitM1 == "kilo (k)" && unitM2 == "hecto (h)" ) metric2S = str( float(metric1S) * 1.609344 );
  if ( unitM1 == "kilo (k)" && unitM2 == "kilo (k)" ) metric2S = metric1S; 
  */
}