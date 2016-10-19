/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void button2_click1(GButton source, GEvent event) { //_CODE_:button2:558234:
  println("button2 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button2:558234:

public void button3_click1(GButton source, GEvent event) { //_CODE_:button3:898742:
  println("button3 - GButton >> GEvent." + event + " @ " + millis());
  
  if((credits >= 150) && (creditCounter <=8)) { //credit cost
  
    while(boo4==false){
      
      boo5 = false; //reassign this as false
      
       
       x = random(100,270); //this generates a random x float and a random y float (i dont want it to overlap so the furthest it will ever be is 270 +20)
       y = random(100,350);
       
       if (y>=200){ //if it placed the random on top of or behind the base from the y
         x = random(200,250); //generate an appropriate x value
       }
       
       if(x<=100){ //if it placed the random on top of or behind the base from the x 
          y = random(100,250); //generate an appropriate y value
       }
        
       
       parray [creditCounter] = new PVector(x,y);
       
     if(creditCounter !=0){
       for(int x = 0; x<= creditCounter;x++){ //if it's ran through this thing 1 times than scan it for only one element, if it's done it two times, scan it for both elements etc. 
      
         //applying the math distance formula derived from pythagorean theorum... i actually looked up how to do this math cause i'd forgotten xD
         
         float distanceX = (abs(parray[creditCounter].x - (parray [x].x))); //get the positive value for the distance between the two images
         
         float distanceY = parray[creditCounter].dist(parray [x]); //get the distance between them, this one can be just dist cause i'm using it as the smmaller of the two values
         
         
         if (((distanceX <= 55) && (distanceY <= 32) && (x != creditCounter))){
           
           println("HOOOOOOOOOOOOOOOO i'm hitting the " + x + " image");
           boo5 = true; //it's only turned true if a hit happens
           
           
         }  
       }//the for loop
     } // the if loop
     
     
     if (creditCounter ==0){
       boo5 = false;
       
     }
     
     if(boo5==true){ //if at any point it hit the check condition
       boo4=false; //run the loop again
     }
     if(boo5==false){ //if it didn't hit anything else
       boo4=true; //exit the loop
       //boo5 = false;
     }
     
    } //this is the boo4 while loop
  
  posDepotImage.x = x;
  posDepotImage.y = y;
    
  print(parray [creditCounter]);
    
  creditCounter +=1; //increase credit counter 
     
  credits -=150; //decrease the credit amount by the cost
    
  boo4 = false; //reset the program flow boolean
  
}//if condition
} //_CODE_:button3:898742:

public void button4_click1(GButton source, GEvent event) { //_CODE_:button4:501879:
  println("button4 - GButton >> GEvent." + event + " @ " + millis());
  
  if((credits >= 400) && (creditCounter <=8)) { //credit cost
  
    while(boo6==false){
      
      boo7 = false; //reassign this as false
      
       
       xxx = random(100,270); //this generates a random x float and a random y float
       yyy = random(100,350);
       
       if (yyy>=200){ //if it placed the random on top of or behind the base from the y
         xxx = random(200,250); //generate an appropriate x value
       }
       
       if(xxx<=100){ //if it placed the random on top of or behind the base from the x 
          yyy = random(100,250); //generate an appropriate y value
       }
        
       
       parray [creditCounter] = new PVector(xxx,yyy);
       
     if(creditCounter !=0){
       for(int x = 0; x<= creditCounter;x++){ //if it's ran through this thing 1 times than scan it for only one element, if it's done it two times, scan it for both elements etc. 
      
         //applying the math distance formula derived from pythagorean theorum... i actually looked up how to do this math cause i'd forgotten xD
         
         float distanceX = (abs(parray[creditCounter].x - (parray [x].x))); //get the positive value for the distance between the two images
         
         float distanceY = parray[creditCounter].dist(parray [x]); //get the distance between them, this one can be just dist cause i'm using it as the smmaller of the two values
         
         
         if (((distanceX <= 50) && (distanceY <= 32) && (x != creditCounter))){
           
           println("HOOOOOOOOOOOOOOOO i'm hitting the " + x + " image");
           boo7 = true; //it's only turned true if a hit happens
           
           
         }  
       }//the for loop
     } // the if loop
     
     
     if (creditCounter ==0){
       boo7 = false;
       
     }
     
     if(boo7==true){ //if at any point it hit the check condition
       boo6=false; //run the loop again
     }
     if(boo7==false){ //if it didn't hit anything else
       boo6=true; //exit the loop
       //boo7 = false;
     }
     
    } //this is the boo4 while loop
  
  posFacilityImage.x = xxx;
  posFacilityImage.y = yyy;
    
  print(parray [creditCounter]);
    
  creditCounter +=1; //increase credit counter 
     
  enemyBoo = true; //allow enemies to spawn
  workerBoo = true; //allow the fighter button to spawn
  flowBoo = true;
  
  credits -=400; //decrease the credit amount by the cost
  
  button4Clicked = true;
    
  boo6 = false; //reset the program flow boolean
  
  
}//if condition
  
} //_CODE_:button4:501879:

public void button8_click1(GButton source, GEvent event) { //_CODE_:button8:266236:
  println("button8 - GButton >> GEvent." + event + " @ " + millis());
  
  if((credits >= 800)&& (creditCounter <=8)) { //credit cost
  
    while(boo8==false){
      
      boo9 = false; //reassign this as false
      
       
       xxxx = random(100,270); //this generates a random x float and a random y float
       yyyy = random(100,350);
       
       if (yyyy>=200){ //if it placed the random on top of or behind the base from the y
         xxxx = random(200,250); //generate an appropriate x value
       }
       
       if(xxxx<=100){ //if it placed the random on top of or behind the base from the x 
          yyyy = random(100,250); //generate an appropriate y value
       }
        
       
       parray [creditCounter] = new PVector(xxxx,yyyy);
       
     if(creditCounter !=0){
       for(int x = 0; x<= creditCounter;x++){ //if it's ran through this thing 1 times than scan it for only one element, if it's done it two times, scan it for both elements etc. 
      
         //applying the math distance formula derived from pythagorean theorum... i actually looked up how to do this math cause i'd forgotten xD
         
         float distanceX = (abs(parray[creditCounter].x - (parray [x].x))); //get the positive value for the distance between the two images
         
         float distanceY = parray[creditCounter].dist(parray [x]); //get the distance between them, this one can be just dist cause i'm using it as the smmaller of the two values
         
         
         if (((distanceX <= 50) && (distanceY <= 32) && (x != creditCounter))){
           
           println("HOOOOOOOOOOOOOOOO i'm hitting the " + x + " image");
           boo9 = true; //it's only turned true if a hit happens
           
           
         }  
       }//the for loop
     } // the if loop
     
     
     if (creditCounter ==0){
       boo9 = false;
       
     }
     
     if(boo9==true){ //if at any point it hit the check condition
       boo8=false; //run the loop again
     }
     if(boo9==false){ //if it didn't hit anything else
       boo8=true; //exit the loop
       //boo9 = false;
     }
     
    } //this is the boo4 while loop
  
   posVehicleImage.x = xxxx;
   posVehicleImage.y = yyyy;
    
  print(parray [creditCounter]);
    
  creditCounter +=1; //increase credit counter 
     
  vehiclesBoo = true;
  credits -=800;
  
  boo8 = false; //reset the program flow boolean
  if (health <=100){
    health =100;
  }
  
  
}//if condition{ //credit cost

} //_CODE_:button8:266236:

public void button1_click1(GButton source, GEvent event) { //_CODE_:button1:284812:
  if(credits>=50){
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
  fighter();
  credits -=50;
  }
} //_CODE_:button1:284812:

/*synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window1:639107:
  appc.background(230);
} //_CODE_:window1:639107:*/

public void imgButton1_click1(GImageButton source, GEvent event) { //_CODE_:imgButton1:268925:
//commented
  println("imgButton1 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:imgButton1:268925:

public void button5_click1(GButton source, GEvent event) { //_CODE_:button5:537676:
//play button 
  println("button5 - GButton >> GEvent." + event + " @ " + millis());
  surface.setVisible(true); //let us see the game screen
  window1.setActionOnClose(GWindow.KEEP_OPEN); //this is a cool little cheat, just change their association before they are clos
  window2.setActionOnClose(GWindow.KEEP_OPEN);
  window1.forceClose();
  window2.forceClose();
  
  //window1.setVisible(false);
  welcomeBoo = true; 
} //_CODE_:button5:537676:

public void button7_click1(GButton source, GEvent event) { //_CODE_:button7:676925:
//button on the left
  println("button7 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button7:676925:

public void button9_click1(GButton source, GEvent event) { //_CODE_:button9:241824:
//button on the right
  println("button9 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button9:241824:

public void button6_click1(GButton source, GEvent event) { //_CODE_:button6:810192:
//instructions button

  println("button6 - GButton >> GEvent." + event + " @ " + millis());
  window1.setVisible(false);
  window2.setVisible(true);

} //_CODE_:button6:810192:

public void button10_click1(GButton source, GEvent event) { //_CODE_:button10:476881:
  println("button10 - GButton >> GEvent." + event + " @ " + millis());
  window1.setVisible(true);
  window2.setVisible(false);
} //_CODE_:button10:476881:

public void button11_click1(GButton source, GEvent event) { //_CODE_:button11:721410:
  println("button11 - GButton >> GEvent." + event + " @ " + millis()); //yes button
  button1.setVisible(false);
  button2.setVisible(false);
  button3.setVisible(false);
  button4.setVisible(false);
  button8.setVisible(false);
  button11.setVisible(false);
  button12.setVisible(false);
  label13.setVisible(false);
  label2.setVisible(false);
  gameMusic.stop();
  
  gameCounter += 1;
  
  initialize();
  boo1 = false; //reset the game back to the intro
} //_CODE_:button11:721410:

public void button12_click1(GButton source, GEvent event) { //_CODE_:button12:588858:
  println("button12 - GButton >> GEvent." + event + " @ " + millis()); //no button
  System.exit(0);
} //_CODE_:button12:588858:


public void handleButtonEvents(GButton button, GEvent event){
}

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window2:995828:
  appc.background(230); //i'm pretty sure this is the game screen 
} //_CODE_:window2:995828:

synchronized public void win_draw(PApplet appc, GWinData data) { //_CODE_:window1:639107: //THIS IS WINDOW 1
  appc.background(welcomeBackground);
  
  button5 = new GButton(window1, 350, 100, 300, 100);
  button5.setText("Play");
  button5.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  button5.addEventHandler(this, "button5_click1");
  /*
  button7 = new GButton(window1, 50, 300, 200, 100);
  button7.setText("Face text");
  button7.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  button7.addEventHandler(this, "button7_click1");
  button9 = new GButton(window1, 750, 300, 200, 100);
  button9.setText("Face text");
  button9.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  button9.addEventHandler(this, "button9_click1");
  
  */
  
  label10 = new GLabel(window1, 50, 200, 400, 400);
  label10.setFont(new Font("Orator Std", Font.PLAIN, 150));
  label10.setLocalColorScheme(8);
  label10.setText("Call");
  label10.setOpaque(false);
  
  label11 = new GLabel(window1, 350, 30, 300, 500);
  label11.setFont(new Font("Orator Std", Font.PLAIN, 50));
  label11.setLocalColorScheme(8);
  label11.setText("Of The");
  label11.setOpaque(false);
  
  label12 = new GLabel(window1, 525, 200, 500, 400);
  label12.setFont(new Font("Orator Std", Font.PLAIN, 150));
  label12.setLocalColorScheme(8);
  label12.setText("Fight");
  label12.setOpaque(false);
  
  
  button6 = new GButton(window1, 350, 500, 300, 100);
  button6.setText("Instructions");
  button6.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  button6.addEventHandler(this, "button6_click1");
} //_CODE_:window1:639107:

synchronized public void win_draw2(PApplet appc, GWinData data) { //_CODE_:window1:639107: //this is window2
  appc.background(15);
  
  button10 = new GButton(window2, 905, 100, 80, 30);
  button10.setText("Back");
  button10.addEventHandler(this, "button10_click1");
  label1 = new GLabel(window2, 275, 50, 500, 100);
  label1.setFont(new Font("Monospaced", Font.PLAIN, 50));
  label1.setLocalColorScheme(G4P.RED_SCHEME);
  label1.setText("INSTRUCTIONS");
  label1.setOpaque(false);
  label3 = new GLabel(window2, 100, 150, 800, 100);
  label3.setFont(new Font("Serif", Font.PLAIN, 14));
  label3.setText("The objective of the game is to kill all the enemies. You will be creating a civilizationn on the surface of a newly explored planet and facing all the challlenges that come with settling. Once you're civilization has reached a critical point, ennemies will begin to spawn and will attack your base (from the right side of the screen). You must kill the ennemies by clicking the fighter button before they reach the wall.");
  label3.setOpaque(false);
  label3.setLocalColorScheme(8);
  label4 = new GLabel(window2, 100, 225, 800, 100);
  label4.setFont(new Font("Serif", Font.PLAIN, 14));
  label4.setText("This game is a race against the clock strategy game where you must wisely ration your ressources preparing for an onslaught.");
  label4.setOpaque(false);
  label4.setLocalColorScheme(8);
  label5 = new GLabel(window2, 100, 300, 800, 100);
  label5.setFont(new Font("Serif", Font.PLAIN, 14));
  label5.setText("You earn credits at a constant rate throughout the game and you can choose to allocate your credits depending on your need." );
  label5.setOpaque(false);
  label5.setLocalColorScheme(8);
  label6 = new GLabel(window2, 75, 375, 800, 100);
  label6.setFont(new Font("Serif", Font.PLAIN, 14));
  label6.setIcon("creditDepot2.png", 1, GAlign.LEFT, GAlign.MIDDLE);
  label6.setText("Credit Depots increase the rate at which your base spawns credits and in order to build a new one it costs 150.");
  label6.setOpaque(false);
  label6.setLocalColorScheme(8);
  label7 = new GLabel(window2, 75, 450, 800, 100);
  label7.setFont(new Font("Serif", Font.PLAIN, 14));
  label7.setIcon("fighterSpawn2.gif", 1, GAlign.LEFT, GAlign.MIDDLE);
  label7.setText("Training Camps allow you to create fighters who can defend your base from enemies. Spawning this base allows you to begin spawning fighters. This base costs 400. It is recomended that you have no more than one as it can waste your credits. WARNING: AFTER A TRAINING CAMP IS CREATED ENNEMIES WILL BEGIN TO SPAWN SO IT IS RECOMENDED THAT YOU HAVE ENOUGH CREDITS TO FEND OFF ENEMIES");
  label7.setOpaque(false);
  label7.setLocalColorScheme(8);
  label8 = new GLabel(window2, 75, 525, 800, 100);
  label8.setFont(new Font("Serif", Font.PLAIN, 14));
  label8.setIcon("fighter2.png", 1, GAlign.LEFT, GAlign.MIDDLE);
  label8.setText("                         Fighters are the bread and butter of your base. They defend your base from enemies. You must create 1 fighter per enemy or the enemy will reach the base and destroy it. Fighters cost 50 credits.");
  label8.setOpaque(false);
  label8.setLocalColorScheme(8);
  label9 = new GLabel(window2, 75, 600, 800, 100);
  label9.setFont(new Font("Serif", Font.PLAIN, 14));
  label9.setIcon("vehicleSpawn2.gif", 1, GAlign.LEFT, GAlign.MIDDLE);
  label9.setText("Rebuilders are late game buildings that fully restore your low health. These buildings cost 800 credits." );
  label9.setOpaque(false);
  label9.setLocalColorScheme(8);
  
  
  //"You must create fighters in order
} //_CODE_:window1:639107:

// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Sketch Window");
  button2 = new GButton(this, 75, 500, 125, 35);
  button2.setText("Credits:");
  button2.addEventHandler(this, "button2_click1");
  button3 = new GButton(this, 200, 500, 125, 35);
  button3.setIcon("creditDepot2.png", 1, GAlign.RIGHT, GAlign.MIDDLE);
  button3.setText("Credit Depot");
  button3.addEventHandler(this, "button3_click1");
  button4 = new GButton(this, 325, 500, 125, 35);
  button4.setIcon("fighterSpawn2.gif", 1, GAlign.RIGHT, GAlign.MIDDLE);
  button4.setText("Training Camp");
  button4.addEventHandler(this, "button4_click1");
  button8 = new GButton(this, 450, 500, 125, 35);
  button8.setIcon("vehicleSpawn2.gif", 1, GAlign.RIGHT, GAlign.MIDDLE);
  button8.setText("Rebuilder");
  button8.addEventHandler(this, "button8_click1");
  label2 = new GLabel(this, 75, 250, 130, 154);
  label2.setIcon("alienBase.gif", 1, GAlign.RIGHT, GAlign.MIDDLE);
  label2.setOpaque(false);
  //button1 = new GButton(this, 325, 460, 80, 35);
  //button1.setIcon("fighter2.png", 1, GAlign.RIGHT, GAlign.MIDDLE);
  //button1.setText("Fighter ");
  //button1.addEventHandler(this, "button1_click1");
 
  
  /*
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 1000, 700, JAVA2D);
  window1.noLoop();
  window1.addDrawHandler(this, "win_draw1");
  //imgButton1 = new GImageButton(window1, 0, 0, 1000, 700, new String[] { "welcomeScreen.jpg", "welcomeScreen.jpg", "welcomeScreen.jpg" } );
  //imgButton1.addEventHandler(this, "imgButton1_click1");
  button5 = new GButton(window1, 350, 175, 300, 100);
  button5.setText("Play");
  button5.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  button5.addEventHandler(this, "button5_click1");
  button7 = new GButton(window1, 100, 300, 200, 100);
  button7.setText("Face text");
  button7.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  button7.addEventHandler(this, "button7_click1");
  button9 = new GButton(window1, 700, 300, 200, 100);
  button9.setText("Face text");
  button9.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  button9.addEventHandler(this, "button9_click1");
  button6 = new GButton(window1, 350, 425, 300, 100);
  button6.setText("Instructions");
  button6.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  button6.addEventHandler(this, "button6_click1");*/
  
  
  /*
  window2 = GWindow.getWindow(this, "Window title", 0, 0, 1000, 700, JAVA2D);
  window2.noLoop();
  window2.addDrawHandler(this, "win_draw2");
  button10 = new GButton(window2, 905, 100, 80, 30);
  button10.setText("Back");
  button10.addEventHandler(this, "button10_click1");
  label1 = new GLabel(window2, 450, 100, 100, 50);
  label1.setText("INSTRUCTIONS");
  label1.setOpaque(false);
  window1.loop();
  window2.loop();
  */
}

// Variable declarations 
// autogenerated do not edit
GButton button2; 
GButton button3; 
GButton button4; 
GButton button8; 
GLabel label2; 
GButton button1; 
//GWindow window1;
GImageButton imgButton1; 
GButton button5; 
GButton button7; 
GButton button9; 
GButton button6; 
//GWindow window2;
GButton button10; 
GLabel label1; 
GLabel label3; 
GLabel label4; 
GLabel label5; 
GLabel label6; 
GLabel label7; 
GLabel label8; 
GLabel label9; 
GLabel label10; 
GLabel label11; 
GLabel label12; 
GButton button11; 
GButton button12; 
GLabel label13; 