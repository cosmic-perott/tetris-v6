//YOUTUBE TRANSITION SCENE FUNCTION
void YOUTUBE_scene_transition(){
  background(255);//white background
    ellipseMode(CENTER);//ellipse center
  rectMode(CORNER);//rect center
  //this variable is for the border that is going to change the scene
  YOUTUBE_SCENE_X += 10;//goes from left to right
  YOUTUBE(14,97);//youtube screen function
  if (YOUTUBE_SCENE_X < 100){//if the border's x axis is smaller than 100
   Sarah_ball(205,383);//sarah ball
  }
  if (YOUTUBE_SCENE_X < 700){//if the border's x axis is smaller 700
    YOUTUBE_scene_sky_rect(YOUTUBE_SCENE_X+80);//the sky(blue rectangle) is going to follow the border
    if (YOUTUBE_SCENE_X+300 < 700){//if the border's x axis +300 is smaller than 700 
    YOUTUBE_scene_ground_rect(YOUTUBE_SCENE_X+300);//the ground(green_rectangle) is going to follow the border
    }
    if (YOUTUBE_SCENE_X+300 >= 700){//if the border's x axis is bigger than 700
    YOUTUBE_scene_ground_rect(688);//this is going to make sure that the ground_rectangle does not go further than it is supposed to
    }
  }
    if (YOUTUBE_SCENE_X >= 700){//if the border's x axis is bigger or equal than 700
    YOUTUBE_scene_sky_rect(400);//prevents the sky_rectangle from going further than needed
    YOUTUBE_scene_ground_rect(688);//prevents the ground_rectangle from going further than needed
  }
  if (YOUTUBE_SCENE_X >= 100 && YOUTUBE_SCENE_X < 700){//if the border's x axis is in this range
         NormalWorldJavelin();//update the javelin
         NormalWorldJavelinThrow();//throw the javelin
         LONGJUMP_FLOATING_ISLAND_AXIS_X = 2400;//prepare for the next scene
   JavelinThrowingCharacter1(205,363); //change character to human holding javelin
   //changes from game ball to human character
  }
  
  if (YOUTUBE_SCENE_X >= 700){//if the border's axis is bigger than 700
   NormalWorldJavelinThrow();//throw the javelin
   JavelinThrowingCharacter2(205,363);//change character to second image so that it looks animated
  }
 if (YOUTUBE_SCENE_X > 1200){//if the border's x axis goes over 1200
  SECOND_LEVEL_COUNT = 6; //next scene
 }
 
    noStroke();
  fill(255);
  rectMode(CENTER);
  rect(0,400,27,800);
  transition_bar_normal_world(YOUTUBE_SCENE_X);//the border that is going to determine this
}

