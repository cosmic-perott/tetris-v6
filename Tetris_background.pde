//function for the tetris raining effect
void tetris_fall(int color_type){
  //has different velocities(speeds)
    TETRIS_VELOCITY1 = 2;
    TETRIS_VELOCITY2 = 3;
    TETRIS_VELOCITY3 = 4;
    TETRIS_VELOCITY4 = 5;
    //list of the positions the tetris blocks are going to spawn from
    int [] tetris_block_position1 = {600,350,1100,650,850}; 
    int [] tetris_block_position2 = {250,300,650,200,950};
    int [] tetris_block_position3 = {0,1000,400,600,200};
    int [] tetris_block_position4 = {900,1000,100,600,300};
    //there are two types of tetris rain effect
    //I will only annotate one type of this and leave a summary for the other
    if (color_type == 1){
    color [] tetris_block_color11 = {#FF5064,#FFDC50,#00F01D,#31C6FF,#C84BFF};//two different colors
    color [] tetris_block_color12 = {#C84BFF,#FFDC50,#00F01D,#31C6FF,#FF5064};
    //the blocks fall from the start of the screen
    TETRIS_START1_Y += TETRIS_VELOCITY1;
    TETRIS_START1_Y += TETRIS_VELOCITY2;
    TETRIS_START3_Y += TETRIS_VELOCITY3;
    TETRIS_START4_Y += TETRIS_VELOCITY4;
    //when the tetris block hits the bottom of the screen
    //add 1 to the index for the color list and coordinate list
    //and reset its position to the top 
    if (TETRIS_START1_Y > 700){
     TETRIS_START1_Y = 0;
     TETRIS_INDEX1 += 1;
    }
    //if limit reached
    //reset index
    if (TETRIS_INDEX1 > 4){
      TETRIS_INDEX1 = 0;
    }
    //when the tetris block hits the bottom of the screen
    //add 1 to the index for the color list and coordinate list
    //and reset its position to the top 
    if (TETRIS_START1_Y > 700){
     TETRIS_START1_Y = 0;
     TETRIS_INDEX2 += 1;
    }
    //if limit reached
    //reset index
    if (TETRIS_INDEX2 > 4){
      TETRIS_INDEX2 = 0;
    }
    //when the tetris block hits the bottom of the screen
    //add 1 to the index for the color list and coordinate list
    //and reset its position to the top 
    if (TETRIS_START3_Y > 700){
     TETRIS_START3_Y = 0;
     TETRIS_INDEX3 += 1;
    }
    //if limit reached
    //reset index
    if (TETRIS_INDEX3 > 4){
      TETRIS_INDEX3 = 0;
    }
    //when the tetris block hits the bottom of the screen
    //add 1 to the index for the color list and coordinate list
    //and reset its position to the top 
    if (TETRIS_START4_Y > 700){
     TETRIS_START4_Y = 0;
     TETRIS_INDEX4 += 1;
    }
    //if limit reached
    //reset index
    if (TETRIS_INDEX4 > 4){
      TETRIS_INDEX4 = 0;
    }//if level_count is 4 or 5
    //do not do anything 
    if (LEVEL_COUNT == 4 || LEVEL_COUNT == 5){
      noStroke();
    fill(#39CCFF);
    }
    //fall with the given position and given color
    rect(TETRIS_START1_X+tetris_block_position1[TETRIS_INDEX1]+20,TETRIS_START1_Y+20,80,80);
    individual_tetris_block(TETRIS_START1_X+tetris_block_position1[TETRIS_INDEX1],TETRIS_START1_Y,tetris_block_color11[TETRIS_INDEX1]);
    individual_tetris_block(TETRIS_START1_X+20+tetris_block_position1[TETRIS_INDEX1],TETRIS_START1_Y,tetris_block_color11[TETRIS_INDEX1]);
    individual_tetris_block(TETRIS_START1_X+20+tetris_block_position1[TETRIS_INDEX1],TETRIS_START1_Y+20,tetris_block_color11[TETRIS_INDEX1]);
    individual_tetris_block(TETRIS_START1_X+40+tetris_block_position1[TETRIS_INDEX1],TETRIS_START1_Y+20,tetris_block_color11[TETRIS_INDEX1]);
    //if level_count is 4 or 5
    //do not do anything 
    if (LEVEL_COUNT == 4 || LEVEL_COUNT == 5){
      noStroke();
    fill(#39CCFF);
    }
    //fall with the given position and given color
    rect(TETRIS_START1_X+tetris_block_position2[TETRIS_INDEX2]+20,TETRIS_START1_Y+20,80,100);
    individual_tetris_block(TETRIS_START1_X+tetris_block_position2[TETRIS_INDEX2],TETRIS_START1_Y,tetris_block_color12[TETRIS_INDEX2]);
    individual_tetris_block(TETRIS_START1_X+20+tetris_block_position2[TETRIS_INDEX2],TETRIS_START1_Y,tetris_block_color12[TETRIS_INDEX2]);
    individual_tetris_block(TETRIS_START1_X+20+tetris_block_position2[TETRIS_INDEX2],TETRIS_START1_Y+20,tetris_block_color12[TETRIS_INDEX2]);
    individual_tetris_block(TETRIS_START1_X+tetris_block_position2[TETRIS_INDEX2],TETRIS_START1_Y+20,tetris_block_color12[TETRIS_INDEX2]);
    //if level_count is 4 or 5
    //do not do anything 
    if (LEVEL_COUNT == 4 || LEVEL_COUNT == 5){
      noStroke();
    fill(#39CCFF);
    }
    //fall with the given position and given color
    rect(TETRIS_START3_X+tetris_block_position3[TETRIS_INDEX3]+20,TETRIS_START3_Y+20,80,100);
    individual_tetris_block(TETRIS_START3_X+tetris_block_position3[TETRIS_INDEX3],TETRIS_START3_Y,tetris_block_color11[TETRIS_INDEX3]);
    individual_tetris_block(TETRIS_START3_X+20+tetris_block_position3[TETRIS_INDEX3],TETRIS_START3_Y,tetris_block_color11[TETRIS_INDEX3]);
    individual_tetris_block(TETRIS_START3_X+40+tetris_block_position3[TETRIS_INDEX3],TETRIS_START3_Y,tetris_block_color11[TETRIS_INDEX3]);
    individual_tetris_block(TETRIS_START3_X+tetris_block_position3[TETRIS_INDEX3],TETRIS_START3_Y+20,tetris_block_color11[TETRIS_INDEX3]);
    //if level_count is 4 or 5
    //do not do anything 
    if (LEVEL_COUNT == 4 || LEVEL_COUNT == 5){
      noStroke();
    fill(#39CCFF);
    }
    //fall with the given position and given color
    rect(TETRIS_START4_X+tetris_block_position4[TETRIS_INDEX4]+20,TETRIS_START4_Y+20,80,100);
    individual_tetris_block(TETRIS_START4_X+tetris_block_position4[TETRIS_INDEX4],TETRIS_START4_Y,tetris_block_color12[TETRIS_INDEX4]);
    individual_tetris_block(TETRIS_START4_X+20+tetris_block_position4[TETRIS_INDEX4],TETRIS_START4_Y,tetris_block_color12[TETRIS_INDEX4]);
    individual_tetris_block(TETRIS_START4_X+40+tetris_block_position4[TETRIS_INDEX4],TETRIS_START4_Y,tetris_block_color12[TETRIS_INDEX4]);
    individual_tetris_block(TETRIS_START4_X+tetris_block_position4[TETRIS_INDEX4],TETRIS_START4_Y+20,tetris_block_color12[TETRIS_INDEX4]);
}
if (color_type == 2){
  background(#090043);
  strokeWeight(2);
  rectMode(CENTER);
    color [] tetris_block_color21 = {#FFB700,#FF0000,#00FFFD,#FF5DF7,#FFE600};
    color [] tetris_block_color22 = {#FFE600,#FF5DF7,#00FFFD,#FF0000,#FFB700};
    TETRIS_START1_Y += TETRIS_VELOCITY1;
    TETRIS_START1_Y += TETRIS_VELOCITY2;
    TETRIS_START3_Y += TETRIS_VELOCITY3;
    TETRIS_START4_Y += TETRIS_VELOCITY4;
     //when the tetris block hits the bottom of the screen
    //add 1 to the index for the color list and coordinate list
    //and reset its position to the top 
    if (TETRIS_START1_Y > 700){
     TETRIS_START1_Y = 0;
     TETRIS_INDEX1 += 1;
    }
     //when the tetris block hits the bottom of the screen
    //add 1 to the index for the color list and coordinate list
    //and reset its position to the top 
    if (TETRIS_INDEX1 > 4){
      TETRIS_INDEX1 = 0;
    }
     //when the tetris block hits the bottom of the screen
    //add 1 to the index for the color list and coordinate list
    //and reset its position to the top 
    if (TETRIS_START1_Y > 700){
     TETRIS_START1_Y = 0;
     TETRIS_INDEX2 += 1;
    }
    //if limit reached
    //reset
    if (TETRIS_INDEX2 > 4){
      TETRIS_INDEX2 = 0;
    }
     //when the tetris block hits the bottom of the screen
    //add 1 to the index for the color list and coordinate list
    //and reset its position to the top 
    if (TETRIS_START3_Y > 700){
     TETRIS_START3_Y = 0;
     TETRIS_INDEX3 += 1;
    }
    //if limit reached
    //reset
    if (TETRIS_INDEX3 > 4){
      TETRIS_INDEX3 = 0;
    }
    if (TETRIS_START4_Y > 700){
     TETRIS_START4_Y = 0;
     TETRIS_INDEX4 += 1;
    }
    //if limit reached
    //reset
    if (TETRIS_INDEX4 > 4){
      TETRIS_INDEX4 = 0;
    }
//fall with the given position and given color
    individual_tetris_block(TETRIS_START1_X+tetris_block_position1[TETRIS_INDEX1],TETRIS_START1_Y,tetris_block_color21[TETRIS_INDEX1]);
    individual_tetris_block(TETRIS_START1_X+20+tetris_block_position1[TETRIS_INDEX1],TETRIS_START1_Y,tetris_block_color21[TETRIS_INDEX1]);
    individual_tetris_block(TETRIS_START1_X+20+tetris_block_position1[TETRIS_INDEX1],TETRIS_START1_Y+20,tetris_block_color21[TETRIS_INDEX1]);
    individual_tetris_block(TETRIS_START1_X+40+tetris_block_position1[TETRIS_INDEX1],TETRIS_START1_Y+20,tetris_block_color21[TETRIS_INDEX1]);
    //fall with the given position and given color
    individual_tetris_block(TETRIS_START1_X+tetris_block_position2[TETRIS_INDEX2],TETRIS_START1_Y,tetris_block_color22[TETRIS_INDEX2]);
    individual_tetris_block(TETRIS_START1_X+20+tetris_block_position2[TETRIS_INDEX2],TETRIS_START1_Y,tetris_block_color22[TETRIS_INDEX2]);
    individual_tetris_block(TETRIS_START1_X+20+tetris_block_position2[TETRIS_INDEX2],TETRIS_START1_Y+20,tetris_block_color22[TETRIS_INDEX2]);
    individual_tetris_block(TETRIS_START1_X+tetris_block_position2[TETRIS_INDEX2],TETRIS_START1_Y+20,tetris_block_color22[TETRIS_INDEX2]);
//fall with the given position and given color
    individual_tetris_block(TETRIS_START3_X+tetris_block_position3[TETRIS_INDEX3],TETRIS_START3_Y,tetris_block_color21[TETRIS_INDEX3]);
    individual_tetris_block(TETRIS_START3_X+20+tetris_block_position3[TETRIS_INDEX3],TETRIS_START3_Y,tetris_block_color21[TETRIS_INDEX3]);
    individual_tetris_block(TETRIS_START3_X+40+tetris_block_position3[TETRIS_INDEX3],TETRIS_START3_Y,tetris_block_color21[TETRIS_INDEX3]);
    individual_tetris_block(TETRIS_START3_X+tetris_block_position3[TETRIS_INDEX3],TETRIS_START3_Y+20,tetris_block_color21[TETRIS_INDEX3]);
//fall with the given position and given color
    individual_tetris_block(TETRIS_START4_X+tetris_block_position4[TETRIS_INDEX4],TETRIS_START4_Y,tetris_block_color22[TETRIS_INDEX4]);
    individual_tetris_block(TETRIS_START4_X+20+tetris_block_position4[TETRIS_INDEX4],TETRIS_START4_Y,tetris_block_color22[TETRIS_INDEX4]);
    individual_tetris_block(TETRIS_START4_X+40+tetris_block_position4[TETRIS_INDEX4],TETRIS_START4_Y,tetris_block_color22[TETRIS_INDEX4]);
    individual_tetris_block(TETRIS_START4_X+tetris_block_position4[TETRIS_INDEX4],TETRIS_START4_Y+20,tetris_block_color22[TETRIS_INDEX4]);
}
if (color_type == 3){
  background(#39CCFF);
  strokeWeight(2);
  rectMode(CENTER);
    color [] tetris_block_color11 = {#FF5064,#FFDC50,#00F01D,#31C6FF,#C84BFF};
    color [] tetris_block_color12 = {#C84BFF,#FFDC50,#00F01D,#31C6FF,#FF5064};
    TETRIS_START1_Y += TETRIS_VELOCITY1;
    TETRIS_START1_Y += TETRIS_VELOCITY2;
    TETRIS_START3_Y += TETRIS_VELOCITY3;
    TETRIS_START4_Y += TETRIS_VELOCITY4;
    if (TETRIS_START1_Y > 700){
     TETRIS_START1_Y = 0;
     TETRIS_INDEX1 += 1;
    }
    if (TETRIS_INDEX1 > 4){
      TETRIS_INDEX1 = 0;
    }
    if (TETRIS_START1_Y > 700){
     TETRIS_START1_Y = 0;
     TETRIS_INDEX2 += 1;
    }
    if (TETRIS_INDEX2 > 4){
      TETRIS_INDEX2 = 0;
    }
    if (TETRIS_START3_Y > 700){
     TETRIS_START3_Y = 0;
     TETRIS_INDEX3 += 1;
    }
    if (TETRIS_INDEX3 > 4){
      TETRIS_INDEX3 = 0;
    }
    if (TETRIS_START4_Y > 700){
     TETRIS_START4_Y = 0;
     TETRIS_INDEX4 += 1;
    }
    if (TETRIS_INDEX4 > 4){
      TETRIS_INDEX4 = 0;
    }
    //fall with the given position and given color
fill(tetris_block_color11[TETRIS_INDEX1]);
    rect(TETRIS_START1_X+tetris_block_position1[TETRIS_INDEX1],TETRIS_START1_Y,10,20);
    rect(TETRIS_START1_X+tetris_block_position1[TETRIS_INDEX1]+100,TETRIS_START1_Y,20,10);
    //fall with the given position and given color
fill(tetris_block_color12[TETRIS_INDEX2]);
    rect(TETRIS_START1_X+tetris_block_position2[TETRIS_INDEX2],TETRIS_START1_Y,10,20);
    rect(TETRIS_START1_X+tetris_block_position2[TETRIS_INDEX2],TETRIS_START1_Y,20,10);
    //fall with the given position and given color
fill(tetris_block_color11[TETRIS_INDEX3]);
    rect(TETRIS_START3_X+tetris_block_position3[TETRIS_INDEX3],TETRIS_START3_Y,10,20);
    rect(TETRIS_START3_X+tetris_block_position3[TETRIS_INDEX3],TETRIS_START3_Y,20,10);
    //fall with the given position and given color
fill(tetris_block_color12[TETRIS_INDEX4]);
    rect(TETRIS_START4_X+tetris_block_position4[TETRIS_INDEX4],TETRIS_START4_Y,10,20);
    rect(TETRIS_START4_X+tetris_block_position4[TETRIS_INDEX4],TETRIS_START4_Y,20,10);
}
}
    
