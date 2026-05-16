void start_lights(int x, int y){ //Defines a function called "start_lights" that takes two integer parameters x and y
 rectMode(CENTER); //Sets the rectangle mode to center
 fill(#39CCFF); //Fills the rectangle with a light blue color
 noStroke(); //Disables the stroke
 rect(x+100,y-100,340,350); //Draws a rectangle with the specified dimensions at the specified position
 stroke(0); //Sets the stroke color to black
 //main blocks that create the start light
 individual_tetris_block_3d(x,y-200,100,#030000,#242323,#3B3A3A,#767575); //Calls a function to draw a 3D block with the specified colors and position
 individual_tetris_block_3d(x,y-100,100,#030000,#242323,#3B3A3A,#767575); //Calls the same function to draw another block with different position
 individual_tetris_block_3d(x,y,100,#030000,#242323,#3B3A3A,#767575); //Calls the same function to draw another block with different position
 individual_tetris_block_3d(x+100,y-200,100,#646464,#E0E0E0,#DBDBDB,#FFFFFF); //Calls the same function to draw another block with different position and colors
 individual_tetris_block_3d(x+200,y-200,100,#646464,#E0E0E0,#DBDBDB,#FFFFFF); //Calls the same function to draw another block with different position and colors
 noStroke(); //Disables the stroke
 fill(#DBDBDB); //Sets the fill color to a light gray
 rect(x+150,y-239,160,18); //Draws a rectangle with the specified dimensions and position
 fill(#646464); //Sets the fill color to a dark gray
 rect(x+150,y-165,160,18); //Draws a rectangle with the specified dimensions and position
 stroke(0); //Sets the stroke color to black
 strokeWeight(2); //Sets the stroke weight to 2 pixels
 fill(#E0E0E0); //Sets the fill color to a light gray
 rect(x+150,y-200,160,60); //Draws a rectangle with the specified dimensions and position
 fill(0); //Sets the fill color to black
 textSize(30); //Sets the text size to 30
 text("100M Sprint",x+75,y-190); //Writes the specified text at the specified position
}
void post_sign(int x, int y, String text){
rectMode(CENTER);
noStroke();

// Create a red tetris block on top of a white tetris block to form the post sign
fill(#39CCFF);
rect(x, y-77, 140, 260);
individual_tetris_block_3d(x, y-100, 100, #A5080B, #FF0004, #FA3A3D, #FF6F71);
individual_tetris_block_3d(x, y, 100, #909090, #DEDEDE, #FFFFFF, #FFFFFF);

// Add text to the sign
textSize(60);
fill(255);
text(text, x-70, y-160);
}
