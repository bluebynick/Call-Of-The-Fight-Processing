void welcome(){
  
  if(soundBoo2 == false){
    welcomeFile.play();
    soundBoo2 = true;
    
  }
  if((createBoo == false)) {
    createGUI(); //ok so i'm basicallly outsmarting processing here XDDDDDD
                   //in order to assign an appropriate background image to my window1 I 
                   //initialize window1 in this main tab here and add it's draw handler, 
                   //only to declare all it's elements in a syncronized method in the 
                   //gui tab
                   
      //window1.setVisible(false); //this is 
      createBoo = true; 
  }
  
   if(instructBoo == true){
     window2.setVisible(true);
     window1.setVisible(false);
     
   }
  
  //this is an empty method that runs in the draw loop until the play button is clicked
   
}