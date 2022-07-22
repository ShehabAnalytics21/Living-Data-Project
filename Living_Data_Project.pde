size(1800, 600);
background(10,30,50);
fill(139,200,125);
stroke(150,90,160);

    Table myData;
    myData = loadTable("collected_data.csv", "header");

    int numRows = myData.getRowCount();
    println("The number of rows in my table is:", numRows);

    float maxSedentary = 0.0;
    float maxSteps = 0.0;
    float maxActivity = 0.0;

 for (int i = 0; i < numRows; i++) {
 float mySteps = myData.getRow(i).getFloat("Steps (average per min)");
  maxSteps = max(mySteps, maxSteps);
}
println("The maximum Number of Steps that I had in one minute on average was:", maxSteps);

   
 for (int i = 0; i < numRows; i++) {
 float myActivity = myData.getRow(i).getFloat("Mean Activity (g)");
  maxActivity = max(myActivity, maxActivity);
}
println("The maximum value for Mean Activty is:",  maxActivity);



  for (int i = 0; i < numRows; i++) {
  beginShape();

int currentDay = myData.getRow(i).getInt("Day");
float xCoordinate = map (currentDay,0,6,110,width-110);

  float centerX = xCoordinate;
  float centerY = height/2;
  float angle = map(i, 0, 24, 0, TWO_PI);

  float avSteps =  myData.getRow(i).getFloat("Steps (average per min)");
  float mapSteps = map(avSteps,0,maxSteps,100,200);
  

  float distanceOffset = 60;
  float angleOffset = 30;
  float distanceOffset2 = mapSteps;


  float avActivity = myData.getRow(i).getFloat("Mean Activity (g)");
  float mapActivity = map(avActivity,0,maxActivity,255,0);
  
  float R = 255;
  float G = mapActivity;
  float B = 0;
  
  fill(R,G,B);


  float avSedentary = myData.getRow(i).getFloat("Sedentary Activity (proportion)");
  float mapSedentary = map(avSedentary,1,maxSedentary,0,255);
  
  float AR = mapSedentary;
  stroke(AR,AR+100,200);




  vertex(centerX, centerY);

  float anchorPointx1 = centerX + distanceOffset * sin(angle + radians(angleOffset));
  float anchorPointy1 = centerY + distanceOffset * cos(angle + radians(angleOffset));

  float anchorPointx2 = centerX + distanceOffset2 * sin(angle);
  float anchorPointy2 = centerY + distanceOffset2 * cos(angle);


  float anchorPointx3 = centerX + distanceOffset * sin(angle - radians(angleOffset));
  float anchorPointy3 = centerY + distanceOffset * cos(angle - radians(angleOffset));

  float controlPointx = centerX + distanceOffset * sin(angle);
  float controlPointy = centerY + distanceOffset * cos(angle);


  bezierVertex(controlPointx, controlPointy, controlPointx, controlPointy, anchorPointx1, anchorPointy1);
  bezierVertex(controlPointx, controlPointy, controlPointx, controlPointy, anchorPointx2, anchorPointy2);
  bezierVertex(controlPointx, controlPointy, controlPointx, controlPointy, anchorPointx3, anchorPointy3);

  bezierVertex(controlPointx, controlPointy, controlPointx, controlPointy, centerX, centerY);

  endShape();
}



save("output.png");
