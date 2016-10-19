PVector posText1, posText2, posText3, posText4, posText5, posDepotImage, posFacilityImage, posVehicleImage, posBase, posProjectile;
PVector velText1,velText2,velText3,velText4, velText5;

void intro(){ //freaking sick intro screen
  //while(boo1 == false){
  
  //pushMatrix();
  //translate();  
  if(soundBoo ==false){
    welcomeFile.stop();
    introFile.play();
    soundBoo = true;
  }
  textAlign(CENTER);
  
  background(0,0,0);
  image(introBackgr,0,0); 
  
  textSize(width/65);
  text("(Turn up Volume)",100,30);
  if (timer <= 1420){
    text("Loading...", 500,30);
   
  }
  else{
    text("Loading... done", 500,30);
  }
  
  
  textSize (width/40);
  text("[Command Incoming]: Greetings explorer and Welcome to Call of the Fight.", posText1.x,posText1.y); //the first line of text
  text("This game is not for the faint of heart and only the most skilled will succeed.", posText2.x,posText2.y); //the second line of text
  text("You will be tested on your strategic battle skills and your abilites under pressure.", posText3.x,posText3.y); //the third line of text
  text("Good luck and may the light shine ever in your favour. [Command Terminated]", posText4.x,posText4.y); //the fourth line of text
  text("(Click the mouse button to continue)", posText5.x,posText5.y); //the fourth line of text
  
  
  if (timer >= 720){ //this is a timer to coordinate the text movement with the song. At 60 fps this is 12 seconds
    posText1.add(velText1);
  }
  
  if (timer >= 900){
    posText2.add(velText2);
  }
  
  if (timer >= 1080){
    posText3.add(velText3);
  }
  
  if (timer >= 1240){
    posText4.add(velText4);
  }
  
  if (timer >= 1420){
    posText5.add(velText5);
   
  }
  
  if(posText1.y <= height/4){
    velText1.y = 0;  
  }
  
  if(posText2.y <= height/3){
  velText2.y = 0;
  }
  
  if(posText3.y <= height/2.4){
  velText3.y = 0;
  }
  
  if(posText4.y <= height/1.9){
  velText4.y = 0;
  }
  
  if(posText5.y <= height/1.6){
  velText5.y = 0;
  }
  
 // popMatrix();  
 print(timer + "\n");
  //}
 
}

void mouseClicked(){
  if ((mouseButton == LEFT) && (timer >= 1420)){
      boo1 = true; 
      timer =0;
  }
  //if 
}
  