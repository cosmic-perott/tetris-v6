//this is the function for the platform where the Geomun ball is going to land while doing the longjump
void floating_land(int x, int y) {
  //yes, I individually placed them
  //effort,effort,EFFORT!
  individual_tetris_block_3d(x,y,96,#553D00,#956B00,#8E6600,#AF7E00);
  individual_tetris_block_3d(x+96,y,96,#553D00,#956B00,#8E6600,#AF7E00);
  individual_tetris_block_3d(x+190,y,96,#553D00,#956B00,#8E6600,#AF7E00);
  individual_tetris_block_3d(x+43,y+97,94,#553D00,#956B00,#8E6600,#AF7E00);
  individual_tetris_block_3d(x+138,y+97,94,#553D00,#956B00,#8E6600,#AF7E00);
  individual_tetris_block_3d(x+280,y,96,#553D00,#956B00,#8E6600,#AF7E00);
  individual_tetris_block_3d(x+233,y+97,96,#553D00,#956B00,#8E6600,#AF7E00);
  //there are two different colors in this
  //green and brown
  //I took the minecraft grass block as reference for this design
  individual_tetris_block_3d(x-50,y-86,98,#00900F,#00D316,#00C415,#00EA19);
  individual_tetris_block_3d(x+48,y-86,98,#00900F,#00D316,#00C415,#00EA19);
  individual_tetris_block_3d(x+146,y-86,98,#00900F,#00D316,#00C415,#00EA19);
  individual_tetris_block_3d(x+245,y-86,98,#00900F,#00D316,#00C415,#00EA19);
  individual_tetris_block_3d(x+344,y-86,98,#00900F,#00D316,#00C415,#00EA19);
}

//this is the function for the crowd
void crowd(int y) {
  //this is the list of colors of houses
  color [] house_colors = {color(#FC0000),color(#00B0FF),color(#02C136),color(#8600FC),color(#FCE800)};
  //this is the list of house names
  String [] house_name = {"Sarah!!","Geomun!!","Mulchat!!","Noro!!","Jeoji!!"};
  //you might notice that the color and names match, for obvious reasons
  CROWD_MOVE_X -= 10;//the crowd is going to move from right to left so that it looks like it is moving
  if (HOUSE_COLOR_COUNT >4){//if the list has reached its limit
    HOUSE_COLOR_COUNT = 0;//reset index for color list
    HOUSE_NAME_INDEX = 0;//reset index for name list
  }
  crowd_seats(CROWD_MOVE_X,y);//this is another function which creates the platform where the crowd sits
  //the crowds are going to be placed on these coordinates
  //there are some + and - next to the CROWD_MOVE_X and y, so that the placement looks random rather than the exact same position
  individual_crowd(CROWD_MOVE_X,y+20,house_colors[HOUSE_COLOR_COUNT]);
  individual_crowd(CROWD_MOVE_X-60,y-85,house_colors[HOUSE_COLOR_COUNT]);
  individual_crowd(CROWD_MOVE_X-140,y+20,house_colors[HOUSE_COLOR_COUNT]);
  individual_crowd(CROWD_MOVE_X+80,y-85,house_colors[HOUSE_COLOR_COUNT]);
  individual_crowd(CROWD_MOVE_X+120,y+20,house_colors[HOUSE_COLOR_COUNT]);
  individual_tetris_block_3d(CROWD_MOVE_X+150,y+220,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X-150,y+220,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X+250,y+220,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X-250,y+220,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X-50,y+220,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X+50,y+220,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X+150,y+320,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X-150,y+320,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X+250,y+320,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X-250,y+320,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X-50,y+320,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X+50,y+320,100,#01860F,#00C615,#00CE16,#00FC1B);
  
  textSize(50);//text is 50
  fill(house_colors[HOUSE_COLOR_COUNT]);//fill the object with the given color
  text(house_name[HOUSE_NAME_INDEX],CROWD_MOVE_X-80,y-150);//write the house name above them in given color
  if (CROWD_MOVE_X < -300){//if the crowd goes off screen
    CROWD_MOVE_X = 1500;//go back to screen
    HOUSE_COLOR_COUNT += 1;//add 1 to the color list
    HOUSE_NAME_INDEX += 1;//add 1 to the color list
    //this makes the crowd look like a new crowd is approaching rather than the same just repeating itself
  }
}

//this is function for the normal_world crowd
//the previous crowd function does not work for the transition scene
//so I had to make a new one
void crowd_normal_world(int y){
  //it works in the same way
  color [] house_colors = {color(#FC0000),color(#00B0FF),color(#02C136),color(#8600FC),color(#FCE800)}; //this is the list of colors of houses
  //there is a difference that there are no house names here
  //you don't see words above people normally so I had to take that out
  CROWD_MOVE_X -= 10;//move from right to left
  if (HOUSE_COLOR_COUNT >4){//if list reaches limit
    HOUSE_COLOR_COUNT = 0;//reset
    HOUSE_NAME_INDEX = 0;//reset
  }
  crowd_seats_normal_world(CROWD_MOVE_X,y);//this is the function for the crowd's platform, but in the normal world
  individual_crowd(CROWD_MOVE_X,y+20,house_colors[HOUSE_COLOR_COUNT]);
  individual_crowd(CROWD_MOVE_X-60,y-85,house_colors[HOUSE_COLOR_COUNT]);
  //all individuals have their own colors
  individual_crowd(CROWD_MOVE_X-140,y+20,house_colors[HOUSE_COLOR_COUNT]);
  individual_crowd(CROWD_MOVE_X+80,y-85,house_colors[HOUSE_COLOR_COUNT]);
  individual_crowd(CROWD_MOVE_X+120,y+20,house_colors[HOUSE_COLOR_COUNT]);
  individual_tetris_block_3d(CROWD_MOVE_X+150,y+220,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X-150,y+220,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X+250,y+220,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X-250,y+220,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X-50,y+220,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X+50,y+220,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X+150,y+320,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X-150,y+320,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X+250,y+320,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X-250,y+320,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X-50,y+320,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X+50,y+320,100,#01860F,#00C615,#00CE16,#00FC1B);
  textSize(50);
  fill(house_colors[HOUSE_COLOR_COUNT]);
  if (CROWD_MOVE_X < -300){
    CROWD_MOVE_X = 1500;
    HOUSE_COLOR_COUNT += 1;
    HOUSE_NAME_INDEX += 1;
  }
}
void crowd_normal_world2(int y){
  color [] house_colors2 = {color(#FC0000),color(#00B0FF),color(#02C136),color(#8600FC),color(#FCE800)};
  CROWD_MOVE_X2 -= 10;
  if (HOUSE_COLOR_COUNT2 >4){
    HOUSE_COLOR_COUNT2 = 0;
  }
  crowd_seats_normal_world(CROWD_MOVE_X2,y);
  individual_crowd(CROWD_MOVE_X2,y+20,house_colors2[HOUSE_COLOR_COUNT2]);
  individual_crowd(CROWD_MOVE_X2-60,y-85,house_colors2[HOUSE_COLOR_COUNT2]);
  individual_crowd(CROWD_MOVE_X2-140,y+20,house_colors2[HOUSE_COLOR_COUNT2]);
  individual_crowd(CROWD_MOVE_X2+80,y-85,house_colors2[HOUSE_COLOR_COUNT2]);
  individual_crowd(CROWD_MOVE_X2+120,y+20,house_colors2[HOUSE_COLOR_COUNT2]);
  //there are some + and - next to the CROWD_MOVE_X and y, so that the placement looks random rather than the exact same position
  individual_tetris_block_3d(CROWD_MOVE_X2+150,y+220,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X2-150,y+220,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X2+250,y+220,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X2-250,y+220,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X2-50,y+220,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X2+50,y+220,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X2+150,y+320,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X2-150,y+320,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X2+250,y+320,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X2-250,y+320,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X2-50,y+320,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X2+50,y+320,100,#01860F,#00C615,#00CE16,#00FC1B);
  textSize(50);
  fill(house_colors2[HOUSE_COLOR_COUNT2]);//fill with the color of the index of the color list
  if (CROWD_MOVE_X2 < -300){//if the crowd goes off the screen
    CROWD_MOVE_X2 = 2000;//reset
    HOUSE_COLOR_COUNT2 += 1;//add 1 to the color list
  }
}
//this is basically the same code
void crowd_normal_world3(int y){
  color [] house_colors3 = {color(#FC0000),color(#00B0FF),color(#02C136),color(#8600FC),color(#FCE800)};
  CROWD_MOVE_X3 -= 10;
  if (HOUSE_COLOR_COUNT3 >4){
    HOUSE_COLOR_COUNT3 = 0;
    HOUSE_NAME_INDEX3 = 0;
  }
  //the only difference here is that it works on a different variable
  //this is because I wanted more crowd in the transition scene
  //so I had to manually make more crowd
  //really, sometimes I can be really weird
  crowd_seats_normal_world(CROWD_MOVE_X3,y);
  individual_crowd(CROWD_MOVE_X3,y+20,house_colors3[HOUSE_COLOR_COUNT3]);
  individual_crowd(CROWD_MOVE_X3-60,y-85,house_colors3[HOUSE_COLOR_COUNT3]);
  individual_crowd(CROWD_MOVE_X3-140,y+20,house_colors3[HOUSE_COLOR_COUNT3]);
  individual_crowd(CROWD_MOVE_X3+80,y-85,house_colors3[HOUSE_COLOR_COUNT3]);
  individual_crowd(CROWD_MOVE_X3+120,y+20,house_colors3[HOUSE_COLOR_COUNT3]);
  
  //works the same way
  individual_tetris_block_3d(CROWD_MOVE_X3+150,y+220,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X3-150,y+220,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X3+250,y+220,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X3-250,y+220,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X3-50,y+220,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X3+50,y+220,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X3+150,y+320,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X3-150,y+320,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X3+250,y+320,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X3-250,y+320,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X3-50,y+320,100,#01860F,#00C615,#00CE16,#00FC1B);
  individual_tetris_block_3d(CROWD_MOVE_X3+50,y+320,100,#01860F,#00C615,#00CE16,#00FC1B);
  textSize(50);
  //same mechanism as other functions
  fill(house_colors3[HOUSE_COLOR_COUNT3]);
  if (CROWD_MOVE_X3 < -300){
    CROWD_MOVE_X3 = 2500;
    HOUSE_COLOR_COUNT3 += 1;
    HOUSE_NAME_INDEX3 += 1;
  }
}
//this is the function to create "a person" for the crowd
void individual_crowd(int x, int y, color c1){
  stroke(0);//black outline
  strokeWeight(2);//outline width is 2
  ellipseMode(CENTER);//ellipse in Center
  rectMode(CENTER);//rect in center
  fill(c1);//color given in the variable
  rect(x,y+45,50,40);//body
  fill(#FFD76A);//skin tone color
  rect(x,y,60,60,10);//head
}
//this is the function to create the platform for the crowd to sit in
//because the crowd can't be floating in the air
//although... that was considered...
void crowd_seats(int x, int y){
 //it is basically just gray tetris blocks placed here and there
 //to create a sort of quadilateral shape
 individual_tetris_block_3d(x+50,y+130,100,#5A5A59,#9B9B9B,#AAAAA8,#D6D6D6);
 individual_tetris_block_3d(x+150,y+130,100,#5A5A59,#9B9B9B,#AAAAA8,#D6D6D6);
 individual_tetris_block_3d(x-50,y+130,100,#5A5A59,#9B9B9B,#AAAAA8,#D6D6D6);
 individual_tetris_block_3d(x-150,y+130,100,#393938,#7E7E7E,#939393,#BCBCBC);
 individual_tetris_block_3d(x-100,y+30,100,#393938,#7E7E7E,#939393,#BCBCBC);
 individual_tetris_block_3d(x,y+30,100,#393938,#7E7E7E,#939393,#BCBCBC);
 individual_tetris_block_3d(x+100,y+30,100,#393938,#7E7E7E,#939393,#BCBCBC);
}
//this is the function to create the platform for the crowd to sit in for the transition scene
void crowd_seats_normal_world(int x, int y){
  //so this is just the same thing with the crowd_seats function
  //but using rects instead of tetris blocks
  fill(#9B9B9B);//same shade of gray
  //you will notice that the coordinates look the same as that of above
  //and that is because... it is.
 rect(x+50,y+130,100,100);
 rect(x+150,y+130,100,100);
 rect(x-50,y+130,100,100);
 rect(x-150,y+130,100,100);
 rect(x-100,y+30,100,100);
 rect(x,y+30,100,100);
 rect(x+100,y+30,100,100);
}
