//In class code - week1 class 1
//Art22: Spring 2020
//Author: James Von Essen

//(random) modifier from YouTube: mick maus

// ingredients
int number1; //create and define integer1 
int number2; //create and define integer2


// Setup the ingredients
void setup(){
  size(1920,1080); //create a window that is 1920px X 1080px
  number1 = 1; //set integer1 number1 to 4
  number2 = 4; //set integer2 number2 to 8 
  background(255,255,255); // make background color white that does not reset with each frame
  

}


// COOK
void draw(){
 
   stroke(0,0,255); //blue stroke on rectangles
   strokeWeight(2); //2px thick stroke
   fill(random(255),random(255),random(255));
   
   if( mouseX < width/2 && mouseY < height/2) { //top left color
   stroke(0,random(255),random(255));
 } else  if(mouseX > width/2 && mouseY < height/2) { //top right
   stroke(0,random(255),0);
 } else  if( mouseX > width/2 && mouseY > height/2) { //bottom right
   stroke(random(255),0,random(255));
 } else  if( mouseX < width/2 && mouseY > height/2) { //bottom left
   stroke(0,0,0);
 } 
  

 rect(width/2 + number1,height/2 + number1,200,100); //rectangle bottom right moves down and right
 rect(width/2-200-number1,height/2+number1,200,100); //rectangle bottom left moves down and left
 rect(width/2+number1,height/2-100-number1,200,100); //rectangle top right moves up and right
 rect(width/2-200-number1,height/2-100-number1,200,100); //rectangle top left moves up and left
 number1 = number1+number2; // adjust the speed that the rectangles move

ellipse(width/2,height/2 + number1,200,200); //circle moving down
ellipse(width/2 + number1+number2,height/2,200,200); //circle moving right
ellipse(width/2,height/2-number1,200,200); //circle moving up
ellipse(width/2-number1-number2,height/2,200,200); //circle moving left

stroke(0,0,0); //
point(mouseX,mouseY);{ //
ellipse(mouseX,mouseY,25,25); //

}
}
