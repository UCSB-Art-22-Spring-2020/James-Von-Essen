//Week 1 Coding Challenge 2
//Art 22: Spring 2020
//Author: James Von Essen

//input(random) and if(xSpeed *=-1) seen in YouTube video by "mick maus"


int x = 0; //starting horizontal piont for shape
int y = 0; //starting vertical piont for shape

int xSpeed = 5; //number of horizontal pixels x moves each frame 
int ySpeed = 5; //number of vertical pixels y moves each frame 
//when numbers are equal shape moves diagnolly 45 degrees


void setup(){ //Continuous parameters for artboard

size(1597,987); //window size using fibonnacci numbers
background(255,255,255); //continuous white background
}

void draw(){ //changing parameters for artboard
 
  
  
 stroke(random(255),random(255),random(255),200); //outline color of shape, assigned to change at random with opacitiy of 200/255
 strokeWeight(2); //thickness of outline set to 2 pixels
 //fill(random(255),random(255),random(255),(200)); //fill color of shape, assigned to change at random with opacitiy of 200/255

  if ( y < 200 ){ //fill colors of shape dependant on vertical positions changing every 200 pixels 
    fill(0,0,255,random(200));
  } else if ( y < 400){
    fill(0,255,0,random(200));
  } else if ( y < 600){
    fill(0,0,255,random(200));
  } else if ( y < 800){
    fill(255,0,0,random(200));
  } else if ( y < 1000 ){
    fill(0,255,0,random(200));
  } else if ( y < 1200 ){
    fill(0,0,255,random(200));
  }else if ( y < 1400 ){
    fill(255,0,0,random(255));
  }


 x = x + xSpeed; //sets movement of coordinate x, starts at 0 and moves horizontally in increments set by parameter xSpeed
 
 if(x > width || x < 0){ //sets limit to x coordinate within size/width = 1597
 xSpeed *= -1; //reverses velocity of movement x dependant on position within horizontal parameters
}




y = y + ySpeed; //sets movement of coordinate y, starts at 0 and moves vertically in increments set by parameter ySpeed

if(y > height || y < 0){ //sets limit to x coordinate within size/height = 987
 ySpeed = ySpeed*-1; //reverses velocity of movement y dependant on position within vertical parameters
}




ellipse(x,y,50,50);
//ellipse(x/2+800,y/2+500,random(25),random(25));
//ellipse(x/2+800,y/2,random(25),random(25));
//ellipse(x/2,y/2,random(25),random(25));
//ellipse(x/2,y/2+500,random(25),random(25));
}
