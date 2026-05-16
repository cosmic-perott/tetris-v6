//draw pac-man
//in other words, we are drawing a circle with a small gap
void pac_man(int x, int y) {
  //this part of the code is used as a "Mario Effect" (yes, I gave it that name)
  //"Mario Effect" is when you have a shape behind the object so that the object does not leave an ugly line
  //it is called "Mario Effect" because it was first used when I was making the Mario character, from my deleted project
  //more information on Additional Research File
  noStroke();//no outline
  rectMode(CENTER);//rectangle in middle
  fill(#090043);//same color as background
  rect(x-30,y-30,250,115,5);//rect coordinates so that it is just the size enough to cover pac-man
  //this is not the actual pac-man code
  //it is just here for reference
  noStroke();//no outline
  fill(#090043);//yellow
  ellipse(x, y, 50, 50);//yellow circle
  //this is the actual pac-man code
  fill(255, 255, 0);//yellow color
  arc(x, y, 50, 50, radians(30), radians(330), PIE);//draws an arc with borders starting from radian(30) to radian(330) 
  //pac-man text
  textSize(30);//text size
  text("Highjump!",x-100,y-50);//it is going to be shouting "Highjump"
  //fun fact: pac-man used to shout "lunch time!" because it is chasing the ghosts, but I changed it so that it fits into the scene
}
//pac-man ghosts
void pac_man_ghosts(int x, int y) {
  ellipseMode(CENTER);//ellipse in center
  rectMode(CENTER);//rectangle in center
  //draws the four different ghosts
  fill(#090043);
  rect(x+80,y-12,230,60);//rectangle used for "Mario Effect"
  noStroke();//no outline
  fill(#FFB700);
  ellipse(x,y,30,30);//first ghost
  fill(#FF0000);
  ellipse(x+50,y,30,30);//second ghost
  fill(#FF5DF7);
  ellipse(x+100,y,30,30);//third ghost
  fill(#00FFFD);
  ellipse(x+150,y,30,30);//fourth ghost
}

//these are the signs that are going to be saying "16th June" and "Sports Field"
void neon_sign(int x, int y,int text_index){
  rectMode(CENTER);//rect at center
  //I wanted to create a border for the signs
  //because it is called "neon" signs... I wanted it to look like 'a neon sign'
  fill(#01007E);//dark dark blue
  rect(x,y,400,150);//biggest rectangle
  fill(#FF00DE);//white 
  rect(x,y,380,130);//second biggest rectangle
  fill(#01007E);//dark dark blue
  rect(x,y,360,110);//smallest rectangle
  NEON_SIGN_BUZZ_TIME -= 5;//if this reaches 0, it is going to change the text color for a short while, which will look like the sign is flashing
  //there are 6 elements in this list, but only 2 will be displayed
  //the others are only there so that a ListOutOfBound Error does not occur 
  String [] neon_sign_text = {"JUNE 16TH 2023","@SPORTS FIELD","@NLCS JEJU","JUNE 16TH 2023","@SPORTS FIELD","@NLCS JEJU"};//the text to be displayed
  if (NEON_SIGN_BUZZ_TIME > 0){//while the buzz_time variable is bigger than 0
    fill(#FF00DE);//pink
  }
  if(NEON_SIGN_BUZZ_TIME <= 0){//while the buz_time variable is smaller or same as 0
    fill(255);//white
  }
  if (NEON_SIGN_BUZZ_TIME <= -30){//if it goes lower than 30
    NEON_SIGN_BUZZ_TIME = 100;//reset
    //so there is much time for the white color to show
    //which adds to the flash effect
  }
  textSize(50);//text size is 50
  text(neon_sign_text[text_index],x-170,y+17);//display with the text list showing the text with the correct index at given position
}
