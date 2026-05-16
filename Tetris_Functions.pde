//This subroutine is VERY IMPORTANT
//*it is going to used throughout the WHOLE PROJECT
void individual_tetris_block_3d(int x, int y, int l, color c1, color c2, color c3,color c4){
  //we use 4 different colours to make the block looks like it is 3d by creating relatively dark and light parts
  //color 1: the shadow part
  //color 2: the normal block colour
  //color 3: the light part
  //color 4: the lightest part on the block
  rectMode(CENTER);
  stroke(0);
  strokeWeight(2);
 fill(0);
 rect(x,y,l,l);
 fill(c1);
 rect(x,y,l-10,l-10);
 fill(c2);
 rect(x,y,l-40,l-40);
 fill(c3);
 //the quad() function draws a quadrilateral
 //quad(x1, y1, x2, y2, x3, y3, x4, y4);
 //draw a trapezium using a quad() function to create the corners of the block
 // go to Google and search "tetris block" and you will get an idea of what I mean
 //they will be filled with different colors to show the different parts
 quad(x-(l/2)+1,y-(l/2),x+(l/2)-1,y-(l/2),x+(l/3)-3,y-(l/3)+2,x-(l/3)+3,y-(l/3)+2);
 fill(c4);
 quad(x-(l/2)+1,y-(l/2),x-(l/2)+1,y+(l/2),x-(l/3)+3,y+(l/3)-3,x-(l/3)+3,y-(l/3)+2);
}

