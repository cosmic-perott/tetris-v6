//BONUS TAB TO GIVE CREDIT TO PEOPLE WHO HAVE HELPED WITH THIS PROJECT

//SHOUT OUT TO PEOPLE WHO HAVE GIVEN ASSISTANCE FOR MAKING THIS PROJECT

//Themes Included : TETRIS, Pac-Man, Youtube

//PEOPLE WHO GAVE INSPIRATION FOR IDEAS
//People who reminded me of K.I.S which led to my ending scene: Jihoo (Brenden) Kim & Jae Won(Edward) Cheon & Aidan (AJ) Jo
//idea to shorten the 100m length : Jihoo (Brenden) Kim & Hamin Kim & Lakshya (Lakku) Caudrhri 
//idea to use Pac-Man : Seungbin (Felix) Lee
//idea to use crowd in Long Jump scene: Wooyoung Chung
//sports day running track original code : Jae Won (Edward) Cheon
//Sports day running lane inspiration : Hyunjoon (Philip) Im & Wooyoung Chung


//PEOPLE WHO FOUND ERRORS
//(Now Fixed) Error Found in Hundred 100m - Noro ball disappearing at transition : Jaehee (Jay) Kim & Seungbin (Felix) Lee
//(Now Fixed) Error Found in Youtube Transition Scene -Youtube screen colors breaking : Doeon (Tony) Lee
//(Now Fixed) Error Found in Highjump scene - Jeoji ball not jumping at start : Jae Won (Edward) Cheon
//(Now Fixed) Comments about Minor improvements: Lakshya (Lakku) Caudrhri & Hamin Kim & Doeon (Tony) Lee

//EXTERNAL FEATURES
//Music used: benevolence - Aaron Hibell (Tetris OST)
//Tutorial on how to use PVector() : https://processing.org/reference/PVector.html


//function to roll the end_credits
void end_credit(int y){//this function is going to draw a chunk of text and the text's y axis is going to change depending on that variable inside the brackets which is called "y"
  textAlign(CENTER,CENTER);//text to the center
  //you might notice there is a "\n", this means the same thing in Python : it splits the lines
  String end_title = "SPORTS DAY: A GAME";//text used for the title
  String end_directors = "feat. Tetris\nMade by Junyoung(Jun) Kim";//text used for the creators
  String end_credits = "PEOPLE WHO GAVE IDEA INSPIRATION\nJihoo(Brenden) Kim\nJae Won (Edward) Cheon \n Aidan(AJ) Jo\nHamin Kim\nLakshya(Lakku) Caudrhri\n Wooyoung Chung\nHyunjoon(Philip) Im";//text used to give credit to people who gave idea inspirations
  String end_errors = "PEOPLE WHO FOUND ERRORS\nSeungbin(Felix) Lee\nDoeon(Tony) Lee\nJaehee(Jay) Kim\nJae Won (Edward) Cheon \n Hamin Kim";//text used to give credit to people who found minor errors in the code
  String end_special = "SPECIAL THANKS TO...\n         \nJae Won (Edward) Cheon \n:original source code of the sports track\n&\nJihoo (Brenden) Kim\n:original audio files";//text used to give credit to people who I want to thank for special reasons
  String end_copyright = "copyright (c)Junyoung(Jun)Kim2023 All rights reserved\n copyright (c)SPORTSDAY_productions2023 All rights reserved\n tetris copyright (c) 1987 Elorg, Tetris Licensed to Bulletproof software and sub-license to Nintendo\n(c)Sports_track_OG_code Jae Won (Edward) Cheon All rights reserved\n (c) Sports track original code licensed to Junyoung(Jun) Kim and sub-licensed to SPORTSDAY_productions\n(c) YouTube2023, Korea All rights reserved";//text for copyright
  //I will admit, I was having a little bit of fun with the copyright part...
  textSize(50);//textsize becomes 50
  fill(255);//white
  text(end_title,600,y);//end_title text is going to be drawn on the position of y
  textSize(30);//text gets smaller
  text(end_directors,600,y+80);//end_directors text is going to be drawn on the position of y but a bit below, so that it does not overlap with the end_title text
  textSize(25);//text gets smaller still
  text(end_credits,600,y+400);//end_credit text is going to be drawn on the position of y but a bit below, so that it does not overlap with the text above
  text(end_errors,600,y+800);//end_error text is going to be drawn on the position of y but a bit below, so that it does not overlap with the text above
  text(end_special,600,y+1200);//end_special text is going to be drawn on the position of y but a bit below, so that it does not overlap with the text above
  text(end_copyright,600,y+1600);//end_copyright text is going to be drawn on the position of y but a bit below, so that it does not overlap with the text above
  if (y+1600 < -200){
   SECOND_LEVEL_COUNT = 19;//this is going to loop the scene,
   //scene 19 is the scene where all the variables are reset, so it is going to loop it
  }
  //you might notice that there is no text(CORNER,CORNER) in this part of the code
  //(if you did not... well, you have now)
  //this is because this part of the code is the end and I don't need to reset anything.
}