void LONGJUMP_scene_transition(){//function for long jump transition scene
//prepare for the next next scene which is the 100 meter scene
   HUNDRED_METER_PURPLE_SPEED = 0;
   HUNDRED_METER_RED_SPEED = 0;
   HUNDRED_METER_YELLOW_SPEED = 0;
   HUNDRED_METER_GREEN_SPEED = 0;
   HUNDRED_METER_BLUE_SPEED = 0;
   background(#39CCFF);
  if (LONGJUMP_SCENE_X < 500){//if the border's x axis is smaller than 500
  tetris_fall(1);//tetris sky fall
  }
    fill(#009FFF);//blue
  Geomun_ball(630,Y_AXIS_POSITION-30);//geomun ball is going to jumping as usual
  // apply GRAVITY to the character
  Y_AXIS_VELOCITY += GRAVITY*0.3;
  
  // update the position of the character based on its velocity
  Y_AXIS_POSITION += Y_AXIS_VELOCITY;
  
  // check if the character has hit the ground
  if (Y_AXIS_POSITION >= 600) {
    Y_AXIS_VELOCITY = -10; // bounce the character back up with a velocity of -10 pixels/frame
  }
  
  //move from right to left
  //this is for the floating island
  //I have explained this in the long jump function
  LONGJUMP_MOVE -= 10;
  if (LONGJUMP_MOVE == -1300){
    LONGJUMP_MOVE = -180;
  }
    if (LONGJUMP_FLOATING_ISLAND_AXIS_X > -300){ 
    LONGJUMP_FLOATING_ISLAND_AXIS_X -= 12.6;
    }
    if (LONGJUMP_FLOATING_ISLAND_AXIS_X <= -300){
     LONGJUMP_FLOATING_ISLAND_AXIS_X = 1400; 
     LONGJUMP_COUNT += 1;
    }
  floating_land(LONGJUMP_FLOATING_ISLAND_AXIS_X,765);
  if (LONGJUMP_SCENE_X >= 0){
    for (int x = 0; x<=YOUTUBE_SCENE_X; x+= 100){
      noStroke();
     fill(#39CCFF);
    rect(x,300,100,600);
   }
   //I said that I was going to use more crowds
   //I was not joking
   crowd_normal_world(450);
   crowd_normal_world2(450);
   crowd_normal_world3(450);
     //this is going to make the floating island turn from 
  //floating island into sand and dirt so it looks like the person is 
  //jumping towards sand rather than risking their lives while jumping from a floating island
   for (int x = 0; x<=LONGJUMP_SCENE_X; x+= 100){
     noStroke();
     fill(#FFEA00);
    rect(x,700,100,200);
   }
  }
  if (LONGJUMP_SCENE_X <= 500){//if the border's x axis is covering the perfect area
  //change the island to sand and dirt
    fill(#FFEA00);
    LONGJUMP_SCENE_SAND_X += 10;
   rect(LONGJUMP_SCENE_SAND_X,700,700,200);
   if (LONGJUMP_SCENE_SAND_X > 1500 && LONGJUMP_SCENE_X > 1000){
     LONGJUMP_SCENE_SAND_X = -500;
   }
  }
  //if the number of times the character has jumped is bigger than 8
  if (LONGJUMP_COUNT > 8){
    HIGHJUMP_METER_MOVE = 0;
    HIGHJUMP_SPAWN_X = 1100;
    HIGHJUMP_SPAWN_INDEX = 0;
   SECOND_LEVEL_COUNT = 7; //next scene
  }
  //when the border passes the ball
  //it is going to change to a human character
  if (LONGJUMP_SCENE_X > 580){
    if (Y_AXIS_POSITION >= 500){
  LongJumpCharacter1(630,Y_AXIS_POSITION);//first animation
    }
    if (Y_AXIS_POSITION < 500){
     LongJumpCharacter2(730,Y_AXIS_POSITION); //second animation
    }
  }
  //gives an animation effect
  fill(#02D800);
  rectMode(CENTER);
  if (LONGJUMP_SCENE_X > 800){
  rect(LONGJUMP_FLOATING_ISLAND_AXIS_X,800,600,400);
  }
  
  //border keeps on moving
       LONGJUMP_SCENE_X += 10;
  transition_bar_normal_world(LONGJUMP_SCENE_X);
}

//function for highjump transition scene
//this is basically the same as the functions above this so I will just write a short summary
void HIGHJUMP_scene_transition(){
//it is going to execute the program to do the same thing as scene 2
//but the border is going to be closing in and the parts that are covered by the border will turn into
//normal world objects and that is what we want.
 tetris_fall(2);//different style of tetris fall
 NEON_SIGN_X_AXIS -= 10;
  if (NEON_SIGN_X_AXIS < -1500-NEON_SIGN_X_AXIS_HIDE){
   NEON_SIGN_X_AXIS = 1500; 
   NEON_SIGN_INDEX += 1;
   NEON_SIGN_X_AXIS_HIDE = 10000;
  }
  neon_sign(NEON_SIGN_X_AXIS,400,NEON_SIGN_INDEX);
 stroke(#008AF7);
 strokeWeight(2);
 HIGHJUMP_METER_MOVE -= 10;
 if (HIGHJUMP_METER_MOVE == -1200){
  HIGHJUMP_METER_MOVE = 30; 
 }
 for (int y = 2400; y>-200; y-= 190){
    rectMode(CENTER);
    tetris_block_style_2(y+HIGHJUMP_METER_MOVE,675,#0004A5,#000000,#274CFF,#0F75FF);
   }
   color [] highjumpblock1 = {#AF7500,#FFAA00,#FFBC36,#FFCF6F,#AF7500,#FFAA00,#FFBC36,#FFCF6F};
   color [] highjumpblock2 = {#00BCAB,#00FFE8,#36FCEA,#6AFFF1,#00BCAB,#00FFE8,#36FCEA,#6AFFF1};
   color [] highjumpblock3 = {#BC0000,#FF0505,#FF3636,#FF6464,#BC0000,#FF0505,#FF3636,#FF6464};
   color [] highjumpblock4 = {#B44BA6,#FF64EB,#FF89EF,#FFA7F4,#B44BA6,#FF64EB,#FF89EF,#FFA7F4};
   int [] HIGHJUMP_COLORpattern = {3,2,4,1,1,2,3,2,4,1,1,2};
   int [] HIGHJUMP_SPAWNrate = {1,3,2,2,3,1,1,3,2,2,3,1};
if (HIGHJUMP_SPAWN_Y <= 570){
HIGHJUMP_SPAWN_Y += 22.5;
}
if (HIGHJUMP_SPAWN_Y >= 570){
  HIGHJUMP_SPAWN_X -= 10;
}
if (HIGHJUMP_SPAWN_X < 0){
 HIGHJUMP_SPAWN_X = 800;
 HIGHJUMP_SPAWN_Y = 0;
 if (HIGHJUMP_SPAWN_INDEX < 8){
 HIGHJUMP_SPAWN_INDEX += 1;
 }
}
if (PAC_MAN_X_AXIS < 1300){
 PAC_MAN_X_AXIS += PAC_MAN_VELOCITY; 
}
pac_man(PAC_MAN_X_AXIS,600);
pac_man_ghosts(PAC_MAN_X_AXIS+100,600);
fill(#FFEA00);
ellipse(630,Y_AXIS_POSITION,50,50);
  // apply GRAVITY to the character
  Y_AXIS_VELOCITY += GRAVITY*0.3;
  
  // update the position of the character based on its velocity
  Y_AXIS_POSITION += Y_AXIS_VELOCITY;
  
  // check if the character has hit the ground
  if (Y_AXIS_POSITION >= 590) {
    Y_AXIS_VELOCITY = -10; // bounce the character back up with a velocity of -10 pixels/frame
  }
  if (HIGHJUMP_SPAWNrate[HIGHJUMP_SPAWN_INDEX] ==1 && HIGHJUMP_COLORpattern[HIGHJUMP_SPAWN_INDEX] == 1){
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X-300,HIGHJUMP_SPAWN_Y,100,highjumpblock1[0],highjumpblock1[1],highjumpblock1[2],highjumpblock1[3]); 
}
if (HIGHJUMP_SPAWNrate[HIGHJUMP_SPAWN_INDEX] ==1 && HIGHJUMP_COLORpattern[HIGHJUMP_SPAWN_INDEX] == 2){
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X-300,HIGHJUMP_SPAWN_Y,100,highjumpblock2[0],highjumpblock2[1],highjumpblock2[2],highjumpblock2[3]); 
}
if (HIGHJUMP_SPAWNrate[HIGHJUMP_SPAWN_INDEX] ==1 && HIGHJUMP_COLORpattern[HIGHJUMP_SPAWN_INDEX] == 3){
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X-300,HIGHJUMP_SPAWN_Y,100,highjumpblock3[0],highjumpblock3[1],highjumpblock3[2],highjumpblock3[3]); 
}
if (HIGHJUMP_SPAWNrate[HIGHJUMP_SPAWN_INDEX] ==1 && HIGHJUMP_COLORpattern[HIGHJUMP_SPAWN_INDEX] == 4){
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X-300,HIGHJUMP_SPAWN_Y,100,highjumpblock4[0],highjumpblock4[1],highjumpblock4[2],highjumpblock4[3]); 
}
if (HIGHJUMP_SPAWNrate[HIGHJUMP_SPAWN_INDEX] == 2 && HIGHJUMP_COLORpattern[HIGHJUMP_SPAWN_INDEX] == 1){
  individual_tetris_block_3d(HIGHJUMP_SPAWN_X-300,HIGHJUMP_SPAWN_Y,100,highjumpblock1[0],highjumpblock1[1],highjumpblock1[2],highjumpblock1[3]); 
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X-300,HIGHJUMP_SPAWN_Y-100,100,highjumpblock1[0],highjumpblock1[1],highjumpblock1[2],highjumpblock1[3]);
}
if (HIGHJUMP_SPAWNrate[HIGHJUMP_SPAWN_INDEX] == 2 && HIGHJUMP_COLORpattern[HIGHJUMP_SPAWN_INDEX] == 2){
  individual_tetris_block_3d(HIGHJUMP_SPAWN_X-300,HIGHJUMP_SPAWN_Y,100,highjumpblock2[0],highjumpblock2[1],highjumpblock2[2],highjumpblock2[3]); 
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X-300,HIGHJUMP_SPAWN_Y-100,100,highjumpblock2[0],highjumpblock2[1],highjumpblock2[2],highjumpblock2[3]); 
}
if (HIGHJUMP_SPAWNrate[HIGHJUMP_SPAWN_INDEX] == 2 && HIGHJUMP_COLORpattern[HIGHJUMP_SPAWN_INDEX] == 3){
  individual_tetris_block_3d(HIGHJUMP_SPAWN_X-300,HIGHJUMP_SPAWN_Y,100,highjumpblock3[0],highjumpblock3[1],highjumpblock3[2],highjumpblock3[3]); 
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X-300,HIGHJUMP_SPAWN_Y-100,100,highjumpblock3[0],highjumpblock3[1],highjumpblock3[2],highjumpblock3[3]); 
}
if (HIGHJUMP_SPAWNrate[HIGHJUMP_SPAWN_INDEX] == 2 && HIGHJUMP_COLORpattern[HIGHJUMP_SPAWN_INDEX] == 4){
  individual_tetris_block_3d(HIGHJUMP_SPAWN_X-300,HIGHJUMP_SPAWN_Y,100,highjumpblock4[0],highjumpblock4[1],highjumpblock4[2],highjumpblock4[3]); 
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X-300,HIGHJUMP_SPAWN_Y-100,100,highjumpblock4[0],highjumpblock4[1],highjumpblock4[2],highjumpblock4[3]); 
}
if (HIGHJUMP_SPAWNrate[HIGHJUMP_SPAWN_INDEX] == 3 && HIGHJUMP_COLORpattern[HIGHJUMP_SPAWN_INDEX] == 1){
  individual_tetris_block_3d(HIGHJUMP_SPAWN_X-300,HIGHJUMP_SPAWN_Y,100,highjumpblock1[0],highjumpblock1[1],highjumpblock1[2],highjumpblock1[3]);  
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X-300,HIGHJUMP_SPAWN_Y-100,100,highjumpblock1[0],highjumpblock1[1],highjumpblock1[2],highjumpblock1[3]); 
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X-300,HIGHJUMP_SPAWN_Y-200,100,highjumpblock1[0],highjumpblock1[1],highjumpblock1[2],highjumpblock1[3]); 
}
if (HIGHJUMP_SPAWNrate[HIGHJUMP_SPAWN_INDEX] == 3 && HIGHJUMP_COLORpattern[HIGHJUMP_SPAWN_INDEX] == 2){
  individual_tetris_block_3d(HIGHJUMP_SPAWN_X-300,HIGHJUMP_SPAWN_Y,100,highjumpblock2[0],highjumpblock2[1],highjumpblock2[2],highjumpblock2[3]); 
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X-300,HIGHJUMP_SPAWN_Y-100,100,highjumpblock2[0],highjumpblock2[1],highjumpblock2[2],highjumpblock2[3]); 
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X-300,HIGHJUMP_SPAWN_Y-200,100,highjumpblock2[0],highjumpblock2[1],highjumpblock2[2],highjumpblock2[3]); 
}
if (HIGHJUMP_SPAWNrate[HIGHJUMP_SPAWN_INDEX] == 3 && HIGHJUMP_COLORpattern[HIGHJUMP_SPAWN_INDEX] == 3){
  individual_tetris_block_3d(HIGHJUMP_SPAWN_X-300,HIGHJUMP_SPAWN_Y,100,highjumpblock3[0],highjumpblock3[1],highjumpblock3[2],highjumpblock3[3]); 
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X-300,HIGHJUMP_SPAWN_Y-100,100,highjumpblock3[0],highjumpblock3[1],highjumpblock3[2],highjumpblock3[3]); 
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X-300,HIGHJUMP_SPAWN_Y-200,100,highjumpblock3[0],highjumpblock3[1],highjumpblock3[2],highjumpblock3[3]); 
}
if (HIGHJUMP_SPAWNrate[HIGHJUMP_SPAWN_INDEX] == 3 && HIGHJUMP_COLORpattern[HIGHJUMP_SPAWN_INDEX] == 4){
  individual_tetris_block_3d(HIGHJUMP_SPAWN_X-300,HIGHJUMP_SPAWN_Y,100,highjumpblock4[0],highjumpblock4[1],highjumpblock4[2],highjumpblock4[3]); 
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X-300,HIGHJUMP_SPAWN_Y-100,100,highjumpblock4[0],highjumpblock4[1],highjumpblock4[2],highjumpblock4[3]); 
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X-300,HIGHJUMP_SPAWN_Y-200,100,highjumpblock4[0],highjumpblock4[1],highjumpblock4[2],highjumpblock4[3]); 
}
if (HIGHJUMP_OBSTACLE_X >= 0){
 HIGHJUMP_OBSTACLE_X -= 10; 
}
if (HIGHJUMP_OBSTACLE_X < 0){
 HIGHJUMP_OBSTACLE_X = 1200; 
}