void individual_tetris_block(int x, int y, color c){
 fill(0);
 rect(x,y,20,20);
 fill(c);
 rect(x,y,15,15);
}
//this is just pure labour
//there is seriously nothing to say
//the blocks are placed individually to make a tetris screen
void tetris_start_background_stable(){
  individual_tetris_block(370,500,#FF0303);
  individual_tetris_block(370,480,#FF0303);
  individual_tetris_block(370,460,#FF0303);
  individual_tetris_block(370,440,#FF0303);
  individual_tetris_block(390,500,#0FB904);
  individual_tetris_block(410,500,#0FB904);
  individual_tetris_block(410,480,#0FB904);
  individual_tetris_block(410,460,#0FB904);
  individual_tetris_block(390,480,#03A0FF);
  individual_tetris_block(390,460,#03A0FF);
  individual_tetris_block(390,440,#03A0FF);
  individual_tetris_block(390,420,#03A0FF);
  individual_tetris_block(430,480,#FFE203);
  individual_tetris_block(430,500,#FFE203);
  individual_tetris_block(450,500,#FFE203);
  individual_tetris_block(450,480,#FFE203);
  individual_tetris_block(450,460,#A603FF);
  individual_tetris_block(430,460,#A603FF);
  individual_tetris_block(430,440,#A603FF);
  individual_tetris_block(410,440,#A603FF);
  individual_tetris_block(470,500,#03A0FF);
  individual_tetris_block(490,500,#03A0FF);
  individual_tetris_block(510,500,#03A0FF);
  individual_tetris_block(530,500,#03A0FF);
  individual_tetris_block(490,480,#0FB904);
  individual_tetris_block(470,480,#0FB904);
  individual_tetris_block(490,460,#0FB904);
  individual_tetris_block(510,480,#0FB904);
  individual_tetris_block(550,500,#FF0303);
  individual_tetris_block(550,480,#FF0303);
  individual_tetris_block(530,480,#FF0303);
  individual_tetris_block(570,500,#FF0303);
  individual_tetris_block(510,460,#FFE203);
  individual_tetris_block(510,440,#FFE203);
  individual_tetris_block(490,440,#FFE203);
  individual_tetris_block(490,420,#FFE203);
  individual_tetris_block(470,460,#03A0FF);
  individual_tetris_block(470,440,#03A0FF);
  individual_tetris_block(470,420,#03A0FF);
  individual_tetris_block(470,400,#03A0FF);
  individual_tetris_block(530,460,#0FB904);
  individual_tetris_block(550,460,#0FB904);
  individual_tetris_block(530,440,#0FB904);
  individual_tetris_block(550,440,#0FB904);
  individual_tetris_block(570,480,#A603FF);
  individual_tetris_block(590,480,#A603FF);
  individual_tetris_block(590,500,#A603FF);
  individual_tetris_block(590,460,#A603FF);
  individual_tetris_block(610,480,#FFE203);
  individual_tetris_block(610,500,#FFE203);
  individual_tetris_block(610,460,#FFE203);
  individual_tetris_block(610,440,#FFE203);
  individual_tetris_block(610,420,#03A0FF);
  individual_tetris_block(590,420,#03A0FF);
  individual_tetris_block(590,440,#03A0FF);
  individual_tetris_block(590,400,#03A0FF);
  individual_tetris_block(570,420,#FF0303);
  individual_tetris_block(570,440,#FF0303);
  individual_tetris_block(570,460,#FF0303);
  individual_tetris_block(550,420,#FF0303);
  individual_tetris_block(530,420,#A603FF);
  individual_tetris_block(510,420,#A603FF);
  individual_tetris_block(530,400,#A603FF);
  individual_tetris_block(510,400,#A603FF);
  individual_tetris_block(510,400,#A603FF);
  fill(#E005DD);
    ellipse(340,520,70,70);
}

//this is just pure labour
//there is seriously nothing to say
//the blocks are placed individually to make a tetris screen
void tetris_background_stable(){
  individual_tetris_block(370,500,#FF0303);
  individual_tetris_block(370,480,#FF0303);
  individual_tetris_block(370,460,#FF0303);
  individual_tetris_block(370,440,#FF0303);
  individual_tetris_block(390,500,#0FB904);
  individual_tetris_block(410,500,#0FB904);
  individual_tetris_block(410,480,#0FB904);
  individual_tetris_block(410,460,#0FB904);
  individual_tetris_block(390,480,#03A0FF);
  individual_tetris_block(390,460,#03A0FF);
  individual_tetris_block(390,440,#03A0FF);
  individual_tetris_block(390,420,#03A0FF);
  individual_tetris_block(430,480,#FFE203);
  individual_tetris_block(430,500,#FFE203);
  individual_tetris_block(450,500,#FFE203);
  individual_tetris_block(450,480,#FFE203);
  individual_tetris_block(450,460,#A603FF);
  individual_tetris_block(430,460,#A603FF);
  individual_tetris_block(430,440,#A603FF);
  individual_tetris_block(410,440,#A603FF);
  individual_tetris_block(470,500,#03A0FF);
  individual_tetris_block(490,500,#03A0FF);
  individual_tetris_block(510,500,#03A0FF);
  individual_tetris_block(530,500,#03A0FF);
  individual_tetris_block(490,480,#0FB904);
  individual_tetris_block(470,480,#0FB904);
  individual_tetris_block(490,460,#0FB904);
  individual_tetris_block(510,480,#0FB904);
  individual_tetris_block(550,500,#FF0303);
  individual_tetris_block(550,480,#FF0303);
  individual_tetris_block(530,480,#FF0303);
  individual_tetris_block(570,500,#FF0303);
  individual_tetris_block(510,460,#FFE203);
  individual_tetris_block(510,440,#FFE203);
  individual_tetris_block(490,440,#FFE203);
  individual_tetris_block(490,420,#FFE203);
  individual_tetris_block(470,460,#03A0FF);
  individual_tetris_block(470,440,#03A0FF);
  individual_tetris_block(470,420,#03A0FF);
  individual_tetris_block(470,400,#03A0FF);
  individual_tetris_block(530,460,#0FB904);
  individual_tetris_block(550,460,#0FB904);
  individual_tetris_block(530,440,#0FB904);
  individual_tetris_block(550,440,#0FB904);
  individual_tetris_block(570,480,#A603FF);
  individual_tetris_block(590,480,#A603FF);
  individual_tetris_block(590,500,#A603FF);
  individual_tetris_block(590,460,#A603FF);
  individual_tetris_block(610,480,#FFE203);
  individual_tetris_block(610,500,#FFE203);
  individual_tetris_block(610,460,#FFE203);
  individual_tetris_block(610,440,#FFE203);
  individual_tetris_block(610,420,#03A0FF);
  individual_tetris_block(590,420,#03A0FF);
  individual_tetris_block(590,440,#03A0FF);
  individual_tetris_block(590,400,#03A0FF);
  individual_tetris_block(570,420,#FF0303);
  individual_tetris_block(570,440,#FF0303);
  individual_tetris_block(570,460,#FF0303);
  individual_tetris_block(550,420,#FF0303);
  individual_tetris_block(530,420,#A603FF);
  individual_tetris_block(510,420,#A603FF);
  individual_tetris_block(530,400,#A603FF);
  individual_tetris_block(510,400,#A603FF);
  individual_tetris_block(510,400,#A603FF);
  individual_tetris_block(370,420,#FF0303); 
 individual_tetris_block(370,400,#FF0303);
 individual_tetris_block(390,400,#FF0303);
 individual_tetris_block(390,380,#FF0303); 
  fill(#E005DD);
    ellipse(340,520,70,70);
}

//this is just pure labour
//there is seriously nothing to say
//the blocks are placed individually to make a tetris screen
//this where some of the blocks disappear because a line has been completed
void tetris_background_stable_change(){
 individual_tetris_block(370,500,#FF0303);
 individual_tetris_block(370,480,#FF0303);
  individual_tetris_block(370,460,#FF0303);
 individual_tetris_block(390,460,#FF0303);
 individual_tetris_block(390,440,#FF0303);
 individual_tetris_block(390,500,#03A0FF);
 individual_tetris_block(390,480,#03A0FF);
 individual_tetris_block(410,500,#A603FF);
 individual_tetris_block(430,500,#A603FF);
 individual_tetris_block(470,500,#03A0FF);
 individual_tetris_block(470,480,#03A0FF);
 individual_tetris_block(470,460,#03A0FF);
 individual_tetris_block(490,500,#FFE203);
 individual_tetris_block(490,480,#FFE203);
 individual_tetris_block(510,500,#FFE203);
 individual_tetris_block(510,480,#A603FF);
 individual_tetris_block(510,460,#A603FF);
 individual_tetris_block(530,480,#A603FF);
 individual_tetris_block(530,460,#A603FF);
 individual_tetris_block(530,500,#0FB904);
 individual_tetris_block(550,500,#0FB904);
 individual_tetris_block(550,480,#FF0303);
 individual_tetris_block(570,480,#FF0303);
 individual_tetris_block(570,500,#FF0303);
 individual_tetris_block(590,500,#03A0FF);
 individual_tetris_block(590,480,#03A0FF);
 individual_tetris_block(590,460,#03A0FF);
 individual_tetris_block(610,480,#03A0FF);
 individual_tetris_block(610,500,#FFE203);
 individual_tetris_block(630,500,#0FB904); 
 fill(#E005DD);
    ellipse(340,520,70,70);
}

//the red block
void moving_tetris_block(int x,int y){
  individual_tetris_block(x,y,#0FB904);
  individual_tetris_block(x,y-20,#0FB904);
  individual_tetris_block(x,y-40,#0FB904);
  individual_tetris_block(x,y-60,#0FB904);
}
//the green moving block
void tetris_start_block(int x, int y){
 individual_tetris_block(x,y,#FF0303); 
 individual_tetris_block(x,y-20,#FF0303);
 individual_tetris_block(x+20,y-20,#FF0303);
 individual_tetris_block(x+20,y-40,#FF0303); 
}

//the first block at the end scene
//the blue block that is falling
void tetris_end_block(int x, int y){
  individual_tetris_block(x,y,#03A0FF);
  individual_tetris_block(x+20,y,#03A0FF);
  individual_tetris_block(x+20,y+20,#03A0FF);
  individual_tetris_block(x+20,y-20,#03A0FF);
}

//the second end block
//the orange block in the "next up" bar
void tetris_end_block_second(int x, int y){
  individual_tetris_block(x,y,#FF0303); 
 individual_tetris_block(x,y-20,#FF0303);
 individual_tetris_block(x+20,y-20,#FF0303);
 individual_tetris_block(x+20,y-40,#FF0303); 
}

//this is the most used style of block arrangement for the whole project
//it takes the x and y coordinates, and four colors for gradation
void tetris_block_style_2(int x, int y,color inside, color outside, color lightside, color brightside){//square
  individual_tetris_block_3d(x,y,100,color(inside),color(outside),color(lightside),color(brightside));
  individual_tetris_block_3d(x+95,y,100,color(inside),color(outside),color(lightside),color(brightside));
  individual_tetris_block_3d(x,y+95,100,color(inside),color(outside),color(lightside),color(brightside));
  individual_tetris_block_3d(x+95,y+95,100,color(inside),color(outside),color(lightside),color(brightside));
}


void arcade_buttons(int x, int y){
  
  //a 3d button can be created in a 2d module
  //by layering up the same image and changing the color to make it look like a shadow
  //and that is what I have done right here
  //I used the same ellipse shape and layered them with different colors
  //so that it looks like the button is in 3d
  
  //Actually, when I think about it again, I could have used a PVector() function and create a 3d button
  //by doing something like PVector(0,0,100); and then adding to this with another function
  //but then, I'm not really familiar with the PVector function to do this on this scale
  //I barely figured how to use PVector on the Javelin throwing scene
  fill(#FFE70D);
  ellipse(x,y+15,80,40);
  fill(#B721B5);
  ellipse(x,y+15,70,35);
  fill(#B721B5);
  ellipse(x,y+15,70,35);
  fill(#B721B5);
  ellipse(x,y+10,70,35);
  ellipse(x,y+5,70,35);
  fill(#B721B5);
  fill(#E005DD);
  ellipse(x,y,70,35);
}

void arcade(int x, int y){
    ellipseMode(CENTER);
    rectMode(CENTER);
    
    //the main compartment of the archade machine
    fill(#3E3C3C);
    rect(x,y+100,700,800);
    
    //the screen of the arcade machine
    textAlign(CENTER,CENTER);
    fill(#00A8FA);
    rect(x,y,600,500);
    fill(255);
    textSize(50);
    text("Start here, go anywhere.",x,y);
    
    fill(#4B4848);
    quad(x-350, y+300, x+350, y+300, x+400, y+420, x-400, y+420);
    
    //the base of the archade machine
    fill(#343232);
    rect(x,y+520,800,200);
    
    //The direction control lever
    //the base
    fill(#FFE70D);
    ellipse(x-260,y+350,70,40);
    fill(#171717);
    ellipse(x-260,y+350,60,30);
    //the lever
    fill(#2C2C2B);
    rect(x-260,y+300,20,120);
    //the ball on top
    fill(#E005DD);
    ellipse(x-260,y+240,70,70);
    
    //The Four buttons
    arcade_buttons(x+140,y+335);
    arcade_buttons(x+280,y+335);
    arcade_buttons(x+210,y+370);
    arcade_buttons(x+210,y+300);
}

void Track(int x, int y) {//625,425
noStroke();
//background
rectMode(CENTER);
fill(#00A8FA);
rect(x-25,y-700,1200,1800);
fill(#09C400);
rect(x-25,y+50,1200,700);

  //Running Track Extention
  rectMode(CORNER);
  fill(162, 55, 61);
  rect(x-450, y+125, 500, 125, 8);
  rectMode(CENTER);
  
  //Running Track Main Body
  stroke(247, 240, 241);
  strokeWeight(2.5);
  fill(162, 55, 61);
  rect(x, y, 800, 500,500);
  rect(x, y, 750, 450,500);
  rect(x, y, 700, 400,500);
  rect(x, y, 650, 350,500);
  rect(x, y, 600, 300,500);
  rect(x, y, 550, 250,500);
  rectMode(CORNER);
  fill(58, 133, 78);
  strokeWeight(13);
  rect(x-268, y-118, 537, 237, 500);

  //Lines for Track Extention
  stroke(247, 240, 241);
  strokeWeight(2.5);

  line(x+115, y+150,x-450, y+150);
  stroke(247, 240, 241);
  line(x+115, y+175, x-450, y+175);
  stroke(247, 240, 241);
  line(x+115, y+200, x-450, y+200);
  stroke(247, 240, 241);
  line(x+115, y+225, x-450, y+225);

  //Font Left Bottom
  fill(255);
  textSize(12);
  text("5", x-440, y+142);
  text("4", x-440, y+167);
  text("3", x-440, y+192);
  text("2", x-440, y+217);
  text("1", x-440, y+242);

  //Font Top Right
  fill(255);
  textSize(12);
  text("1", x+145, y-233);
  text("2", x+145, y-208);
  text("3", x+145, y-183);
  text("4", x+145, y-158);
  text("5", x+145, y-133);


  //Starting Line
  strokeWeight(2.5);
  line(x+135, y-250, x+135, y-125);

  fill(255, 0, 0);
  line(x-145, y+125, x-145, y+150);
  line(x-75, y+150, x-75, y+175);
  line(x-5, y+175, x-5, y+200);
  line(x+60, y+200, x+60, y+225);
  line(x+125, y+125, x+125, y+250);
  
  textAlign(CENTER, CENTER);
  fill(255);
  textSize(60);
  text("Start here, go anywhere.",x,y-1200);
}

void ending_scene_text(int y){
// Set the text size to 100 and the fill color to white
textSize(100);
fill(255);
// Display the main text at a fixed horizontal position and a variable vertical position
text("Join 'SPORTS DAY'?",600,y-200);
// Set the text size to 70 and the fill color to black
textSize(70);
fill(0);
// Display the two options ('YES' and 'NO') at fixed horizontal positions and a variable vertical position
text("YES",350,y);
text("NO",850,y);
}

void mouse(int x, int y) {
// Set the stroke color to white and the stroke weight to 20.
stroke(255);
strokeWeight(20);
// Draw a line from (x, y) to (x+29, y+48).
line(x, y, x+29, y+48);
// Set the stroke color to white with an RGB value and the stroke weight to 5.
// Set the fill color to black.
stroke(255, 255, 255);
strokeWeight(5);
fill(0);
// Define a triangle with vertices at (x-19, y-46), (x-22, y+34), and (x+42, y-4).
// The shape is defined using the "beginShape" and "endShape" functions.
// The shape is drawn using the "TRIANGLES" mode.
beginShape(TRIANGLES);
vertex(x-19, y-46);
vertex(x-22, y+34);
vertex(x+42, y-4);
endShape();
// Set the stroke color to black and the stroke weight to 12.
// Draw a line from (x, y) to (x+29, y+48).
stroke(0);
strokeWeight(12);
line(x, y, x+29, y+48);
}
void house_geomun(int x, int y) {//484, 172
  ellipseMode(CORNER); // sets the ellipse mode to "corner"
  fill(#009FFF); // sets the fill color to blue
  // draws a series of ellipses at specific coordinates and sizes
  ellipse(x, y, 18.0, 18.0);
  ellipse(x+26, y+18, 16.0, 16.0);
  ellipse(x+6, y+45, 22.0, 22.0);
  ellipse(x+26, y+38, 0.0, 0.0);
  ellipse(x+21, y+53, 10.0, 10.0);
  ellipse(x+12, y+21, 9.0, 9.0);
  ellipse(x+33, y-3, 16.0, 16.0);
  ellipse(x+42, y+36, 12.0, 12.0);
  ellipse(x+1, y+77, 20.0, 20.0);
  ellipse(x+49, y+81, 26.0, 26.0);
  ellipse(x+48, y+57, 24.0, 24.0);
  ellipse(x+13, y+33, 13.0, 13.0);
  ellipse(x+24, y+94, 22.0, 22.0);
  ellipse(x+4, y+121, 24.0, 24.0);
  ellipse(x+16, y+61, 25.0, 25.0);
  ellipse(x+35, y+121, 22.0, 22.0);
  ellipse(x+56, y+112, 23.0, 23.0);
  ellipse(x+20, y-7, 28.0, 28.0);
  ellipse(x+52, y+26, 14.0, 14.0);
  ellipse(x-6, y+23, 26.0, 26.0);
  ellipse(x-7, y+104, 34.0, 34.0);
}
void house_mulchat(int x, int y) {
  ellipseMode(CORNER); // sets the ellipse mode to "corner"
  fill(#00B757); // sets the fill color to green
  // draws a series of ellipses at specific coordinates and sizes
  //yes, I placed all of them
  ellipse(x, y, 18.0, 18.0);
  ellipse(x+26, y+18, 16.0, 16.0);
  ellipse(x+6, y+45, 22.0, 22.0);
  ellipse(x+26, y+38, 0.0, 0.0);
  ellipse(x+21, y+53, 10.0, 10.0);
  ellipse(x+12, y+21, 9.0, 9.0);
  ellipse(x+33, y-3, 16.0, 16.0);
  ellipse(x+42, y+36, 12.0, 12.0);
  ellipse(x+1, y+77, 20.0, 20.0);
  ellipse(x+49, y+81, 26.0, 26.0);
  ellipse(x+48, y+57, 24.0, 24.0);
  ellipse(x+13, y+33, 13.0, 13.0);
  ellipse(x+24, y+94, 22.0, 22.0);
  ellipse(x+4, y+121, 24.0, 24.0);
  ellipse(x+16, y+61, 25.0, 25.0);
  ellipse(x+35, y+121, 22.0, 22.0);
  ellipse(x+56, y+112, 23.0, 23.0);
  ellipse(x+20, y-7, 28.0, 28.0);
  ellipse(x+52, y+26, 14.0, 14.0);
  ellipse(x-6, y+23, 26.0, 26.0);
  ellipse(x-7, y+104, 34.0, 34.0);
}
void house_jeoji(int x,int y) {
 ellipseMode(CORNER); // sets the ellipse mode to "corner"
  fill(0,255,0); // sets the fill color to yellow
  // draws a series of ellipses at specific coordinates and sizes
  //yes, I placed all of them
  ellipse(x, y, 18.0, 18.0);
  ellipse(x+26, y+18, 16.0, 16.0);
  ellipse(x+6, y+45, 22.0, 22.0);
  ellipse(x+26, y+38, 0.0, 0.0);
  ellipse(x+21, y+53, 10.0, 10.0);
  ellipse(x+12, y+21, 9.0, 9.0);
  ellipse(x+33, y-3, 16.0, 16.0);
  ellipse(x+42, y+36, 12.0, 12.0);
  ellipse(x+1, y+77, 20.0, 20.0);
  ellipse(x+49, y+81, 26.0, 26.0);
  ellipse(x+48, y+57, 24.0, 24.0);
  ellipse(x+13, y+33, 13.0, 13.0);
  ellipse(x+24, y+94, 22.0, 22.0);
  ellipse(x+4, y+121, 24.0, 24.0);
  ellipse(x+16, y+61, 25.0, 25.0);
  ellipse(x+35, y+121, 22.0, 22.0);
  ellipse(x+56, y+112, 23.0, 23.0);
  ellipse(x+20, y-7, 28.0, 28.0);
  ellipse(x+52, y+26, 14.0, 14.0);
  ellipse(x-6, y+23, 26.0, 26.0);
  ellipse(x-7, y+104, 34.0, 34.0);
}
void house_noro(int x, int y) {
  ellipseMode(CORNER); // sets the ellipse mode to "corner"
  fill(#C700FF); // sets the fill color to purple
  // draws a series of ellipses at specific coordinates and sizes
  //yes, I placed all of them
  ellipse(x, y, 18.0, 18.0);
  ellipse(x+26, y+18, 16.0, 16.0);
  ellipse(x+6, y+45, 22.0, 22.0);
  ellipse(x+26, y+38, 0.0, 0.0);
  ellipse(x+21, y+53, 10.0, 10.0);
  ellipse(x+12, y+21, 9.0, 9.0);
  ellipse(x+33, y-3, 16.0, 16.0);
  ellipse(x+42, y+36, 12.0, 12.0);
  ellipse(x+1, y+77, 20.0, 20.0);
  ellipse(x+49, y+81, 26.0, 26.0);
  ellipse(x+48, y+57, 24.0, 24.0);
  ellipse(x+13, y+33, 13.0, 13.0);
  ellipse(x+24, y+94, 22.0, 22.0);
  ellipse(x+4, y+121, 24.0, 24.0);
  ellipse(x+16, y+61, 25.0, 25.0);
  ellipse(x+35, y+121, 22.0, 22.0);
  ellipse(x+56, y+112, 23.0, 23.0);
  ellipse(x+20, y-7, 28.0, 28.0);
  ellipse(x+52, y+26, 14.0, 14.0);
  ellipse(x-6, y+23, 26.0, 26.0);
  ellipse(x-7, y+104, 34.0, 34.0);
}
void house_sarah(int x, int y) {
 ellipseMode(CORNER); // sets the ellipse mode to "corner"
  fill(255,0,0); // sets the fill color to red
  // draws a series of ellipses at specific coordinates and sizes
  //yes, I placed all of them
  ellipse(x, y, 18.0, 18.0);
  ellipse(x+26, y+18, 16.0, 16.0);
  ellipse(x+6, y+45, 22.0, 22.0);
  ellipse(x+26, y+38, 0.0, 0.0);
  ellipse(x+21, y+53, 10.0, 10.0);
  ellipse(x+12, y+21, 9.0, 9.0);
  ellipse(x+33, y-3, 16.0, 16.0);
  ellipse(x+42, y+36, 12.0, 12.0);
  ellipse(x+1, y+77, 20.0, 20.0);
  ellipse(x+49, y+81, 26.0, 26.0);
  ellipse(x+48, y+57, 24.0, 24.0);
  ellipse(x+13, y+33, 13.0, 13.0);
  ellipse(x+24, y+94, 22.0, 22.0);
  ellipse(x+4, y+121, 24.0, 24.0);
  ellipse(x+16, y+61, 25.0, 25.0);
  ellipse(x+35, y+121, 22.0, 22.0);
  ellipse(x+56, y+112, 23.0, 23.0);
  ellipse(x+20, y-7, 28.0, 28.0);
  ellipse(x+52, y+26, 14.0, 14.0);
  ellipse(x-6, y+23, 26.0, 26.0);
  ellipse(x-7, y+104, 34.0, 34.0);
}
//"x" for the x-coordinate of the starting point
//"y": for the y-coordinate of the starting point
//"w": for the width of each rectangle
//"h": for the height of each rectangle
void rainbow(int x, int y, int w, int h){
  fill(#00CEFF);
  rect(x,y,w,h);
  fill(255,0,0);
  rect(x+w,y,w,h);
  fill(#09C400);
  rect(x+2*w,y,w,h);
  fill(#F5DE0C);
  rect(x+3*w,y,w,h);
  fill(#950AFA);
  rect(x+4*w,y,w,h);
}
//After setting the fill color, there are five "rect" functions that draw the colored rectangles. 
//The first rectangle starts at the (x,y) coordinate and has a width of "w" and a height of "h". 
//The other rectangles are drawn to the right of the previous one, with increasing x-coordinates based on the value of "w".
