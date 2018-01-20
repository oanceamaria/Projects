String length1S = "";
String length2S = "";

String unitL1 = "";
String unitL2 = "";

void lengthConverter(){
  strokeWeight(3);
  stroke(#0000ff);
  fill(#0000ff);
  textAlign(CENTER, TOP);
  textSize(height/20);
  imageMode(CORNER);
  rect(0, 0, width, height/9 );
  fill(#ffffff);
  text("Length Converter", width/2, 40);
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
  text(length1S, 20, height/6.8);  
  text(length2S, width/2+40, height/6.8);  
  textSize(height/30);
  text(unitL1, 20, height/5);  
  text(unitL2, width/2+40, height/5);

 if (valueKeyboard.length() <= 15 ) length1S = valueKeyboard; 
 if (unitL1 != "" && unitL2 != "" && length1S != "" ) convertsLength();
  
  textSize(height/35);
  noFill();
  rect(10, height/4, width/2-40, 10*height/20);
  rect(width/2+30, height/4, width/2-40, 10*height/20);
  noStroke();
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4 && mouseY <  height/4+height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4, width/2-40, height/20);
  fill(#000000);
  text("millimeter (mm)", 20, height/3.8); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+height/20 && mouseY <  height/4+2*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+height/20, width/2-40, height/20);
  fill(#000000);
  text("centimeter (cm)", 20, height/3.8+height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+2*height/20 && mouseY <  height/4+3*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+2*height/20, width/2-40, height/20);
  fill(#000000);
  text("inch (in)", 20, height/3.8+2*height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+3*height/20 && mouseY <  height/4+4*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+3*height/20, width/2-40, height/20);
  fill(#000000);
  text("decimeter (dm)", 20, height/3.8+3*height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+4*height/20 && mouseY <  height/4+5*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+4*height/20, width/2-40, height/20);
  fill(#000000);
  text("foot (ft)", 20, height/3.8+4*height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+5*height/20 && mouseY <  height/4+6*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+5*height/20, width/2-40, height/20);
  fill(#000000);
  text("meter (m)", 20, height/3.8+5*height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+6*height/20 && mouseY <  height/4+7*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+6*height/20, width/2-40, height/20);
  fill(#000000);
  text("decameter (dam)", 20, height/3.8+6*height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+7*height/20 && mouseY <  height/4+8*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+7*height/20, width/2-40, height/20);
  fill(#000000);
  text("hectometer (hm)", 20, height/3.8+7*height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+8*height/20 && mouseY <  height/4+9*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+8*height/20, width/2-40, height/20);
  fill(#000000);
  text("kilometer (km)", 20, height/3.8+8*height/20); 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+9*height/20 && mouseY <  height/4+10*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(10, height/4+9*height/20, width/2-40, height/20);
  fill(#000000);
  text("mile (mi)", 20, height/3.8+9*height/20); 
  
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4 && mouseY <  height/4+height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4, width/2-40, height/20);
  fill(#000000);
  text("millimeter (mm)", width/2+40, height/3.8); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+height/20 && mouseY <  height/4+2*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+height/20, width/2-40, height/20);
  fill(#000000);
  text("centimeter (cm)", width/2+40, height/3.8+height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+2*height/20 && mouseY <  height/4+3*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+2*height/20, width/2-40, height/20);
  fill(#000000);
  text("inch (in)", width/2+40, height/3.8+2*height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+3*height/20 && mouseY <  height/4+4*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+3*height/20, width/2-40, height/20);
  fill(#000000);
  text("decimeter (dm)", width/2+40, height/3.8+3*height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+4*height/20 && mouseY <  height/4+5*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+4*height/20, width/2-40, height/20);
  fill(#000000);
  text("foot (ft)", width/2+40, height/3.8+4*height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+5*height/20 && mouseY <  height/4+6*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+5*height/20, width/2-40, height/20);
  fill(#000000);
  text("meter (m)", width/2+40, height/3.8+5*height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+6*height/20 && mouseY <  height/4+7*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+6*height/20, width/2-40, height/20);
  fill(#000000);
  text("decameter (dam)", width/2+40, height/3.8+6*height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+7*height/20 && mouseY <  height/4+8*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+7*height/20, width/2-40, height/20);
  fill(#000000);
  text("hectometer (hm)", width/2+40, height/3.8+7*height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+8*height/20 && mouseY <  height/4+9*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+8*height/20, width/2-40, height/20);
  fill(#000000);
  text("kilometer (km)", width/2+40, height/3.8+8*height/20); 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+9*height/20 && mouseY <  height/4+10*height/20 ) fill(#aaaaaa);
  else fill(#ffffff); 
  rect(width/2+30, height/4+9*height/20, width/2-40, height/20);
  fill(#000000);
  text("mile (mi)", width/2+40, height/3.8+9*height/20); 
}

void lengthConverterClick(){
  if ( mouseX > 20 && mouseX < 130 && mouseY > 20 && mouseY < 100 ) {
    page = 7;
    activeKeyboard = false;
    unitL1 = unitL2 = length1S = length2S = valueKeyboard = "";
  }

  if ( mouseX > 10 && mouseX < width/2-30 && mouseY > height/7 && mouseY < height/7+height/12 ) activeKeyboard = true;
  
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4 && mouseY <  height/4+height/20 ) unitL1 = "millimeter (mm)";
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+height/20 && mouseY <  height/4+2*height/20 ) unitL1 = "centimeter (cm)";
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+2*height/20 && mouseY <  height/4+3*height/20 ) unitL1 = "inch (in)";
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+3*height/20 && mouseY <  height/4+4*height/20 ) unitL1 = "decimeter (dm)";
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+4*height/20 && mouseY <  height/4+5*height/20 ) unitL1 = "foot (ft)";
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+5*height/20 && mouseY <  height/4+6*height/20 ) unitL1 = "meter (m)";
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+6*height/20 && mouseY <  height/4+7*height/20 ) unitL1 = "decameter (dam)";
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+7*height/20 && mouseY <  height/4+8*height/20 ) unitL1 = "hectometer (hm)";
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+8*height/20 && mouseY <  height/4+9*height/20 ) unitL1 = "kilometer (km)"; 
  if (mouseX > 10 && mouseX < width/2-30 && mouseY > height/4+9*height/20 && mouseY <  height/4+10*height/20 ) unitL1 = "mile (mi)"; 
  
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4 && mouseY <  height/4+height/20 ) unitL2 = "millimeter (mm)";
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+height/20 && mouseY <  height/4+2*height/20 ) unitL2 = "centimeter (cm)";
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+2*height/20 && mouseY <  height/4+3*height/20 ) unitL2 = "inch (in)";
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+3*height/20 && mouseY <  height/4+4*height/20 ) unitL2 = "decimeter (dm)";
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+4*height/20 && mouseY <  height/4+5*height/20 ) unitL2 = "foot (ft)";
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+5*height/20 && mouseY <  height/4+6*height/20 ) unitL2 = "meter (m)";
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+6*height/20 && mouseY <  height/4+7*height/20 ) unitL2 = "decameter (dam)";
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+7*height/20 && mouseY <  height/4+8*height/20 ) unitL2 = "hectometer (hm)";
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+8*height/20 && mouseY <  height/4+9*height/20 ) unitL2 = "kilometer (km)"; 
  if (mouseX > width/2+30 && mouseX < width-10 && mouseY > height/4+9*height/20 && mouseY <  height/4+10*height/20 ) unitL2 = "mile (mi)"; 
  
}

void convertsLength(){
  /*
  if ( unitL1 == "millimeter (mm)" && unitL2 == "millimeter (mm)" ) length2S = length1S;
  if ( unitL1 == "millimeter (mm)" && unitL2 == "centimeter (cm)" ) length2S = str( float(length1S) * 0.01 );
  if ( unitL1 == "millimeter (mm)" && unitL2 == "inch (in)" ) length2S = str( float(length1S) * 0.0015500031 );
  if ( unitL1 == "millimeter (mm)" && unitL2 == "decimeter (dm)" ) length2S = str( float(length1S) * 0.0001 );
  if ( unitL1 == "millimeter (mm)" && unitL2 == "foot (ft)" ) length2S = str( float(length1S) * 1.07639104 * pow(10, -5) );
  if ( unitL1 == "millimeter (mm)" && unitL2 == "meter (m)" ) length2S = str( float(length1S) * 1.0 * pow(10, -6) );
  if ( unitL1 == "millimeter (mm)" && unitL2 == "decameter (dam)" ) length2S = str( float(length1S) * 1.0 * pow(10, -8) );
  if ( unitL1 == "millimeter (mm)" && unitL2 == "hectometer (hm)" ) length2S = str( float(length1S) * 1.0 * pow(10, -10) ); 
  if ( unitL1 == "millimeter (mm)" && unitL2 == "kilometer (km)" ) length2S = str( float(length1S) * 1.0 * pow(10, -12) );
  if ( unitL1 == "millimeter (mm)" && unitL2 == "mile (mi)" ) length2S = str( float(length1S) * 3.86102159 * pow(10, -13) );
  
  if ( unitL1 == "centimeter (cm)" && unitL2 == "millimeter (mm)" ) length2S = str( float(length1S) * 100 );
  if ( unitL1 == "centimeter (cm)" && unitL2 == "centimeter (cm)" ) length2S = length1S;
  if ( unitL1 == "centimeter (cm)" && unitL2 == "inch (in)" ) length2S = str( float(length1S) * 0.15500031 );
  if ( unitL1 == "centimeter (cm)" && unitL2 == "decimeter (dm)" ) length2S = str( float(length1S) * 0.01 );
  if ( unitL1 == "centimeter (cm)" && unitL2 == "foot (ft)" ) length2S = str( float(length1S) * 0.00107639104 );
  if ( unitL1 == "centimeter (cm)" && unitL2 == "meter (m)" ) length2S = str( float(length1S) * 1.0 * pow(10, -4) );
  if ( unitL1 == "centimeter (cm)" && unitL2 == "decameter (dam)" ) length2S = str( float(length1S) * 1.0 * pow(10, -6) );
  if ( unitL1 == "centimeter (cm)" && unitL2 == "hectometer (hm)" ) length2S = str( float(length1S) * 1.0 * pow(10, -8) ); 
  if ( unitL1 == "centimeter (cm)" && unitL2 == "kilometer (km)" ) length2S = str( float(length1S) * 1.0 * pow(10, -10) );
  if ( unitL1 == "centimeter (cm)" && unitL2 == "mile (mi)" ) length2S = str( float(length1S) * 3.86102159 * pow(10, -11) );
  
  if ( unitL1 == "inch (in)" && unitL2 == "millimeter (mm)" ) length2S = str( float(length1S) * 645.16 );
  if ( unitL1 == "inch (in)" && unitL2 == "centimeter (cm)" ) length2S = str( float(length1S) * 6.4516 );
  if ( unitL1 == "inch (in)" && unitL2 == "inch (in)" ) length2S = length1S;
  if ( unitL1 == "inch (in)" && unitL2 == "decimeter (dm)" ) length2S = str( float(length1S) * 0.064516 );
  if ( unitL1 == "inch (in)" && unitL2 == "foot (ft)" ) length2S = str( float(length1S) * 0.00694444444 );
  if ( unitL1 == "inch (in)" && unitL2 == "meter (m)" ) length2S = str( float(length1S) * 0.00064516 );
  if ( unitL1 == "inch (in)" && unitL2 == "decameter (dam)" ) length2S = str( float(length1S) * 6.4516 * pow(10, -6) );
  if ( unitL1 == "inch (in)" && unitL2 == "hectometer (hm)" ) length2S = str( float(length1S) * 6.4516 * pow(10, -8) ); 
  if ( unitL1 == "inch (in)" && unitL2 == "kilometer (km)" ) length2S = str( float(length1S) * 6.4516 * pow(10, -10) );
  if ( unitL1 == "inch (in)" && unitL2 == "mile (mi)" ) length2S = str( float(length1S) * 2.49097669 * pow(10, -10) );
  
  if ( unitL1 == "decimeter (dm)" && unitL2 == "millimeter (mm)" ) length2S = str( float(length1S) * 1.0 * pow(10, 4) );
  if ( unitL1 == "decimeter (dm)" && unitL2 == "centimeter (cm)" ) length2S = str( float(length1S) * 100 );
  if ( unitL1 == "decimeter (dm)" && unitL2 == "inch (in)" ) length2S = str( float(length1S) * 15.500031 );
  if ( unitL1 == "decimeter (dm)" && unitL2 == "decimeter (dm)" ) length2S = length1S;
  if ( unitL1 == "decimeter (dm)" && unitL2 == "foot (ft)" ) length2S = str( float(length1S) * 0.107639104  );
  if ( unitL1 == "decimeter (dm)" && unitL2 == "meter (m)" ) length2S = str( float(length1S) * 0.01 );
  if ( unitL1 == "decimeter (dm)" && unitL2 == "decameter (dam)" ) length2S = str( float(length1S) * 0.0001 );
  if ( unitL1 == "decimeter (dm)" && unitL2 == "hectometer (hm)" ) length2S = str( float(length1S) * 1.0 * pow(10, -6) ); 
  if ( unitL1 == "decimeter (dm)" && unitL2 == "kilometer (km)" ) length2S = str( float(length1S) * 1.0 * pow(10, -8) );
  if ( unitL1 == "decimeter (dm)" && unitL2 == "mile (mi)" ) length2S = str( float(length1S) * 3.86102159 * pow(10, -9) );
  
  if ( unitL1 == "foot (ft)" && unitL2 == "millimeter (mm)" ) length2S = str( float(length1S) * 92903.04 );
  if ( unitL1 == "foot (ft)" && unitL2 == "centimeter (cm)" ) length2S = str( float(length1S) * 929.0304 );
  if ( unitL1 == "foot (ft)" && unitL2 == "inch (in)" ) length2S = str( float(length1S) * 144 );
  if ( unitL1 == "foot (ft)" && unitL2 == "decimeter (dm)" ) length2S = str( float(length1S) * 9.290304 );
  if ( unitL1 == "foot (ft)" && unitL2 == "foot (ft)" ) length2S = length1S;
  if ( unitL1 == "foot (ft)" && unitL2 == "meter (m)" ) length2S = str( float(length1S) * 0.09290304 );
  if ( unitL1 == "foot (ft)" && unitL2 == "decameter (dam)" ) length2S = str( float(length1S) * 0.0009290304 );
  if ( unitL1 == "foot (ft)" && unitL2 == "hectometer (hm)" ) length2S = str( float(length1S) * 9.290304 * pow(10, -6) ); 
  if ( unitL1 == "foot (ft)" && unitL2 == "kilometer (km)" ) length2S = str( float(length1S) * 9.290304 * 1.0 * pow(10, -8) );
  if ( unitL1 == "foot (ft)" && unitL2 == "mile (mi)" ) length2S = str( float(length1S) * 3.58700643  * pow(10, -8) );
  
  if ( unitL1 == "meter (m)" && unitL2 == "millimeter (mm)" ) length2S = str( float(length1S) * 1.0 * pow(10, 6) );
  if ( unitL1 == "meter (m)" && unitL2 == "centimeter (cm)" ) length2S = str( float(length1S) * 1.0 * pow(10, 4) );
  if ( unitL1 == "meter (m)" && unitL2 == "inch (in)" ) length2S = str( float(length1S) * 1550.0031 );
  if ( unitL1 == "meter (m)" && unitL2 == "decimeter (dm)" ) length2S = str( float(length1S) * 100 );
  if ( unitL1 == "meter (m)" && unitL2 == "foot (ft)" ) length2S = str( float(length1S) * 10.7639104 );
  if ( unitL1 == "meter (m)" && unitL2 == "meter (m)" ) length2S = length1S;
  if ( unitL1 == "meter (m)" && unitL2 == "decameter (dam)" ) length2S = str( float(length1S) * 0.01 );
  if ( unitL1 == "meter (m)" && unitL2 == "hectometer (hm)" ) length2S = str( float(length1S) * 1.0 * pow(10, -4) ); 
  if ( unitL1 == "meter (m)" && unitL2 == "kilometer (km)" ) length2S = str( float(length1S) * 1.0 * pow(10, -6) );
  if ( unitL1 == "meter (m)" && unitL2 == "mile (mi)" ) length2S = str( float(length1S) * 3.86102159 * pow(10, -7) );
  
  if ( unitL1 == "decameter (dam)" && unitL2 == "millimeter (mm)" ) length2S = str( float(length1S) * 1.0 * pow(10, 8) );
  if ( unitL1 == "decameter (dam)" && unitL2 == "centimeter (cm)" ) length2S = str( float(length1S) * 1.0 * pow(10, 6) );
  if ( unitL1 == "decameter (dam)" && unitL2 == "inch (in)" ) length2S = str( float(length1S) * 155000.31 );
  if ( unitL1 == "decameter (dam)" && unitL2 == "decimeter (dm)" ) length2S = str( float(length1S) * 1.0 * pow(10, 4));
  if ( unitL1 == "decameter (dam)" && unitL2 == "foot (ft)" ) length2S = str( float(length1S) * 1076.39104 );
  if ( unitL1 == "decameter (dam)" && unitL2 == "meter (m)" ) length2S = str( float(length1S) * 100 );
  if ( unitL1 == "decameter (dam)" && unitL2 == "decameter (dam)" ) length2S = length1S;
  if ( unitL1 == "decameter (dam)" && unitL2 == "hectometer (hm)" ) length2S = str( float(length1S) * 0.01 ); 
  if ( unitL1 == "decameter (dam)" && unitL2 == "kilometer (km)" ) length2S = str( float(length1S) * 1.0 * pow(10, -4) );
  if ( unitL1 == "decameter (dam)" && unitL2 == "mile (mi)" ) length2S = str( float(length1S) * 3.86102159 * pow(10, -5) );
  
  if ( unitL1 == "hectometer (hm)" && unitL2 == "millimeter (mm)" ) length2S = str( float(length1S) * 1.0 * pow(10, 10) );
  if ( unitL1 == "hectometer (hm)" && unitL2 == "centimeter (cm)" ) length2S = str( float(length1S) * 1.0 * pow(10, 8) );
  if ( unitL1 == "hectometer (hm)" && unitL2 == "inch (in)" ) length2S = str( float(length1S) * 15500031 );
  if ( unitL1 == "hectometer (hm)" && unitL2 == "decimeter (dm)" ) length2S = str( float(length1S) * 1.0 * pow(10, 6));
  if ( unitL1 == "hectometer (hm)" && unitL2 == "foot (ft)" ) length2S = str( float(length1S) * 107639.104 );
  if ( unitL1 == "hectometer (hm)" && unitL2 == "meter (m)" ) length2S = str( float(length1S) * 1.0 * pow(10, 4) );
  if ( unitL1 == "hectometer (hm)" && unitL2 == "decameter (dam)" ) length2S = str( float(length1S) * 100 );
  if ( unitL1 == "hectometer (hm)" && unitL2 == "hectometer (hm)" ) length2S = length1S; 
  if ( unitL1 == "hectometer (hm)" && unitL2 == "kilometer (km)" ) length2S = str( float(length1S) * 0.01 );
  if ( unitL1 == "hectometer (hm)" && unitL2 == "mile (mi)" ) length2S = str( float(length1S) * 0.00386102159 );
  
  if ( unitL1 == "kilometer (km)" && unitL2 == "millimeter (mm)" ) length2S = str( float(length1S) * 1.0 * pow(10, 12) );
  if ( unitL1 == "kilometer (km)" && unitL2 == "centimeter (cm)" ) length2S = str( float(length1S) * 1.0 * pow(10, 10) );
  if ( unitL1 == "kilometer (km)" && unitL2 == "inch (in)" ) length2S = str( float(length1S) * 1.5500031 * pow(10, 9) );
  if ( unitL1 == "kilometer (km)" && unitL2 == "decimeter (dm)" ) length2S = str( float(length1S) * 1.0 * pow(10, 8));
  if ( unitL1 == "kilometer (km)" && unitL2 == "foot (ft)" ) length2S = str( float(length1S) * 10763910.4 );
  if ( unitL1 == "kilometer (km)" && unitL2 == "meter (m)" ) length2S = str( float(length1S) * 1.0 * pow(10, 6) );
  if ( unitL1 == "kilometer (km)" && unitL2 == "decameter (dam)" ) length2S = str( float(length1S) * 1.0 * pow(10, 4) );
  if ( unitL1 == "kilometer (km)" && unitL2 == "hectometer (hm)" ) length2S = str( float(length1S) * 100 );
  if ( unitL1 == "kilometer (km)" && unitL2 == "kilometer (km)" ) length2S = length1S; 
  if ( unitL1 == "kilometer (km)" && unitL2 == "mile (mi)" ) length2S = str( float(length1S) * 0.386102159 );
  
  if ( unitL1 == "mile (mi)" && unitL2 == "millimeter (mm)" ) length2S = str( float(length1S) * 2.58998811 * pow(10, 12)  );
  if ( unitL1 == "mile (mi)" && unitL2 == "centimeter (cm)" ) length2S = str( float(length1S) * 2.58998811 * pow(10, 10) );
  if ( unitL1 == "mile (mi)" && unitL2 == "inch (in)" ) length2S = str( float(length1S) * 40144896 * 100 );
  if ( unitL1 == "mile (mi)" && unitL2 == "decimeter (dm)" ) length2S = str( float(length1S) * 2.58998811 * pow(10, 8)  );
  if ( unitL1 == "mile (mi)" && unitL2 == "foot (ft)" ) length2S = str( float(length1S) * 27878400 );
  if ( unitL1 == "mile (mi)" && unitL2 == "meter (m)" ) length2S = str( float(length1S) * 2.58998811 * pow(10, 6)  );
  if ( unitL1 == "mile (mi)" && unitL2 == "decameter (dam)" ) length2S = str( float(length1S) * 2.58998811 * pow(10, 4) );
  if ( unitL1 == "mile (mi)" && unitL2 == "hectometer (hm)" ) length2S = str( float(length1S) * 258.998811 );
  if ( unitL1 == "mile (mi)" && unitL2 == "kilometer (km)" ) length2S = str( float(length1S) * 2.58998811 );
  if ( unitL1 == "mile (mi)" && unitL2 == "mile (mi)" ) length2S = length1S; 
  */
}