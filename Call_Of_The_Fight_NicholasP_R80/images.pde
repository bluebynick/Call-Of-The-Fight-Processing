PImage darkGrassBackgr,lightGrassBackgr, moonBackgr,introBackgr, welcomeBackground;
PImage depot, base, alien, fighter;
PImage facility;
PImage vehicle;


void depotImage(){
  pushMatrix(); 
    
  translate(posDepotImage.x,posDepotImage.y);
  scale(1);
  
  image(depot,0,0);
  
  
  
  popMatrix(); //this essentially resets the origin
  
}

void facilityImage(){
  pushMatrix(); 
    
  translate(posFacilityImage.x,posFacilityImage.y);
  scale(1);
  
  image(facility,0,0);
  
  
  
  popMatrix(); //this essentially resets the origin
  
}

void vehicleImage(){
  pushMatrix(); 
    
  translate(posVehicleImage.x,posVehicleImage.y);
  scale(1);
  
  image(vehicle,0,0);
  
  
  
  popMatrix(); //this essentially resets the origin
  
}

void fighter(){
  //if(creditCounter>=50){ //this guy costs 50
  
  PImage fighter = new PImage();
  
  fighter = loadImage("fighter2.png");
  
  fighterArray[fighterCounter] = new PVector (320, yy);
  
  pushMatrix(); 
 
  translate(fighterArray[fighterCounter].x,fighterArray[fighterCounter].y);
  scale(1);
  
  image(fighter,0,0);
  
  popMatrix(); //this essentially resets the origin
  
  fighterCounter +=1;
  
}

void projectile(){
  
  posProjectile = new PVector(320, posEnemies.y);
  
  pushMatrix(); 
 
  translate(posProjectile.x,posProjectile.y);
  
  fill(186, 85,211);
  ellipse(0,0,5,5); 
}