
void JavelinThrowingCharacter1(int x, int y){
ellipseMode(CENTER); // set the ellipse mode to be centered
rectMode(CORNER); // set the rectangle mode to be corner
noStroke(); // disable stroke
stroke(#FFE2A7); // set stroke color
strokeWeight(10); // set stroke weight
// draw arm1
line(x-2, y+6, x-58, y+19);
line(x-58, y+19, x-67, y-11);
line(x+16, y+3, x+46, y+10);
line(x+46, y+12, x+51, y+36);
stroke(#020008); // set stroke color
// draw arm2
line(x+12, y+63, x+30, y+82);
line(x+30, y+82, x+40, y+103);
line(x-24, y+63, x-51, y+86);
line(x-51, y+86, x-76, y+99);
noStroke(); // disable stroke
fill(0); // set fill color
// draw body
rect(x-40, y, 70.0, 23.0);
fill(#FFE2A7); // set fill color
// draw face
ellipse(x, y-22.5, 54.0, 51.0);
fill(230,230,230); // set fill color
// draw shoes
rect(x-89, y+94, 14.0, 15.0);
rect(x+36, y+106, 17.0, 9.0);
fill(255,0,0); // set fill color
// draw javelin
rect(x-25, y+2, 40.0, 62.0);
fill(0); // set fill color
}

void JavelinThrowingCharacter2(int x, int y){
  ellipseMode(CENTER);  // sets the mode for the ellipse to be drawn at its center
  rectMode(CORNER);  // sets the mode for the rectangle to be drawn from its top-left corner
  noStroke();  // disables outline stroke
  stroke(#FFE2A7);  // sets the outline stroke color to a light orange
  strokeWeight(10);  // sets the outline stroke weight to 10
  stroke(#FFE2A7);  // sets the outline stroke color to a light orange
  // draws the character's arms
  line(x+16, y+3, x+46, y+10);
  line(x+46, y+12, x+51, y+36);
  stroke(#020008);  // sets the outline stroke color to a dark blue
  // draws the javelin
  line(x+12, y+63, x+30, y+82);
  line(x+30, y+82, x+40, y+103);
  line(x-24, y+63, x-51, y+86);
  line(x-51, y+86, x-76, y+99);
  noStroke();  // disables outline stroke
  fill(0);  // sets the fill color to black
  // draws the character's body
  rect(x-40, y, 70.0, 23.0);
  fill(#FFE2A7);  // sets the fill color to a light orange
  // draws the character's face
  ellipse(x, y-22.5, 54.0, 51.0);
  fill(230,230,230);  // sets the fill color to a light gray
  // draws the character's shoes
  rect(x-89, y+94, 14.0, 15.0);
  rect(x+36, y+106, 17.0, 9.0);
  fill(255,0,0);  // sets the fill color to red
  // draws the character's shirt
  rect(x-25, y+2, 40.0, 62.0);
  fill(0);  // sets the fill color to black
  stroke(#FFE2A7);  // sets the outline stroke color to a light orange
  // draws the javelin's trajectory
  line(x-32, y+8, x+42, y-10);
}


// This function draws a long-jumping character
void LongJumpCharacter1(int x, float y) { // pass in the x and y position of the character
  rectMode(CORNER); // set the rectangle mode to CORNER
  stroke(0); // set the stroke color to black
  strokeWeight(1); // set the stroke weight to 1
  fill(#00ACFF); // set the fill color to a light blue
  // draw the body
  rect(x-12, y-139, 71.0, 94.0);
  fill(255); // set the fill color to white
  // draw the torso
  rect(x-4, y-138, 33.0, 32.0);
  // draw the arms
  line(x-458, y-488, x-458, y-488); // this line appears to be unnecessary
  stroke(#FFE2A7); // set the stroke color to a light orange
  strokeWeight(10); // set the stroke weight to 10
  line(x+13, y-103, x+19, y-88); // draw the left arm
  line(x+19, y-88, x+56, y-100); // draw the right arm
  stroke(0); // set the stroke color to black
  // draw the legs
  line(x-3, y-45, x+45, y-31); // draw the left leg
  line(x+45, y-31, x+7, y+2); // draw the left foot
  line(x+58, y-44, x+76, y-35); // draw the right leg
  line(x+76, y-35, x+54, y-5); // draw the right foot
  stroke(255); // set the stroke color to white
  fill(#FFE2A7); // set the fill color to a light orange
  stroke(0); // set the stroke color to black
  strokeWeight(1); // set the stroke weight to 1
  // draw the head
  ellipse(x+25, y-169, 90.0, 90.0);
}

//Function to draw a long jump character at position (x, y)
void LongJumpCharacter2(int x, float y) {
rectMode(CORNER);
stroke(0);
strokeWeight(1);
fill(#00ACFF);
//draw the body of the character
rect(x-126, y-130, 82.0, 130.0);
stroke(0);
strokeWeight(10);
stroke(#FFE2A7);
//draw the arms of the character
line(x-122, y-176, x-137, y-196);
line(x-139, y-196, x-170, y-196);
line(x-109, y-113, x-186, y-144);
line(x-186, y-144, x-251, y-144);
stroke(0);
//draw the legs of the character
line(x-41, y-8, x+12, y-30);
line(x+12, y-30, x+109, y-29);
line(x-106, y+4, x, y);
line(x, y, x+64, y+22);
stroke(0);
strokeWeight(1);
fill(255);
//draw the shirt of the character
rect(x-129, y-127, 53.0, 42.0);
fill(#FFE2A7);
//draw the head of the character
ellipse(x-86, y-150, 90.0, 90.0);
}
// This function draws a high-jumping character
void HIGHJUMPCHARACTER1(int x, float y) {
  rectMode(CORNER); // set the rectangle mode to CORNER
  ellipseMode(CENTER); // set the ellipse mode to CENTER
  noStroke(); // remove the stroke
  fill(#FFE09D); // set the fill color to a light orange
  ellipse(x, y, 80.0, 80.0); // draw the head
  strokeWeight(13); // set the stroke weight to 13
  stroke(#FFE09D); // set the stroke color to a light orange
  line(x-23, y+40, x-54, y+93); // draw the left arm
  line(x+24, y+40, x+50, y+89); // draw the right arm
  stroke(0); // set the stroke color to black
  line(x+18, y+128, x+22, y+199); // draw the left leg
  line(x-15, y+130,x-26, y+215); // draw the right leg
  noStroke(); // remove the stroke
  fill(#FFF300); // set the fill color to yellow
  rect(x-25, y+33, 52, 91); // draw the body
  fill(255); // set the fill color to white
  stroke(255); // set the stroke color to white
  rect(x-29,y+215,10,10); // draw the left foot
  rect(x+21,y+201,10,10); // draw the right foot
}

void HIGHJUMPCHARACTER2(int x, float y) {
rectMode(CORNER); //set the rectangle mode to CORNER
ellipseMode(CENTER); //set the ellipse mode to CENTER
stroke(#FFE09D); //set the stroke color to a shade of orange
strokeWeight(13); //set the stroke weight to 13
line(x, y, x-52, y+35); //draw a line from (x, y) to (x-52, y+35)
line(x-52, y+36, x-34, y+82); //draw a line from (x-52, y+36) to (x-34, y+82)
line(x+88, y+9, x+115, y+74); //draw a line from (x+88, y+9) to (x+115, y+74)
line(x+115, y+74, x+167, y+96); //draw a line from (x+115, y+74) to (x+167, y+96)
stroke(0); //set the stroke color to black
line(x+86, y+136, x+118, y+166); //draw a line from (x+86, y+136) to (x+118, y+166)
line(x+118, y+166, x+117, y+203); //draw a line from (x+118, y+166) to (x+117, y+203)
line(x+12, y+139, x+50, y+195); //draw a line from (x+12, y+139) to (x+50, y+195)
line(x+50, y+185, x+48, y+248); //draw a line from (x+50, y+185) to (x+48, y+248)
line(x+48, y+238, x+48, y+248); //draw a line from (x+48, y+238) to (x+48, y+248)
noStroke(); //turn off stroke
fill(#FFF300); //set fill color to yellow
rect(x+7, y, 75.0, 132.0); //draw a rectangle with (x+7, y) as top left corner and 75.0 as width and 132.0 as height
fill(#FFE09D); //set fill color to a shade of orange
ellipse(x+49, y-6, 90.0, 90.0); //draw an ellipse with (x+49, y-6) as center and 90.0 as width and height
}
