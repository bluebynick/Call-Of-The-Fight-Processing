class Mover {

  // Our object has two PVectors: location and velocity
  PVector location;
  PVector velocity = new PVector(-5,0); //level 2 make this moving diagnolly and have barriers

   Mover() { //this gives the object it's identity
      yy = random(100,350); //assign        
      location = new PVector(width+10,yy);
      
  }
  
  void update() {
    if((winBoo == false) && (gOverBoo == false)){
      //int update2 = 600 - enemyCounter;
      //location.x=update2;
      // Motion 101: Locations changes by velocity.
  
      
      if(location.x-15>=350){  //check /-8 (-2 more so it doesn't kill the line) cause compensating for "background" ellipse size //300 cause the rect is 50 more than the rng to create an acceptable zone
        location.add(velocity);
      }
          
        
        
      else{//once it reaches the stopping point...
        location.x = location.x;
        booAttack = true;
        
      }
    }
  }

  void display() {
    if((winBoo == false) && (gOverBoo == false)) {
      noStroke();
      fill(255);
      ellipse(location.x+((alien.width/2)),location.y+((alien.height/2)),alien.width+15, alien.height+15); //"background" image this is an ellipse behind the image that is the same coulour as the background and gives the impression of a background being redrawn. It needs to be just a bit bigger than the actual image
      stroke(0);
      fill(55);
      image(alien,location.x,location.y); //actual image
      
      for(int i = 0; i<fighterCounter; i++){
    
          if(fighterArray[i].y == location.y){
      
            fighterArray[i].y = (width*2);//, height*2);
            noStroke();
            fill(255);
            rect(355,location.y,300,alien.height);
            location.y = (width*2);//, height*2);
            velocity.x = 0;
            
            rect(355,100,400,290); //this clears away the other ennemies
            
            booAttack = false;
            
            
          }
        }
    }
  }
}