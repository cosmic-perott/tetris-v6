
void setup(){
  smooth();//makes graphics smooth compared to not having this function here
  size(1200,800);//screen size
  background(0);//black background
  textSize(50);//text size 50
  fill(255);//white color
  //it takes time for the sound file to load
  //so I used this as an opportunity to say this
  text("You may ask what any of this has to do with sportsday",50,300);//opening sentence
  textSize(50);
  text("but remember that sports day is",300,350);
  //this part is basically what I wanted to say
  fill(255,255,0);
  //yellow color for emphasis
  textSize(100);//bigger text for emphasis
  text("JUST A GAME",350,500);//wow, that is a great sentence
  noStroke();//no outline
  delay(40);
}

void draw(){
  if (SOUND_START == 0){//if the sound_start is 0
  background_music = new SoundFile(this, "Tetris_Final_Audio.mp3");//load this sound
  background_music.play();//play this sound
  SOUND_START += 1;//change to 1
  //this prevents the music from looping and crashing
  }
  
  else if (LEVEL_COUNT < -3){//if level_count = -4 (the start)
    //if the black_screen_covers the screen
    rectMode(CENTER);
    fill(0);
    rect(600,BLACK_SCREEN_Y,1400,1000);
    if (BLACK_SCREEN_Y <= 400){
       BLACK_SCREEN_Y += 10;
    }
    if (BLACK_SCREEN_Y >= 400){
     LEVEL_COUNT += 1; //next scene
    }
  }
else if (LEVEL_COUNT < -2){
  background(0);
  //light effect for letters
  //using alpha values
  textAlign(CENTER,CENTER);
    ALPHA_VALUE += ALPHA_CHANGE;
    textSize(50);
    fill(255,255,255,ALPHA_VALUE);
    text("N",500,200);//fade in this letter
    fill(255,255,255,ALPHA_VALUE-200);
    text("L",530,200);//fade this certain time later
    fill(255,255,255,ALPHA_VALUE-800);
    text("C",560,200);//fade this certain time later
    fill(255,255,255,ALPHA_VALUE-100);
    text("S",590,200);
    textSize(100);//fade this certain time later
    fill(255,255,255,ALPHA_VALUE-300);
    text("S",310,280);//fade this certain time later
    fill(255,255,255,ALPHA_VALUE-1200);
    text("P",360,280);//fade this certain time later
    fill(255,255,255,ALPHA_VALUE-900);
    text("O",415,280);//fade this certain time later
    fill(255,255,255,ALPHA_VALUE-1000);
    text("R",470,280);//fade this certain time later
    fill(255,255,255,ALPHA_VALUE-400);
    text("T",520,280);//fade this certain time later
    fill(255,255,255,ALPHA_VALUE-700);
    text("S",570,280);//fade this certain time later
    fill(255,255,255,ALPHA_VALUE-1100);
    text("D",670,280);//fade this certain time later
    fill(255,255,255,ALPHA_VALUE-600);
    text("A",720,280);//fade this certain time later
    fill(255,255,255,ALPHA_VALUE-500);
    text("Y",770,280);
    textSize(40);//fade this certain time later
    fill(255,255,255,ALPHA_VALUE-1600);
    text("A",430,370);//fade this certain time later
    fill(255,255,255,ALPHA_VALUE-1700);
    text("G",500,370);//fade this certain time later
    fill(255,255,255,ALPHA_VALUE-1400);
    text("A",550,370);//fade this certain time later
    fill(255,255,255,ALPHA_VALUE-1500);
    text("M",600,370);//fade this certain time later
    fill(255,255,255,ALPHA_VALUE-1300);
    text("E",650,370);//fade this certain time later
    fill(255,255,255,ALPHA_VALUE-1800);
    textSize(40);
    text("feat.      ",650,480);
    //fade this certain time later
    fill(255,0,0,ALPHA_VALUE-2400);
    text("T",680,480);
    //fade this certain time later
    fill(#FF9100,ALPHA_VALUE-1900);
    text("E",710,480);//fade this certain time later
    fill(#FFE600,ALPHA_VALUE-2000);
    text("T",740,480);//fade this certain time later
    fill(#26C60E,ALPHA_VALUE-2300);
    text("R",770,480);//fade this certain time later
    fill(#0080FC,ALPHA_VALUE-2100);
    text("I",800,480);//fade this certain time later
    fill(#A300FC,ALPHA_VALUE-2200);
    text("S",830,480);
    if (ALPHA_VALUE-2400 >= 255){
     LEVEL_COUNT  = -1;//go to next scene
    }
  }
  else if (LEVEL_COUNT < 0){
    fill(255);
    background(0);
    textAlign(CENTER,CENTER);
fill(255,255,255,1300);
//move the title and featuring and all that up and down and out of the screen
textSize(50);
text("N",500,200-HIDE_X);
text("L",530,200-HIDE_X);
text("C",560,200-HIDE_X);
text("S",590,200-HIDE_X);
textSize(100);
text("S",310,280-HIDE_X);
text("P",360,280-HIDE_X);
text("O",415,280-HIDE_X);
text("R",470,280-HIDE_X);
text("T",520,280-HIDE_X);
text("S",570,280-HIDE_X);
text("D",670,280-HIDE_X);
text("A",720,280-HIDE_X);
text("Y",770,280-HIDE_X);
textSize(40);
text("A",430,370-HIDE_X);
text("G",500,370-HIDE_X);
text("A",550,370-HIDE_X);
text("M",600,370-HIDE_X);
text("E",650,370-HIDE_X);

fill(255);
    textSize(40);
    text("feat.      ",650,480+HIDE_X);
    fill(255,0,0);
    text("T",680,480+HIDE_X);
    fill(#FF9100);
    text("E",710,480+HIDE_X);
    fill(#FFE600);
    text("T",740,480+HIDE_X);
    fill(#26C60E);
    text("R",770,480+HIDE_X);
    fill(#0080FC);
    text("I",800,480+HIDE_X);
    fill(#A300FC);
    text("S",830,480+HIDE_X);
   HIDE_X += 10;
   if (HIDE_X > 600){
    LEVEL_COUNT += 1; 
   }
  }
  else if (LEVEL_COUNT < 1){
    textAlign(CORNER,CENTER);
    ellipseMode(CENTER);
    rectMode(CENTER);
    
    //the main compartment of the archade machine
    fill(#3E3C3C);
    rect(600,400,700,800);
    
    //the screen of the arcade machine
    fill(#1D1F71);
    rect(600,280,600,500);
    
    //screen elements
    fill(#3B393B);
    rect(500,280,300,480,5);
    rect(775,200,200,300,5);
    fill(0);
    rect(500,280,280,460,5);
    rect(775,200,180,280,5);
    fill(150);
    textSize(100);
    text("NLCS",390,250);
    textSize(70);
    text("SPORTS",380,400);
    textSize(80);
    text("DAY",430,470);
    textSize(15);
    text("NEXT:",700,90);
    moving_tetris_block(780,160);
    fill(150);
    text("SCORE:",700,290);
    textSize(20);
    text("20230616",750,320);
    //the compartment where the control buttons are
    fill(#4B4848);
    quad(250, 580, 950, 580, 1000, 700, 200, 700);
    
    //the base of the archade machine
    fill(#343232);
    rect(600,800,800,200);
    
    //The direction control lever
    //the base
    fill(#FFE70D);
    ellipse(340,630,70,40);
    fill(#171717);
    ellipse(340,630,60,30);
    //the lever
    fill(#2C2C2B);
    rect(340,580,20,120);
    //the ball on top
    fill(#E005DD);
    ellipse(340,520,70,70);
    
    //The Four buttons
    arcade_buttons(740,615);
    arcade_buttons(880,615);
    arcade_buttons(810,650);
    arcade_buttons(810,580);
    
    tetris_start_block(370,MOVING_START_BLOCK);
    if (MOVING_START_BLOCK < 420){
      MOVING_START_BLOCK += 2; 
    }
    if (MOVING_START_BLOCK >= 420){
     LEVEL_COUNT += 1; 
    }
    
    tetris_start_background_stable();
    //start intro-screen
    fill(0);
    INTRO_SCREEN_Y_AXIS_SPEED += 7;
    rect(600,200-INTRO_SCREEN_Y_AXIS_SPEED,1200,400);
    rect(600,600+INTRO_SCREEN_Y_AXIS_SPEED,1200,400);
    if (INTRO_SCREEN_Y_AXIS_SPEED > 650){
      INTRO_SCREEN_Y_AXIS_SPEED = 600;
    }
    
  }
  
  else if (LEVEL_COUNT < 2){
//Setting the ellipse and rect modes to CENTER
ellipseMode(CENTER);
rectMode(CENTER);

//Filling the rectangle and ellipse shapes with a specific color
fill(#3B393B);
rect(500,280,300,480,5);
rect(775,200,200,300,5);

//Filling rectangles with the color black
fill(0);
rect(500,280,280,460,5);
rect(775,200,180,280,5);

//Setting the fill color to gray and writing text on the screen
fill(150);
textSize(100);
text("NLCS",390,250);
textSize(70);
text("SPORTS",380,400);
textSize(80);
text("DAY",430,470);
textSize(15);
text("NEXT:",700,90);
text("SCORE:",700,290);
textSize(20);
text("20230616",750,320);

//Drawing the Tetris game background and Tetris blocks
tetris_background_stable();
moving_tetris_block(MOVING_TETRIS_BLOCK_X,MOVING_TETRIS_BLOCK_Y);

//Checking the position of the Tetris block and adjusting its position accordingly
if (MOVING_TETRIS_BLOCK_Y <= 100){
MOVING_TETRIS_BLOCK_Y += 2;
}
if (MOVING_TETRIS_BLOCK_Y > 100 && MOVING_TETRIS_BLOCK_X <= 626){
MOVING_TETRIS_BLOCK_Y += 2;
MOVING_TETRIS_BLOCK_X += 3;
}
if (MOVING_TETRIS_BLOCK_X > 626){
MOVING_TETRIS_BLOCK_Y += 2;
if (MOVING_TETRIS_BLOCK_Y >= 505){
delay(150);
LEVEL_COUNT += 1;
}
}

//Filling a rectangle with a dark gray color
fill(#3E3C3C);
rect(600,5,700,50);

//Creating the screen of the arcade machine with a blue color
fill(#1D1F71);
rect(600,35,600,10);

//Drawing a Tetris end block at a specific position
tetris_end_block(750,130);
  }
  else if (LEVEL_COUNT < 3){
    ellipseMode(CENTER);
    rectMode(CENTER);
    fill(#3B393B);
    rect(500,280,300,480,5);
    rect(775,200,200,300,5);
    fill(0);
    rect(500,280,280,460,5);
    rect(775,200,180,280,5);
    fill(150);
    textSize(100);
    text("NLCS",390,250);
    textSize(70);
    text("SPORTS",380,400);
    textSize(80);
    text("DAY",430,470);
    textSize(15);
    text("NEXT:",700,90);
    text("SCORE:",700,290);
    textSize(20);
    text("20230616",750,320);
   tetris_background_stable_change();
   MOVING_BLOCK_TEMP += 2;
   tetris_end_block(420,MOVING_BLOCK_TEMP);
   fill(#3E3C3C);
    rect(600,5,700,50);
    
    //the screen of the arcade machine
    fill(#1D1F71);
    rect(600,35,600,10);
   TEMP_TETRIS_TIMER += 1;
   if (TEMP_TETRIS_TIMER > 100){
     LEVEL_COUNT += 1;
   }
   
  }
  else if (LEVEL_COUNT < 4){
    TRANSITION_BALL_SIZE += 20; //to create a smoother and more realistic transition
    //by adding 10 to the current value every time it is going to look like the size of the ball is getting bigger and accelerating as well
    //which creates a smoother effect
    MOVING_BLOCK_TEMP += 2;
    tetris_end_block(420,MOVING_BLOCK_TEMP);
    fill(0);
    ellipse(600,400,TRANSITION_BALL_SIZE,TRANSITION_BALL_SIZE);
    if (TRANSITION_BALL_SIZE > 1700){
     LEVEL_COUNT += 1; 
    }
  }
  else if (LEVEL_COUNT < 5){
    ellipseMode(CENTER);
    if (HOUSE_BALL_APPEAR_COUNT < -1){
             if (TETRIS_SKY_SETUP < 1300){
       TETRIS_SKY_SETUP += 10;
      }
      if (TETRIS_SKY_SETUP >= 1300){
       HOUSE_BALL_APPEAR_COUNT += 1; 
      }
     for (int x = -200; x< 1200; x += 190){
       rectMode(CORNER);
       fill(#39CCFF);
       noStroke();
       rect(0,0,TETRIS_SKY_SETUP-50,800);
       rectMode(CENTER);
      tetris_block_style_2(TETRIS_SKY_SETUP,x,#0662C1,#037DFC,#3697FC,#67B2FF);  
      tetris_block_style_2(TETRIS_SKY_SETUP,x+190,#0662C1,#037DFC,#3697FC,#67B2FF);  
      tetris_block_style_2(TETRIS_SKY_SETUP,x+380,#0662C1,#037DFC,#3697FC,#67B2FF);  
      tetris_block_style_2(TETRIS_SKY_SETUP,x+570,#0662C1,#037DFC,#3697FC,#67B2FF);  
     }
    }
    else if (HOUSE_BALL_APPEAR_COUNT < 0){
      background(#39CCFF);
      if (TETRIS_GROUND_SETUP > 675){
            TETRIS_GROUND_SETUP -= 15;  
      }
      if (TETRIS_GROUND_SETUP <= 675){
       TETRIS_GROUND_SETUP = 675;
       HOUSE_BALL_APPEAR_COUNT += 1;
     }
      for (int x =50; x < 1200; x+=190){
     tetris_block_style_2(x,TETRIS_GROUND_SETUP,#0C9B4D,#18C643,#0EE045,#33F043); 
      }
    }
    else if (HOUSE_BALL_APPEAR_COUNT < 1){
      background(#39CCFF);
          for (int x =50; x < 1200; x+=190){
     tetris_block_style_2(x,675,#0C9B4D,#18C643,#0EE045,#33F043);  
    }
     fill(#FF0303);
     Sarah_ball(RED_BALL_APPEAR,550);
     if (RED_BALL_FRICTION > 0){
       RED_BALL_FRICTION -= 1;
     }
     if (RED_BALL_FRICTION == 0){
      HOUSE_BALL_APPEAR_COUNT += 1;
     }
      RED_BALL_APPEAR += RED_BALL_FRICTION; 
     }
     else if (HOUSE_BALL_APPEAR_COUNT < 2){
       background(#39CCFF);
           for (int x =50; x < 1200; x+=190){
     tetris_block_style_2(x,675,#0C9B4D,#18C643,#0EE045,#33F043);  
    }
       fill(#FFE603);
     Jeoji_ball(YELLOW_BALL_APPEAR,550);
     fill(#FF0303);
      Sarah_ball(435,550);
     if (YELLOW_FRICTION > 0){
       YELLOW_FRICTION -= 1;
     }
     if (YELLOW_FRICTION == 0){
      HOUSE_BALL_APPEAR_COUNT += 1;
     }
      YELLOW_BALL_APPEAR += YELLOW_FRICTION; 
     }
     else if (HOUSE_BALL_APPEAR_COUNT < 3){
       background(#39CCFF);
           for (int x =50; x < 1200; x+=190){
     tetris_block_style_2(x,675,#0C9B4D,#18C643,#0EE045,#33F043);  
    }
       fill(#00D328);
     Mulchat_ball(GREEN_BALL_APPEAR,550);
     fill(#FF0303);
     Sarah_ball(435,550);
     fill(#FFE603);
     Jeoji_ball(528,550);
     if (GREEN_FRICTION > 0){
      GREEN_FRICTION -= 1;
     }
     if (GREEN_FRICTION == 0){
      HOUSE_BALL_APPEAR_COUNT += 1; 
     }
      GREEN_BALL_APPEAR += GREEN_FRICTION; 
     }
     else if (HOUSE_BALL_APPEAR_COUNT < 4){
       background(#39CCFF);
           for (int x =50; x < 1200; x+=190){
     tetris_block_style_2(x,675,#0C9B4D,#18C643,#0EE045,#33F043);  
    }
       fill(#0383FF);
     Geomun_ball(BLUE_BALL_APPEAR,550);
     fill(#FF0303);
     Sarah_ball(435,550);
     fill(#FFE603);
     Jeoji_ball(528,550);
     fill(#00D328);
     Mulchat_ball(630,550);
     if (BLUE_FRICTION > 0){
      BLUE_FRICTION -= 1;
     }
     if (BLUE_FRICTION == 0){
      HOUSE_BALL_APPEAR_COUNT += 1;
     }
      BLUE_BALL_APPEAR += BLUE_FRICTION; 
     }
     else if (HOUSE_BALL_APPEAR_COUNT < 5){
       background(#39CCFF);
           for (int x =50; x < 1200; x+=190){
     tetris_block_style_2(x,675,#0C9B4D,#18C643,#0EE045,#33F043);  
    }
       fill(#9503FF);
     Noro_ball(PURPLE_BALL_APPEAR,550);
    fill(#FF0303);
     Sarah_ball(435,550);
     fill(#FFE603);
     Jeoji_ball(528,550);
     fill(#00D328);
     Mulchat_ball(630,550);
     fill(#0383FF);
     Geomun_ball(351,550);
     if (PURPLE_FRICTION > 0){
      PURPLE_FRICTION -= 1;
     }
     if (PURPLE_FRICTION == 0){
       SECOND_LEVEL_COUNT += 1;
       background(#39CCFF);
       TETRIS_FALL_START = 1;
       LEVEL_COUNT += 1;
     }
      PURPLE_BALL_APPEAR += PURPLE_FRICTION; 
     }
}
  if (SECOND_LEVEL_COUNT == 1){
    rectMode(CENTER);
     fill(#39CCFF);
    noStroke();
    rect(600,595,1200,60);
         tetris_fall(1);
    stroke(0);
    strokeWeight(2);
           fill(#9503FF);
     Noro_ball(PURPLE_BALL_APPEAR,550);
     fill(#FF0303);
     Sarah_ball(435,550);
     fill(#FFE603);
     Jeoji_ball(528,550);
     fill(#00D328);
     Mulchat_ball(630,550);
     fill(#0383FF);
     Geomun_ball(351,550);
         rectMode(CENTER);
    for (int x =50; x < 2400; x+=190){
     tetris_block_style_2(x,675,#0C9B4D,#18C643,#0EE045,#33F043);
    }
    start_lights(STARTLIGHT_X,STARTLIGHT_Y);
    STARTLIGHT_Y += 10;
    if (STARTLIGHT_Y >= 300){
      STARTLIGHT_Y = 300;
    }
    STARTLIGHT_COUNT -= 1;
    if (STARTLIGHT_COUNT == 0){
      STARTLIGHT_COLOR += 1;
      STARTLIGHT_COUNT = 80;
    }
    if (STARTLIGHT_COLOR == 1){
      individual_tetris_block_3d(STARTLIGHT_X,100,100,#B70606,#FF0000,#FF2424,#FF5D5D);
    }
    if (STARTLIGHT_COLOR == 2){
     individual_tetris_block_3d(STARTLIGHT_X,200,100,#C4B50A,#FFEB03,#FCED38,#FFF25A); 
    }
    if (STARTLIGHT_COLOR == 3){
     individual_tetris_block_3d(STARTLIGHT_X,300,100,#0C9B4D,#18C643,#0EE045,#33F043); 
     STARTLIGHT_X -= 10;
     HUNDRED_METER_START = 1;
    }
    String [] meter_signs = {"0M","25M","50M","75M","100M","120M"};
    if (HUNDRED_METER_START == 1){
      background(#39CCFF);
      tetris_fall(1);
      start_lights(STARTLIGHT_X,STARTLIGHT_Y);
      individual_tetris_block_3d(STARTLIGHT_X,300,100,#0C9B4D,#18C643,#0EE045,#33F043); 
     STARTLIGHT_X -= 10;
      HUNDRED_METER_GROUND_MOVE -= 10;
      HUNDREDM_CROWD_MOVE -= 10;
      if (HUNDREDM_CROWD_MOVE < -1200){
        HUNDREDM_CROWD_MOVE = 1370;
        }
      if (HUNDRED_METER_INDEX <= 4){
        if (HUNDRED_METER_GROUND_MOVE == -1200){
         HUNDRED_METER_GROUND_MOVE = 30; 
         HUNDRED_METER_INDEX += 1;
      }
      if (HUNDRED_METER_INDEX == 5){
         TRANSITION_START += 1;
      }
      }
            for (int x = 50; x < 2400; x+=190){
       tetris_block_style_2(x+HUNDRED_METER_GROUND_MOVE,675,#0C9B4D,#18C643,#0EE045,#33F043);
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
     post_sign(i+HUNDRED_METER_GROUND_MOVE,574, meter_signs[HUNDRED_METER_INDEX]);
    }
    stroke(0);
    strokeWeight(2);
    fill(#9503FF);
    Noro_ball(280+HUNDRED_METER_PURPLE_SPEED,550);
     fill(#FF0303);
     Sarah_ball(435+HUNDRED_METER_RED_SPEED,550);
     fill(#FFE603);
     Jeoji_ball(528+HUNDRED_METER_YELLOW_SPEED,550);
     fill(#00D328);
     Mulchat_ball(630+HUNDRED_METER_GREEN_SPEED,550);
     fill(#0383FF);
     Geomun_ball(351+HUNDRED_METER_BLUE_SPEED,550);
    }
  }
  if (TRANSITION_START == 1){
    tetris_fall(1);
    stroke(0);
    strokeWeight(2);
    Noro_ball(280+HUNDRED_METER_PURPLE_SPEED,550);
    fill(#00D328);
     Mulchat_ball(630,550);
    if (TRANSITION_BAR1_X_AXIS > -340){
    TRANSITION_BAR1_X_AXIS -= 10;
    }
    rectMode(CORNER);
     fill(#090043);
     rect(TRANSITION_BAR1_X_AXIS+145,0,1600,800);
     if (TRANSITION_BAR1_X_AXIS < 630){
    fill(#FFEA00);
    Jeoji_ball(630,550);
   }
   TRANSITION_HIGHJUMP_MOVE -= 10;
   for (int y = 3600; y>TRANSITION_BAR1_X_AXIS; y-= 190){
    rectMode(CENTER);
    tetris_block_style_2(y-100+TRANSITION_HIGHJUMP_MOVE,675,#0004A5,#000000,#274CFF,#0F75FF);
   }
   for (int y = TRANSITION_BAR1_X_AXIS; y>-200; y-= 190){
    rectMode(CENTER);
    tetris_block_style_2(y-100,675,#0C9B4D,#18C643,#0EE045,#33F043);
   }
   for (int x =0; x < 800; x+=190){
     rectMode(CENTER);
     tetris_block_style_2(TRANSITION_BAR1_X_AXIS,x,#0004A5,#000000,#274CFF,#0F75FF);
   }
   if (TRANSITION_BAR1_X_AXIS <= -340){
   SECOND_LEVEL_COUNT += 1;
   TRANSITION_START = 0; 
   }
}
if (SECOND_LEVEL_COUNT == 2){
  background(#090043);
 tetris_fall(2);
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
   color [] highjumpblock1 = {#AF7500,#FFAA00,#FFBC36,#FFCF6F};
   color [] highjumpblock2 = {#00BCAB,#00FFE8,#36FCEA,#6AFFF1};
   color [] highjumpblock3 = {#BC0000,#FF0505,#FF3636,#FF6464};
   color [] highjumpblock4 = {#B44BA6,#FF64EB,#FF89EF,#FFA7F4};
   int [] HIGHJUMP_COLORpattern = {3,2,4,1,1,2};
   int [] HIGHJUMP_SPAWNrate = {1,3,2,2,3,1};
if (HIGHJUMP_SPAWN_Y <= 570){
HIGHJUMP_SPAWN_Y += 22.5;
}
if (HIGHJUMP_SPAWN_Y >= 570){
  HIGHJUMP_SPAWN_X -= 10;
}
if (HIGHJUMP_SPAWN_X < 0){
 HIGHJUMP_SPAWN_X = 1100;
 HIGHJUMP_SPAWN_Y = 0;
 if (HIGHJUMP_SPAWN_INDEX < 5){
 HIGHJUMP_SPAWN_INDEX += 1;
 }
}
if (PAC_MAN_X_AXIS < 1300){
 PAC_MAN_X_AXIS += PAC_MAN_VELOCITY; 
}
pac_man(PAC_MAN_X_AXIS,600);
pac_man_ghosts(PAC_MAN_X_AXIS+100,600);
fill(#FFEA00);
Jeoji_ball(630,Y_AXIS_POSITION-50);
  // apply GRAVITY to the character
  Y_AXIS_VELOCITY += GRAVITY*0.3;
  
  // update the position of the character based on its velocity
  Y_AXIS_POSITION += Y_AXIS_VELOCITY;
  
  // check if the character has hit the ground
  if (Y_AXIS_POSITION >= 590) {
    Y_AXIS_VELOCITY = -10; // bounce the character back up with a velocity of -10 pixels/frame
  }
  if (HIGHJUMP_SPAWNrate[HIGHJUMP_SPAWN_INDEX] ==1 && HIGHJUMP_COLORpattern[HIGHJUMP_SPAWN_INDEX] == 1){
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X,HIGHJUMP_SPAWN_Y,100,highjumpblock1[0],highjumpblock1[1],highjumpblock1[2],highjumpblock1[3]); 
}
if (HIGHJUMP_SPAWNrate[HIGHJUMP_SPAWN_INDEX] ==1 && HIGHJUMP_COLORpattern[HIGHJUMP_SPAWN_INDEX] == 2){
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X,HIGHJUMP_SPAWN_Y,100,highjumpblock2[0],highjumpblock2[1],highjumpblock2[2],highjumpblock2[3]); 
}
if (HIGHJUMP_SPAWNrate[HIGHJUMP_SPAWN_INDEX] ==1 && HIGHJUMP_COLORpattern[HIGHJUMP_SPAWN_INDEX] == 3){
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X,HIGHJUMP_SPAWN_Y,100,highjumpblock3[0],highjumpblock3[1],highjumpblock3[2],highjumpblock3[3]); 
}
if (HIGHJUMP_SPAWNrate[HIGHJUMP_SPAWN_INDEX] ==1 && HIGHJUMP_COLORpattern[HIGHJUMP_SPAWN_INDEX] == 4){
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X,HIGHJUMP_SPAWN_Y,100,highjumpblock4[0],highjumpblock4[1],highjumpblock4[2],highjumpblock4[3]); 
}
if (HIGHJUMP_SPAWNrate[HIGHJUMP_SPAWN_INDEX] == 2 && HIGHJUMP_COLORpattern[HIGHJUMP_SPAWN_INDEX] == 1){
  individual_tetris_block_3d(HIGHJUMP_SPAWN_X,HIGHJUMP_SPAWN_Y,100,highjumpblock1[0],highjumpblock1[1],highjumpblock1[2],highjumpblock1[3]); 
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X,HIGHJUMP_SPAWN_Y-100,100,highjumpblock1[0],highjumpblock1[1],highjumpblock1[2],highjumpblock1[3]);
}
if (HIGHJUMP_SPAWNrate[HIGHJUMP_SPAWN_INDEX] == 2 && HIGHJUMP_COLORpattern[HIGHJUMP_SPAWN_INDEX] == 2){
  individual_tetris_block_3d(HIGHJUMP_SPAWN_X,HIGHJUMP_SPAWN_Y,100,highjumpblock2[0],highjumpblock2[1],highjumpblock2[2],highjumpblock2[3]); 
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X,HIGHJUMP_SPAWN_Y-100,100,highjumpblock2[0],highjumpblock2[1],highjumpblock2[2],highjumpblock2[3]); 
}
if (HIGHJUMP_SPAWNrate[HIGHJUMP_SPAWN_INDEX] == 2 && HIGHJUMP_COLORpattern[HIGHJUMP_SPAWN_INDEX] == 3){
  individual_tetris_block_3d(HIGHJUMP_SPAWN_X,HIGHJUMP_SPAWN_Y,100,highjumpblock3[0],highjumpblock3[1],highjumpblock3[2],highjumpblock3[3]); 
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X,HIGHJUMP_SPAWN_Y-100,100,highjumpblock3[0],highjumpblock3[1],highjumpblock3[2],highjumpblock3[3]); 
}
if (HIGHJUMP_SPAWNrate[HIGHJUMP_SPAWN_INDEX] == 2 && HIGHJUMP_COLORpattern[HIGHJUMP_SPAWN_INDEX] == 4){
  individual_tetris_block_3d(HIGHJUMP_SPAWN_X,HIGHJUMP_SPAWN_Y,100,highjumpblock4[0],highjumpblock4[1],highjumpblock4[2],highjumpblock4[3]); 
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X,HIGHJUMP_SPAWN_Y-100,100,highjumpblock4[0],highjumpblock4[1],highjumpblock4[2],highjumpblock4[3]); 
}
if (HIGHJUMP_SPAWNrate[HIGHJUMP_SPAWN_INDEX] == 3 && HIGHJUMP_COLORpattern[HIGHJUMP_SPAWN_INDEX] == 1){
  individual_tetris_block_3d(HIGHJUMP_SPAWN_X,HIGHJUMP_SPAWN_Y,100,highjumpblock1[0],highjumpblock1[1],highjumpblock1[2],highjumpblock1[3]);  
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X,HIGHJUMP_SPAWN_Y-100,100,highjumpblock1[0],highjumpblock1[1],highjumpblock1[2],highjumpblock1[3]); 
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X,HIGHJUMP_SPAWN_Y-200,100,highjumpblock1[0],highjumpblock1[1],highjumpblock1[2],highjumpblock1[3]); 
}
if (HIGHJUMP_SPAWNrate[HIGHJUMP_SPAWN_INDEX] == 3 && HIGHJUMP_COLORpattern[HIGHJUMP_SPAWN_INDEX] == 2){
  individual_tetris_block_3d(HIGHJUMP_SPAWN_X,HIGHJUMP_SPAWN_Y,100,highjumpblock2[0],highjumpblock2[1],highjumpblock2[2],highjumpblock2[3]); 
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X,HIGHJUMP_SPAWN_Y-100,100,highjumpblock2[0],highjumpblock2[1],highjumpblock2[2],highjumpblock2[3]); 
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X,HIGHJUMP_SPAWN_Y-200,100,highjumpblock2[0],highjumpblock2[1],highjumpblock2[2],highjumpblock2[3]); 
}
if (HIGHJUMP_SPAWNrate[HIGHJUMP_SPAWN_INDEX] == 3 && HIGHJUMP_COLORpattern[HIGHJUMP_SPAWN_INDEX] == 3){
  individual_tetris_block_3d(HIGHJUMP_SPAWN_X,HIGHJUMP_SPAWN_Y,100,highjumpblock3[0],highjumpblock3[1],highjumpblock3[2],highjumpblock3[3]); 
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X,HIGHJUMP_SPAWN_Y-100,100,highjumpblock3[0],highjumpblock3[1],highjumpblock3[2],highjumpblock3[3]); 
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X,HIGHJUMP_SPAWN_Y-200,100,highjumpblock3[0],highjumpblock3[1],highjumpblock3[2],highjumpblock3[3]); 
}
if (HIGHJUMP_SPAWNrate[HIGHJUMP_SPAWN_INDEX] == 3 && HIGHJUMP_COLORpattern[HIGHJUMP_SPAWN_INDEX] == 4){
  individual_tetris_block_3d(HIGHJUMP_SPAWN_X,HIGHJUMP_SPAWN_Y,100,highjumpblock4[0],highjumpblock4[1],highjumpblock4[2],highjumpblock4[3]); 
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X,HIGHJUMP_SPAWN_Y-100,100,highjumpblock4[0],highjumpblock4[1],highjumpblock4[2],highjumpblock4[3]); 
 individual_tetris_block_3d(HIGHJUMP_SPAWN_X,HIGHJUMP_SPAWN_Y-200,100,highjumpblock4[0],highjumpblock4[1],highjumpblock4[2],highjumpblock4[3]); 
}
if (HIGHJUMP_SPAWN_INDEX == 5){
  TRANSITION_START = 100;
  SECOND_LEVEL_COUNT = 10000;
}
}
if (TRANSITION_START == 100){
  background(#39CCFF);
  tetris_fall(2);
    rectMode(CORNER);
     fill(#39CCFF);
     rect(TRANSITION_BAR2_X,0,1600,800);
   TRANSITION_LONGJUMP_MOVE -= 10;

   for (int y = TRANSITION_BAR2_X; y>-200; y-=190){
     rectMode(CENTER);
    tetris_block_style_2(y-100,675,#0004A5,#000000,#274CFF,#0F75FF);
   }
   if (TRANSITION_BAR2_X > 630){
     Jeoji_ball(630,Y_AXIS_POSITION-50);
   }
   if (TRANSITION_BAR2_X <= 630){
     Geomun_ball(630,Y_AXIS_POSITION-50);
   }
if (Y_AXIS_POSITION < 600){

  // apply GRAVITY to the character
  Y_AXIS_VELOCITY += GRAVITY*0.3;
  
  // update the position of the character based on its velocity
  Y_AXIS_POSITION += Y_AXIS_VELOCITY;
}

   for (int x =0; x < 800; x+=190){
     rectMode(CENTER);
     tetris_block_style_2(TRANSITION_BAR2_X,x,#500608,#AA181D,#E51017,#E34E53);
   }
   if (TRANSITION_BAR2_X <= -340){
   SECOND_LEVEL_COUNT = 3;
   TRANSITION_START = 0; 
   }
           if (LONGJUMP_FLOATING_ISLAND_AXIS_X > -300){ 
    LONGJUMP_FLOATING_ISLAND_AXIS_X -= 14;
    }
    if (LONGJUMP_FLOATING_ISLAND_AXIS_X <= -300){
     LONGJUMP_FLOATING_ISLAND_AXIS_X = 1300; 
    }
  floating_land(LONGJUMP_FLOATING_ISLAND_AXIS_X,765);
      if (TRANSITION_BAR2_X > -340){
    TRANSITION_BAR2_X -= 10;
    }
}
if (SECOND_LEVEL_COUNT == 3){
  background(0);
  tetris_fall(1);
  crowd(450);
    fill(#009FFF);
  Geomun_ball(630,Y_AXIS_POSITION-50);
  // apply GRAVITY to the character
  Y_AXIS_VELOCITY += GRAVITY*0.1;
  
  // update the position of the character based on its velocity
  Y_AXIS_POSITION += Y_AXIS_VELOCITY;
  
  // check if the character has hit the ground
  if (Y_AXIS_POSITION >= 600) {
    Y_AXIS_VELOCITY = -3; // bounce the character back up with a velocity of -10 pixels/frame
  }
  LONGJUMP_MOVE -= 10;
  if (LONGJUMP_MOVE == -1300){
    LONGJUMP_MOVE = -180;
  }
    if (LONGJUMP_FLOATING_ISLAND_AXIS_X > -300){ 
    LONGJUMP_FLOATING_ISLAND_AXIS_X -= 12.6;
    }
    if (LONGJUMP_FLOATING_ISLAND_AXIS_X <= -300){
     LONGJUMP_FLOATING_ISLAND_AXIS_X = 1300; 
     LONGJUMP_COUNT += 1;
    }
  if (LONGJUMP_COUNT == 5){
   TRANSITION_START = 200; 
  }
  floating_land(LONGJUMP_FLOATING_ISLAND_AXIS_X,765);
}
if (TRANSITION_START == 200){
  SECOND_LEVEL_COUNT = 11114;
  background(#39CCFF);
  tetris_fall(1);
  crowd(450);
  fill(#009FFF);
  Geomun_ball(630,Y_AXIS_POSITION-50);
  // apply GRAVITY to the character
  Y_AXIS_VELOCITY += GRAVITY*0.1;
  
  // update the position of the character based on its velocity
  Y_AXIS_POSITION += Y_AXIS_VELOCITY;
  
  // check if the character has hit the ground
  if (Y_AXIS_POSITION >= 600) {
    Y_AXIS_VELOCITY = -3; // bounce the character back up with a velocity of -10 pixels/frame
  }
    rectMode(CORNER);
     fill(#39CCFF);
     rect(TRANSITION_BAR3_X,0,1600,800);
   TRANSITION_LONGJUMP_MOVE -= 10;

   if (TRANSITION_BAR3_X > 630){
   fill(#009FFF);
   }
   if (TRANSITION_BAR3_X <= 630){
     fill(#BD00E8);
   }

   for (int x =0; x < 800; x+=190){
     rectMode(CENTER);
     tetris_block_style_2(TRANSITION_BAR3_X,x,#500608,#AA181D,#E51017,#E34E53);
   }
   if (TRANSITION_BAR3_X <= -340){
   TRANSITION_START = 0; 
   }
      if (TRANSITION_BAR3_X > -340){
    TRANSITION_BAR3_X -= 10;
    }
    if (TRANSITION_BAR3_X <= -340){
     SECOND_LEVEL_COUNT = 4;
     TRANSITION_START = 1000000;
    }
    rectMode(CORNER);
    fill(255);
    noStroke();
    rect(TRANSITION_BAR3_X+150,0,1600,900);
    YOUTUBE(TRANSITION_BAR3_X+350,97);
    //screen(TRANSITION_BAR3_X+400,90);
}
if (SECOND_LEVEL_COUNT == 4){
  background(255);
  YOUTUBE(14,97);
  fill(255);
  rectMode(CENTER);
  rect(0,400,27,800);
  fill(255,0,0);
 Sarah_ball(RED_BALL_X_AXIS,RED_BALL_DROP-50);
 if (JAVELIN_SCENE == 0){
 if (RED_BALL_DROP_VELOCITY <= 24){
 RED_BALL_DROP_VELOCITY += 1;
 }
 if (RED_BALL_DROP_VELOCITY >24){
  RED_BALL_DROP_VELOCITY = 0; 
  JAVELIN_SCENE += 1;
 }
 RED_BALL_DROP += RED_BALL_DROP_VELOCITY;
 }
 if (JAVELIN_SCENE == 1){
   if (RED_BALL_X_AXIS <= 200){
   RED_BALL_X_AXIS += 5;
   }
   if (RED_BALL_X_AXIS > 200 && JAVELIN_SCENE == 1){
    JAVELIN_SCENE += 1; 
   }
 }
 if (JAVELIN_SCENE == 2){
   JAVELIN_SCENE += 1;
 }
 if (JAVELIN_SCENE == 3){
   SecondJavelin();
  JAVELIN_SCENE += 1;
 }
  if (JAVELIN_SCENE == 4){
   SecondJavelinThrow();
 }
  if (JAVELIN_SCENE == 5){
   ThirdJavelin();
   JAVELIN_SCENE += 1;
 }
 if (JAVELIN_SCENE == 6){
  ThirdJavelinThrow(); 
 }
 if (JAVELIN_SCENE == 7){
   SECOND_LEVEL_COUNT = 5;
 }
}
if (SECOND_LEVEL_COUNT == 5){
  YOUTUBE_scene_transition();
}
if (SECOND_LEVEL_COUNT == 6){
  LONGJUMP_scene_transition();
}
if (SECOND_LEVEL_COUNT == 7){
  HIGHJUMP_scene_transition();
}
if (SECOND_LEVEL_COUNT == 8){
  HUNDREDM_scene_transition();
}
if (SECOND_LEVEL_COUNT == 9){
  if (TRACK_Y_AXIS < 1500){
  TRACK_Y_AXIS += 5;
  }
  if (TRACK_Y_AXIS >= 1500){
   delay(1500);
   SECOND_LEVEL_COUNT = 10;
  }
  background(#09C400);
  Track(625,TRACK_Y_AXIS);
  house_geomun(400,TRACK_Y_AXIS-70);
  house_sarah(480,TRACK_Y_AXIS-70);
  house_mulchat(560,TRACK_Y_AXIS-70);
  house_noro(660,TRACK_Y_AXIS-70);
  house_jeoji(760,TRACK_Y_AXIS-70);
 }
 if (SECOND_LEVEL_COUNT == 10){
   background(0);
   noStroke();
   arcade(600,280);
   ARCADE_X += 1;
   if (ARCADE_X > 50){
  SECOND_LEVEL_COUNT = 11;
   }
}
if (SECOND_LEVEL_COUNT == 11){
  background(0);
  ARCADE_Y += 10;
 arcade(600,ARCADE_Y);
 if (ARCADE_Y > 1400){
  SECOND_LEVEL_COUNT = 12; 
 }
}
if (SECOND_LEVEL_COUNT == 12){
  if (ENDING_SCENE_TEXT_Y_AXIS <= 400){
  ENDING_SCENE_TEXT_Y_AXIS += 10;
  }
  if (ENDING_SCENE_TEXT_Y_AXIS > 400){
   SECOND_LEVEL_COUNT = 13;
  }
  background(0);
  ending_scene_text(ENDING_SCENE_TEXT_Y_AXIS);
}
if (SECOND_LEVEL_COUNT == 13){
 delay(300);
 SECOND_LEVEL_COUNT = 14;
}
if (SECOND_LEVEL_COUNT == 14){
  background(0);
  ending_scene_text(ENDING_SCENE_TEXT_Y_AXIS);
  if (ENDING_MOUSE_X > 360){
  ENDING_MOUSE_X -= 15;
  }
  if (ENDING_MOUSE_Y > 460){
  ENDING_MOUSE_Y -= 12;
  }
  if (ENDING_MOUSE_Y <= 500){
    rectMode(CENTER);
  stroke(255);
  strokeWeight(4);
  fill(0,0,0,0);
   rect(350,425,200,100);
  }
 if (ENDING_MOUSE_X <= 360 && ENDING_MOUSE_Y <= 460){
  SECOND_LEVEL_COUNT = 15;
 }
  mouse(ENDING_MOUSE_X,ENDING_MOUSE_Y);
}
if (SECOND_LEVEL_COUNT == 15){
  delay(1000);
  SECOND_LEVEL_COUNT = 16;
}
if (SECOND_LEVEL_COUNT == 16){
  rectMode(CENTER);
  stroke(255);
  strokeWeight(4);
  fill(0,255,0);
   rect(350,425,200,100);
   fill(255);
   text("YES",350,420);
 mouse(ENDING_MOUSE_X,ENDING_MOUSE_Y);
 END_COUNT += 1;
 if (END_COUNT >= 20){
  SECOND_LEVEL_COUNT = 17; 
 }
if (SECOND_LEVEL_COUNT == 17){
 rectMode(CENTER);
 END_Y_AXIS += 10;
 rect(600,END_Y_AXIS,1200,1000);
  SECOND_LEVEL_COUNT = 18; 
 }
}
if (SECOND_LEVEL_COUNT == 18){
  background(0);
  END_Y_AXIS2 -= 3;
 end_credit(END_Y_AXIS2); 
}
if (SECOND_LEVEL_COUNT == 19){
  ALPHA_VALUE = 0;
ALPHA_CHANGE = 5;
LEVEL_COUNT = -4;//this variable is going to determine which scenes are going to play
SECOND_LEVEL_COUNT =0;//this variable is going to also determine which scenes are used (but the difference is that it is determining which scenes whilst having a tetris fall background (yes, it has a name))
SOUND_START = 0;
BLACK_SCREEN_Y = -400;
//BACKGROUND VARIABLES USED FOR THE WHOLE PROJECT
TETRIS_FALL_START = 0;//tetris fall start variable ->
TETRIS_VELOCITY1 = 0;
TETRIS_VELOCITY2 = 0;
TETRIS_VELOCITY3 = 0;
TETRIS_VELOCITY4 = 0;
TETRIS_INDEX1 = 0;
TETRIS_INDEX2 = 0;
TETRIS_INDEX3 = 0;
TETRIS_INDEX4 = 0;
TETRIS_START1 = 0;
TETRIS_START2 = 0;
TETRIS_START3 = 0;
TETRIS_START4 = 0;
TETRIS_START1_X = 0;
TETRIS_START1_Y= -600;
TETRIS_START2_X = 0;
TETRIS_START2_Y= -600;
TETRIS_START3_X = 0;
TETRIS_START3_Y= -600;
TETRIS_START4_X = 0;
TETRIS_START4_Y = -600;
//SCENE -3 - 0 Variables
HIDE_X = 0;

Y_AXIS_POSITION = 580; // the y-coordinate of the character
Y_AXIS_VELOCITY = -10; // the vertical velocity of the character
GRAVITY = 0.5; // the force of GRAVITY

//SCENE 1 -3 Variables 
FALLING_TETRIS_COLORS = 0;
FALLING_TETRIS_COLOR = 0;
MOVING_TETRIS_BLOCK_X = 400;
MOVING_TETRIS_BLOCK_Y = 0;
INTRO_SCREEN_Y_AXIS_SPEED = 30;
MOVING_START_BLOCK = 100;
TEMP_TETRIS_TIMER = 0;

//SCENE 4 variables
TRANSITION_BALL_SIZE = 10;
MOVING_BLOCK_TEMP = 0;

//SCENE 5 variables
TETRIS_GROUND_SETUP = 900;
TETRIS_SKY_SETUP = 0;
RED_BALL_APPEAR = 0;
RED_BALL_FRICTION = 30;
YELLOW_BALL_APPEAR = 0;
YELLOW_FRICTION = 33;
GREEN_BALL_APPEAR = 0;
GREEN_FRICTION = 36;
BLUE_BALL_APPEAR = 0;
BLUE_FRICTION = 27;
PURPLE_BALL_APPEAR = 0;
PURPLE_FRICTION = 24;
HOUSE_BALL_APPEAR_COUNT = -2;

//VARIABLES FOR 100M SPRINT
STARTLIGHT_Y = -100;
STARTLIGHT_COUNT = 80;
STARTLIGHT_COLOR = 0;
 STARTLIGHT_X = 200;
HUNDRED_METER_START = 0;
HUNDRED_METER_GROUND_MOVE = 0;
HUNDREDM_CROWD_MOVE = 1200;
CROWD_MOVE_X = 1500;
CROWD_MOVE_X2 = 2000;
CROWD_MOVE_X3 = 2500;
HOUSE_COLOR_COUNT = 0;
HOUSE_NAME_INDEX = 0;
HOUSE_COLOR_COUNT2 = 0;
HOUSE_NAME_INDEX2 = 0;
HOUSE_COLOR_COUNT3 = 0;
HOUSE_NAME_INDEX3 = 0;
POST_SIGN_MOVE = 1200;
POST_SIGN_TEXT = "0";

HUNDRED_METER_RED_SPEED = 1; 
HUNDRED_METER_YELLOW_SPEED = 1; 
HUNDRED_METER_GREEN_SPEED = 2; 
HUNDRED_METER_BLUE_SPEED = 2; 
HUNDRED_METER_PURPLE_SPEED = -1.5;
HUNDRED_METER_INDEX = 0;
NEON_SIGN_BUZZ_TIME = 200;
NEON_SIGN_X_AXIS = 1500;
NEON_SIGN_INDEX = 0;
NEON_SIGN_X_AXIS_HIDE = 0;

TRANSITION_START = 0;
TRANSITION_BAR1_X_AXIS = 1200;
TRANSITION_HIGHJUMP_MOVE = 0;
TRANSITION_BAR2_X = 1200;
TRANSITION_LONGJUMP_MOVE = 0;
TRANSITION_BAR3_X = 1200;


//VARIABLES FOR HIGH JUMP SCENE
HIGHJUMP_METER_MOVE = 0;
HIGHJUMP_SPAWN = 0;
HIGHJUMP_SPAWN_INDEX = 0;
HIGHJUMP_SPAWN_Y = 0;
HIGHJUMP_SPAWN_X = 1100;
HIGHJUMP_COLOR = 0;
HIGHJUMP_REACT = 0;
HIGHJUMP_REACT_VELOCITY = 50;

//PAC-MAN VARIABLES (PART OF HIGH-JUMP)
PAC_MAN_X_AXIS = -300;
PAC_MAN_VELOCITY = 5;

//LONG JUMP VARIABLES
LONGJUMP_MOVE = 0;
LONGJUMP_FLOATING_ISLAND_AXIS_X = 2400;
LONGJUMP_COUNT = 0;

//JAVELIN VARIABLES
RED_BALL_DROP = 150;
RED_BALL_X_AXIS = 100;
RED_BALL_DROP_VELOCITY = 5;
JAVELIN_SCENE = 0;

//TRANSITION_TO_NORMAL_WORLD VARIABLES
YOUTUBE_SCENE_X = -500;
LONGJUMP_SCENE_X = -1600;
LONGJUMP_SCENE_SAND_X = 2000;
LONGJUMP_SCENE_COLOR_INDEX = 0;
HIGHJUMP_SCENE_X = -1600;
HUNDRED_METER_SCENE_X = -1600;

PVector JAVELIN_POSITION_1; // javelin position
PVector JAVELIN_VELOCITY_1; // javelin velocity
PVector JAVELIN_ACCELERATION_1; // javelin acceleration
PVector JAVELIN_POSITION_2; // javelin position
PVector JAVELIN_VELOCITY_2; // javelin velocity
PVector JAVELIN_ACCELERATION_2; // javelin acceleration
PVector JAVELIN_POSITION_3; // javelin position
PVector JAVELIN_VELOCITY_3; // javelin velocity
PVector JAVELIN_ACCELERATION_3; // javelin acceleration
PVector JAVELIN_POSITION_4; // javelin position
PVector JAVELIN_VELOCITY_4; // javelin velocity
PVector JAVELIN_ACCELERATION_4; // javelin acceleration
float JAVELIN_GRAVITY = 1; // acceleration due to GRAVITY
float AIR_RESISTANCE = 0.01; // air resistance coefficient
float JAVELIN_LENGTH = 180; // length of the javelin

//ENDING SCENE
ARCADE_X =0;
ARCADE_Y = 280;
ENDING_SCENE_TEXT_Y_AXIS = 0;
ENDING_MOUSE_X = 900;
 ENDING_MOUSE_Y = 900;

TRACK_Y_AXIS = -400;
END_COUNT = 0;
END_Y_AXIS = 0;
END_Y_AXIS2 = 1000;
HIGHJUMP_OBSTACLE_X = 1200;
HIGHJUMP_ANIMATION = 1;
 RAINBOW_MOVE = 900;
RAINBOW_SIZE = 10;
HUNDRED_METER_END_COUNT = 0;

TEXT1_MOVE = 1300;
TEXT2_MOVE = 1300;
}
}