if (HIGHJUMP_SCENE_X >0){
    for (int x = 0; x<=HIGHJUMP_SCENE_X; x+= 100){
      noStroke();
     fill(#1CDBFF);
    rect(x,300,100,600);
   }
   for (int x = 0; x<=HIGHJUMP_SCENE_X; x+= 100){
     noStroke();
     fill(#00DB26);
    rect(x,700,100,200);
   }
}
//JUST A REMINDER: there is a summary of what is happening in this code at the top
if (HIGHJUMP_SCENE_X > 1000){
stroke(255,0,0);
strokeWeight(20);
line(HIGHJUMP_OBSTACLE_X,600,HIGHJUMP_OBSTACLE_X,400);
}
noStroke();
//so this is the part where the character turns from a ball to a human
//and starts jumping over highjump obstacles
if (HIGHJUMP_SCENE_X > 500){
  if (HIGHJUMP_ANIMATION == 1){
   HIGHJUMPCHARACTER1(600,Y_AXIS_POSITION-200);
  }
}
       HIGHJUMP_SCENE_X += 10;
  transition_bar_normal_world(HIGHJUMP_SCENE_X);
  //if the same process has been done for a certain number of times
if (HIGHJUMP_SPAWN_INDEX == 8){
  SECOND_LEVEL_COUNT = 8;//go to next scene
}
}

//this is basically the same thing done over and over again
void HUNDREDM_scene_transition(){
  //it is going to do the same thing as scene 1
  //but then the border is going to start to close in 
  //and what goes behind the border is going to be turned into normal world objects
  String [] meter_signs = {"0M","25M","50M","75M","100M","120M","0M","25M","50M","75M","100M","120M"};
background(#39CCFF);
      tetris_fall(1);
      start_lights(STARTLIGHT_X,STARTLIGHT_Y);//the startlight parts have been removed
      //so this part is not going to be shown
      //the variable already has a bigger value so this part does not execute
      individual_tetris_block_3d(STARTLIGHT_X,300,100,#0C9B4D,#18C643,#0EE045,#33F043); 
     STARTLIGHT_X -= 10;
      HUNDRED_METER_END_COUNT -= 10;
      for (int x = 50; x < 3600; x+=190){
       tetris_block_style_2(x+HUNDRED_METER_END_COUNT,675,#0C9B4D,#18C643,#0EE045,#33F043);
     }
    HUNDRED_METER_RED_SPEED -= 1.5;
    HUNDRED_METER_BLUE_SPEED -= 1;
    HUNDRED_METER_YELLOW_SPEED -= 1.4;
    HUNDRED_METER_PURPLE_SPEED -= 0.3;
    if (HUNDRED_METER_GREEN_SPEED > 0){
     HUNDRED_METER_GREEN_SPEED -= 0.4; 
    }
        for (int i = 1200; i < 6000; i+=1300){
          rectMode(CENTER);
          noStroke();
          fill(#39CCFF);
          rect(0,500,150,250);
    }
    stroke(0);
    strokeWeight(2);
    fill(#9503FF);
    ellipse(280+HUNDRED_METER_PURPLE_SPEED,600,50,50);
     fill(#FF0303);
     ellipse(435+HUNDRED_METER_RED_SPEED,600,50,50);
     fill(#FFE603);
     ellipse(528+HUNDRED_METER_YELLOW_SPEED,600,50,50);
     fill(#00D328);
     ellipse(630+HUNDRED_METER_GREEN_SPEED,600,50,50);
     fill(#0383FF);
     ellipse(351+HUNDRED_METER_BLUE_SPEED,600,50,50);
     
   for (int x = 0; x<=HUNDRED_METER_SCENE_X; x+= 100){
      noStroke();
     fill(#1CDBFF);
    rect(x,300,100,600);
   }
   for (int x = 0; x<=HUNDRED_METER_SCENE_X; x+= 100){
     noStroke();
     fill(#00D628);
    rect(x,700,100,200);
   }
       stroke(0);
    strokeWeight(2);
    fill(#9503FF);
    ellipse(280+HUNDRED_METER_PURPLE_SPEED,600,50,50);
     fill(#FF0303);
     ellipse(435+HUNDRED_METER_RED_SPEED,600,50,50);
     fill(#FFE603);
     ellipse(528+HUNDRED_METER_YELLOW_SPEED,600,50,50);
     fill(#00D328);
     ellipse(630+HUNDRED_METER_GREEN_SPEED,600,50,50);
     fill(#0383FF);
     ellipse(351+HUNDRED_METER_BLUE_SPEED,600,50,50);
       HUNDRED_METER_SCENE_X += 10;
   //this is the part where the border starts to close in from left to right   
  transition_bar_normal_world(HUNDRED_METER_SCENE_X);
  if (528+HUNDRED_METER_YELLOW_SPEED < 0){
    if (RAINBOW_MOVE > 0){
    RAINBOW_MOVE -= 20;
    }
    //this time, when the yellow ball hits the end of the screen
    //a rainbow showing the house colors is going to come up
    //and cover the screen
    rainbow(0,RAINBOW_MOVE,240,1200);
    if (RAINBOW_MOVE <= 0){
      noStroke();
      ellipseMode(CENTER);
      //the green ball is going to become larger and larger
      //until it covers the entire screen
      fill(#09C400);
     ellipse(600,400,RAINBOW_SIZE,RAINBOW_SIZE);
     if (RAINBOW_SIZE <= 3000){
     RAINBOW_SIZE += 50;
     }
     //and that is how we go to next scene
     if (RAINBOW_SIZE > 3000){
      SECOND_LEVEL_COUNT = 9; 
     }
    }
  }
}
//these are the functions used to make the ground_rectangle 
void YOUTUBE_scene_sky_rect(int x){
  fill(#00AAFC);
  rectMode(CORNER);
  rect(x-800,100,x,300);
}
//and sky rectangle
void YOUTUBE_scene_ground_rect(int x){
  fill(#00D316);
  rectMode(CORNER);
  rect(x-800,455,x+200,100);
}
//border used for transition
void transition_bar_normal_world(int x){
  noStroke();
  rectMode(CORNER);
  fill(255);
 rect(x-50,0,400,800,30);
}
